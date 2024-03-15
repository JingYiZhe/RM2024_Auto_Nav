// Generated by gencpp from file roborts_msgs/RelocateRequest.msg
// DO NOT EDIT!


#ifndef ROBORTS_MSGS_MESSAGE_RELOCATEREQUEST_H
#define ROBORTS_MSGS_MESSAGE_RELOCATEREQUEST_H


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
struct RelocateRequest_
{
  typedef RelocateRequest_<ContainerAllocator> Type;

  RelocateRequest_()
    {
    }
  RelocateRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::roborts_msgs::RelocateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roborts_msgs::RelocateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RelocateRequest_

typedef ::roborts_msgs::RelocateRequest_<std::allocator<void> > RelocateRequest;

typedef boost::shared_ptr< ::roborts_msgs::RelocateRequest > RelocateRequestPtr;
typedef boost::shared_ptr< ::roborts_msgs::RelocateRequest const> RelocateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roborts_msgs::RelocateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roborts_msgs::RelocateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace roborts_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roborts_msgs::RelocateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborts_msgs::RelocateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborts_msgs::RelocateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborts_msgs::RelocateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborts_msgs::RelocateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborts_msgs::RelocateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roborts_msgs::RelocateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::roborts_msgs::RelocateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::roborts_msgs::RelocateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roborts_msgs/RelocateRequest";
  }

  static const char* value(const ::roborts_msgs::RelocateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roborts_msgs::RelocateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Relocate.srv\n"
"\n"
;
  }

  static const char* value(const ::roborts_msgs::RelocateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roborts_msgs::RelocateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RelocateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roborts_msgs::RelocateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::roborts_msgs::RelocateRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROBORTS_MSGS_MESSAGE_RELOCATEREQUEST_H