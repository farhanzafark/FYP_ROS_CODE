// Generated by gencpp from file metal_line_follower/myCustom.msg
// DO NOT EDIT!


#ifndef METAL_LINE_FOLLOWER_MESSAGE_MYCUSTOM_H
#define METAL_LINE_FOLLOWER_MESSAGE_MYCUSTOM_H


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
struct myCustom_
{
  typedef myCustom_<ContainerAllocator> Type;

  myCustom_()
    : senderType()
    , msgData()  {
    }
  myCustom_(const ContainerAllocator& _alloc)
    : senderType(_alloc)
    , msgData(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _senderType_type;
  _senderType_type senderType;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _msgData_type;
  _msgData_type msgData;




  typedef boost::shared_ptr< ::metal_line_follower::myCustom_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::metal_line_follower::myCustom_<ContainerAllocator> const> ConstPtr;

}; // struct myCustom_

typedef ::metal_line_follower::myCustom_<std::allocator<void> > myCustom;

typedef boost::shared_ptr< ::metal_line_follower::myCustom > myCustomPtr;
typedef boost::shared_ptr< ::metal_line_follower::myCustom const> myCustomConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::metal_line_follower::myCustom_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::metal_line_follower::myCustom_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::metal_line_follower::myCustom_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::metal_line_follower::myCustom_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::metal_line_follower::myCustom_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::metal_line_follower::myCustom_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::metal_line_follower::myCustom_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::metal_line_follower::myCustom_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::metal_line_follower::myCustom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ace9042348799f75d0457e17a86b80b5";
  }

  static const char* value(const ::metal_line_follower::myCustom_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xace9042348799f75ULL;
  static const uint64_t static_value2 = 0xd0457e17a86b80b5ULL;
};

template<class ContainerAllocator>
struct DataType< ::metal_line_follower::myCustom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "metal_line_follower/myCustom";
  }

  static const char* value(const ::metal_line_follower::myCustom_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::metal_line_follower::myCustom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string senderType\n\
int32[] msgData\n\
";
  }

  static const char* value(const ::metal_line_follower::myCustom_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::metal_line_follower::myCustom_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.senderType);
      stream.next(m.msgData);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct myCustom_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::metal_line_follower::myCustom_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::metal_line_follower::myCustom_<ContainerAllocator>& v)
  {
    s << indent << "senderType: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.senderType);
    s << indent << "msgData[]" << std::endl;
    for (size_t i = 0; i < v.msgData.size(); ++i)
    {
      s << indent << "  msgData[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.msgData[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // METAL_LINE_FOLLOWER_MESSAGE_MYCUSTOM_H
