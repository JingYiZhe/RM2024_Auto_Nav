#ifndef SEND_RECEIVE_H
#define SEND_RECEIVE_H
#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <tf/tf.h>
#include <tf/transform_listener.h>
#include <nav_msgs/Odometry.h>
#include<geometry_msgs/Twist.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termios.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <errno.h>
#include <sys/ioctl.h>
#include <cmath>
#include <math.h>
#include <stdio.h>
using namespace std;
    //传输数据用的类型三
    typedef union
    {
        float f;
        unsigned char c[4];
    }float2uchar;
    typedef union {
        int f;
        unsigned char c[4];
    }int2uchar;
    class DataControler {
    public:
        DataControler(){}
        // 视觉向电控传数据
        struct VisionData {
            float2uchar x_speed;
            float2uchar y_speed;
            VisionData(){
                x_speed.f = 0;
                y_speed.f = 0;
            }
        };
        // 电控向视觉发送数据
        struct Stm32Data {
            int2uchar type_data;
            Stm32Data(){
                type_data.f = 0;
				
            }
            // 以字节传输数据
        };
    public:
        int getBit(unsigned char b, int i)
        {
            int bit = (int)((b >> (i - 1)) & 0x1);
            return bit;
        }
        void sentData(int fd, VisionData data);
        void getData(int fd, Stm32Data& get_data);
    };

    int OpenPort(const char* Portname);
    int configureSerial(int fd);
#endif // SEND_RECEIVE_H

