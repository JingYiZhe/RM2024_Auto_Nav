// Generated by gencpp from file slamware_ros_sdk/ActionDirection.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_ACTIONDIRECTION_H
#define SLAMWARE_ROS_SDK_MESSAGE_ACTIONDIRECTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace slamware_ros_sdk
{
template <class ContainerAllocator>
struct ActionDirection_
{
  typedef ActionDirection_<ContainerAllocator> Type;

  ActionDirection_()
    : direction(0)  {
    }
  ActionDirection_(const ContainerAllocator& _alloc)
    : direction(0)  {
  (void)_alloc;
    }



   typedef int8_t _direction_type;
  _direction_type direction;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNKNOWN)
  #undef UNKNOWN
#endif
#if defined(_WIN32) && defined(FORWARD)
  #undef FORWARD
#endif
#if defined(_WIN32) && defined(BACKWARD)
  #undef BACKWARD
#endif
#if defined(_WIN32) && defined(TURNRIGHT)
  #undef TURNRIGHT
#endif
#if defined(_WIN32) && defined(TURNLEFT)
  #undef TURNLEFT
#endif

  enum {
    UNKNOWN = -1,
    FORWARD = 0,
    BACKWARD = 1,
    TURNRIGHT = 2,
    TURNLEFT = 3,
  };


  typedef boost::shared_ptr< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> const> ConstPtr;

}; // struct ActionDirection_

typedef ::slamware_ros_sdk::ActionDirection_<std::allocator<void> > ActionDirection;

typedef boost::shared_ptr< ::slamware_ros_sdk::ActionDirection > ActionDirectionPtr;
typedef boost::shared_ptr< ::slamware_ros_sdk::ActionDirection const> ActionDirectionConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::ActionDirection_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::ActionDirection_<ContainerAllocator2> & rhs)
{
  return lhs.direction == rhs.direction;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::ActionDirection_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::ActionDirection_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "95481d0530f4a91605c39c394a5f9aa2";
  }

  static const char* value(const ::slamware_ros_sdk::ActionDirection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x95481d0530f4a916ULL;
  static const uint64_t static_value2 = 0x05c39c394a5f9aa2ULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/ActionDirection";
  }

  static const char* value(const ::slamware_ros_sdk::ActionDirection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int8 UNKNOWN=-1\n"
"int8 FORWARD=0\n"
"int8 BACKWARD=1\n"
"int8 TURNRIGHT=2\n"
"int8 TURNLEFT=3\n"
"\n"
"int8 direction\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::ActionDirection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActionDirection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::ActionDirection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::ActionDirection_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<int8_t>::stream(s, indent + "  ", v.direction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_ACTIONDIRECTION_H
