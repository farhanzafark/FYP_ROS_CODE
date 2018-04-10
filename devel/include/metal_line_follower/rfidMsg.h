// Generated by gencpp from file metal_line_follower/rfidMsg.msg
// DO NOT EDIT!


#ifndef METAL_LINE_FOLLOWER_MESSAGE_RFIDMSG_H
#define METAL_LINE_FOLLOWER_MESSAGE_RFIDMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace metal_line_follower
{
template <class ContainerAllocator>
struct rfidMsg_
{
  typedef rfidMsg_<ContainerAllocator> Type;

  rfidMsg_()
    : sender()
    , nodeId()  {
    }
  rfidMsg_(const ContainerAllocator& _alloc)
    : sender(_alloc)
    , nodeId(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _sender_type;
  _sender_type sender;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _nodeId_type;
  _nodeId_type nodeId;




  typedef boost::shared_ptr< ::metal_line_follower::rfidMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::metal_line_follower::rfidMsg_<ContainerAllocator> const> ConstPtr;

}; // struct rfidMsg_

typedef ::metal_line_follower::rfidMsg_<std::allocator<void> > rfidMsg;

typedef boost::shared_ptr< ::metal_line_follower::rfidMsg > rfidMsgPtr;
typedef boost::shared_ptr< ::metal_line_follower::rfidMsg const> rfidMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::metal_line_follower::rfidMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::metal_line_follower::rfidMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace metal_line_follower

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'metal_line_follower': ['/home/farhan/catkin_ws/src/metal_line_follower/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::metal_line_follower::rfidMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::metal_line_follower::rfidMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::metal_line_follower::rfidMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::metal_line_follower::rfidMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::metal_line_follower::rfidMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::metal_line_follower::rfidMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::metal_line_follower::rfidMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "683ff0ffba5ff7be443d666ab4b04ae4";
  }

  static const char* value(const ::metal_line_follower::rfidMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x683ff0ffba5ff7beULL;
  static const uint64_t static_value2 = 0x443d666ab4b04ae4ULL;
};

template<class ContainerAllocator>
struct DataType< ::metal_line_follower::rfidMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "metal_line_follower/rfidMsg";
  }

  static const char* value(const ::metal_line_follower::rfidMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::metal_line_follower::rfidMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string sender\n\
string nodeId\n\
";
  }

  static const char* value(const ::metal_line_follower::rfidMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::metal_line_follower::rfidMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sender);
      stream.next(m.nodeId);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rfidMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::metal_line_follower::rfidMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::metal_line_follower::rfidMsg_<ContainerAllocator>& v)
  {
    s << indent << "sender: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.sender);
    s << indent << "nodeId: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.nodeId);
  }
};

} // namespace message_operations
} // namespace ros

#endif // METAL_LINE_FOLLOWER_MESSAGE_RFIDMSG_H