#define DATA_LENGTH 10               //接受的数据位数
int OpenPort(const char *Portname)
{
    int fd;
//    fd = open(Portname,O_RDWR);
    fd = open(Portname,O_RDWR | O_NOCTTY | O_NONBLOCK);
    cout << fd << endl;
    if(-1 == fd)
    {
        printf("The port open error!\n");
        return -1;
    }
    else
    {
        fcntl(fd,F_SETFL,0);   //读取串口的信息
    }
    return fd;
}
int configureSerial(int fd){
    struct termios port_set;
    //波特率
    cfsetispeed(&port_set,B115200);
    cfsetospeed(&port_set,B115200);
    //No parity
    //port_set.c_cflag &= ~PARENB;         //无奇偶校验
    //port_set.c_cflag &= ~CSTOPB;         //停止位:1bit
    //port_set.c_cflag &= ~CSIZE;          //清除数据位掩码
    //port_set.c_cflag |=  CS8;
    port_set.c_iflag &= ~ISTRIP;
    //port_set.c_iflag &= ~CRTSCTS;
    //port_set.c_iflag |= CLOCAL|CREAD;
    port_set.c_cflag &= ~PARENB;           // set no parity, stop bits, data bits
    port_set.c_cflag &= ~PARODD;
    port_set.c_cflag &= ~CSTOPB;
    port_set.c_cflag &= ~CSIZE;
    port_set.c_cflag |= CS8;
    //port_settings.c_cflag &= ~CRTSCTS;
    port_set.c_iflag &= ~(IXON | IXOFF | IXANY);
    port_set.c_iflag &= ~(INLCR | IGNCR | ICRNL);
    port_set.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);
    port_set.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP);
    /* Set c_oflag output options */
    port_set.c_oflag &= ~OPOST;
    /* Set the timeout options */
    port_set.c_cc[VTIME] = 0;
    port_set.c_cc[VMIN] = 0;
	port_set.c_lflag &= ~(ICANON | ECHO | ECHOE);
	port_set.c_iflag &= ~(BRKINT | ICRNL | INPCK |ISTRIP | IXON );
    tcsetattr(fd,TCSANOW,&port_set);
    return (fd);
}
void DataControler::getData(int fd, Stm32Data &get_data)
    {
        int bytes = 0;
        // uint8_t cde;
        // unsigned char rec_bytes[1024] = {0};
        // 这是干什么的

        ioctl(fd, FIONREAD, &bytes); // 1199
        // cout << "bytes      " << bytes << endl;
        if (bytes < DATA_LENGTH)
        {
            return;
        }
        unsigned char *rec_bytes = new unsigned char[bytes + 100]();
        bytes = read(fd, rec_bytes, bytes);

        // 这两个索引是干什么的
        int FirstIndex = -1;
        int LastIndex = -1;

        // 这一部是什么逻辑
        for (int i = 0; i < bytes; i++)
        {
            if (rec_bytes[i] == 0xa5)
            {
                // cout << "head top index" << endl;
                FirstIndex = i;
            }
            else if (rec_bytes[i] == 0x5a && FirstIndex != -1 && i - FirstIndex == DATA_LENGTH - 1)
            {
                // cout << "tail top index" << endl;
                LastIndex = i;
                break;
            }
            else
            {
                // cout << "get data fail" << i+1 << endl;
            }
        }

        // cout << "FIRSTINDEX         " << FirstIndex << endl;
        // cout << "LASTINDEX          " << LastIndex << endl;

        if (FirstIndex != -1 && LastIndex != -1)
        {
            // get_data.IsHave = true;
            get_data.type_data.c[0] = rec_bytes[FirstIndex + 1];
            get_data.type_data.c[1] = rec_bytes[FirstIndex + 2];
            get_data.type_data.c[2] = rec_bytes[FirstIndex + 3];
            get_data.type_data.c[3] = rec_bytes[FirstIndex + 4];
//            get_data..c[0] = rec_bytes[FirstIndex + 5];
//            get_data..c[1] = rec_bytes[FirstIndex + 6];
         	cout << "接收完成" << get_data.type_data.f << endl;
        }
        else
        {
            cout << "接受失败!" << endl;
        }

        return;
	}
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
int main(int argc, char** argv)
{
	DataControler data;
    DataControler::Stm32Data recive;
    int fd = OpenPort("/dev/ttyUSB0");
	configureSerial(fd);
	while(1)
	{
			data.getData(fd,recive);
			ROS_INFO("Type:",recive.type_data.f);
			double x = 0., y = 0., z = 0.;
			if(recive.type_data.f == 1)
			{
				x = 0., y = 0.;
			}else if(recive.type_data.f == 2)
			{
				x = 0., y = 0.;
			}else if(recive.type_data.f == 3)
			{
				x = 0., y = 0.;
			}else if(recive.type_data.f == 4)
			{
				x = 0., y = 0.;
			}
			ros::init(argc, argv, "send_goals_node");
			tf::TransformListener listener; 
			MoveBaseClient ac("move_base", true);
			ROS_INFO("Waiting for the move_base action server");
			ac.waitForServer(ros::Duration(60));
			ROS_INFO("Connected to move base server");
			// std::cout << "input x, y, z: ";
			// std::cin >> x >> y >> z;
			//std::cout << x << y << z;
			geometry_msgs::PointStamped map_point;
			map_point.header.frame_id = "slamware_map";
			map_point.header.stamp = ros::Time();
			map_point.point.x = x;
			map_point.point.y = y;
			try
			{
				geometry_msgs::PointStamped base_point;
				base_point.header.frame_id = "base_link";
				base_point.header.stamp = ros::Time();
				ROS_INFO("starting map>base_link "); 
				listener.waitForTransform("base_link", "slamware_map", ros::Time(0), ros::Duration(3.0));
        		listener.transformPoint("base_link", map_point, base_point);
        		ROS_INFO("base_link: [x]=%.2f,[y]=%.2f", base_point.point.x, base_point.point.y);
				move_base_msgs::MoveBaseGoal goal;
        		goal.target_pose.header.frame_id = "base_link"; 
        		goal.target_pose.header.stamp = ros::Time::now();
        		goal.target_pose.pose.position = base_point.point;
        		double roll = 0.0, pitch = 0.0, yaw = 0.0;                                
				geometry_msgs::Quaternion q;                                
				q = tf::createQuaternionMsgFromRollPitchYaw(roll, pitch, yaw); 
				goal.target_pose.pose.orientation = q;
				ROS_INFO("Sending goal");
				ac.sendGoal(goal);
				// Wait for the action to return
				ac.waitForResult();
				if (ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
					ROS_INFO("You have reached the goal!");
				else
					ROS_INFO("The base failed for some reason");
			}
			catch (tf::TransformException& ex)
			{
				ROS_ERROR("%s", ex.what());
			}
	}
    return 0;
	
}