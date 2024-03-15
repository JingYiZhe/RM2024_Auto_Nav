#ifndef SEND_RECEIVE_H
#define SEND_RECEIVE_H
#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <tf/tf.h>
#include <tf/transform_listener.h>
#include <nav_msgs/Odometry.h>
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
float x_vel;
float y_vel;

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
            float2uchar type_data;
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

#define DATA_LENGTH 12               //接受的数据位数
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
    port_set.c_lflag &= ~(ICANON | ECHO | ECHOE);
	port_set.c_iflag &= ~(BRKINT | ICRNL | INPCK |ISTRIP | IXON );
    port_set.c_cc[VTIME] = 0;
    port_set.c_cc[VMIN] = 0;
    tcsetattr(fd,TCSANOW,&port_set);
    return (fd);
}
void DataControler::sentData(int fd,VisionData data){

    unsigned char send_bytes[12] = {0};
    send_bytes[0] = 0xa5;
    send_bytes[1] = data.x_speed.c[0];
    send_bytes[2] = data.x_speed.c[1];
    send_bytes[3] = data.x_speed.c[2];
    send_bytes[4] = data.x_speed.c[3];
    send_bytes[5] = data.y_speed.c[0];
    send_bytes[6] = data.y_speed.c[1];
    send_bytes[7] = data.y_speed.c[2];
    send_bytes[8] = data.y_speed.c[3];
    send_bytes[9] = 0;
    send_bytes[10]= 0;
    send_bytes[11] = 0x5a;
    write(fd, send_bytes, 12);
}
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
void callback1(const geometry_msgs::Twist& cmd_vel)
{
    ROS_INFO("cmd_ved recive");
    x_vel = cmd_vel.linear.x;
    y_vel = cmd_vel.linear.y;
}
int main(int argc, char** argv)
{
 ros::init(argc, argv, "listener");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("cmd_vel", 10, callback1);
    DataControler data;
    DataControler::VisionData send;
    int fd = OpenPort("/dev/ttyUSB2");
	configureSerial(fd);
    while(1)
    {
        ros::spinOnce();
       
        send.x_speed.f = x_vel;
        send.y_speed.f = y_vel;
        ROS_INFO("x speed:[%f]", send.x_speed.f);
        ROS_INFO("y speed:[%f]", send.y_speed.f);
        data.sentData(fd,send);
	 sleep(0.02);
    }
     return 0;
}
