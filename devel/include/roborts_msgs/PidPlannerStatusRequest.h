// Generated by gencpp from file roborts_msgs/PidPlannerStatusRequest.msg
// DO NOT EDIT!


#ifndef ROBORTS_MSGS_MESSAGE_PIDPLANNERSTATUSREQUEST_H
#define ROBORTS_MSGS_MESSAGE_PIDPLANNERSTATUSREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roborts_msgs
{
template <class ContainerAllocator>
struct PidPlannerStatusRequest_
{
  typedef PidPlannerStatusRequest_<ContainerAllocator> Type;

  PidPlannerStatusRequest_()
    : planner_state(0)
    , max_x_speed(0.0)
    , max_y_speed(0.0)
    , yaw_speed(0.0)  {
    }
  PidPlannerStatusRequest_(const ContainerAllocator& _alloc)
    : planner_state(0)
    , max_x_speed(0.0)
    , max_y_speed(0.0)
    , yaw_speed(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _planner_state_type;
  _planner_state_type planner_state;

   typedef float _max_x_speed_type;
  _max_x_speed_type max_x_speed;

   typedef float _max_y_speed_type;
  _max_y_speed_type max_y_speed;

   typedef float _yaw_speed_type;
  _yaw_speed_type yaw_speed;





  typedef boost::shared_ptr< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PidPlannerStatusRequest_

typedef ::roborts_msgs::PidPlannerStatusRequest_<std::allocator<void> > PidPlannerStatusRequest;

typedef boost::shared_ptr< ::roborts_msgs::PidPlannerStatusRequest > PidPlannerStatusRequestPtr;
typedef boost::shared_ptr< ::roborts_msgs::PidPlannerStatusRequest const> PidPlannerStatusRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator1> & lhs, const ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator2> & rhs)
{
  return lhs.planner_state == rhs.planner_state &&
    lhs.max_x_speed == rhs.max_x_speed &&
    lhs.max_y_speed == rhs.max_y_speed &&
    lhs.yaw_speed == rhs.yaw_speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator1> & lhs, const ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roborts_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "48bbfebcde954eacf43ffc7a0f713b7c";
  }

  static const char* value(const ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x48bbfebcde954eacULL;
  static const uint64_t static_value2 = 0xf43ffc7a0f713b7cULL;
};

template<class ContainerAllocator>
struct DataType< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roborts_msgs/PidPlannerStatusRequest";
  }

  static const char* value(const ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 客户端请求时设置状态\n"
"int32 planner_state\n"
"float32 max_x_speed\n"
"float32 max_y_speed\n"
"float32 yaw_speed\n"
;
  }

  static const char* value(const ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.planner_state);
      stream.next(m.max_x_speed);
      stream.next(m.max_y_speed);
      stream.next(m.yaw_speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PidPlannerStatusRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roborts_msgs::PidPlannerStatusRequest_<ContainerAllocator>& v)
  {
    s << indent << "planner_state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.planner_state);
    s << indent << "max_x_speed: ";
    Printer<float>::stream(s, indent + "  ", v.max_x_speed);
    s << indent << "max_y_speed: ";
    Printer<float>::stream(s, indent + "  ", v.max_y_speed);
    s << indent << "yaw_speed: ";
    Printer<float>::stream(s, indent + "  ", v.yaw_speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBORTS_MSGS_MESSAGE_PIDPLANNERSTATUSREQUEST_H