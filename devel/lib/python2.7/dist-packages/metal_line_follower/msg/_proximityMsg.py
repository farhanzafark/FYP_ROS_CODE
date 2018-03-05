# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from metal_line_follower/proximityMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class proximityMsg(genpy.Message):
  _md5sum = "af11528ee9c2394e81b2d19dd1d4bc01"
  _type = "metal_line_follower/proximityMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string sender
bool leftSensor
bool centerSensor
bool rightSensor

"""
  __slots__ = ['sender','leftSensor','centerSensor','rightSensor']
  _slot_types = ['string','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       sender,leftSensor,centerSensor,rightSensor

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(proximityMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.sender is None:
        self.sender = ''
      if self.leftSensor is None:
        self.leftSensor = False
      if self.centerSensor is None:
        self.centerSensor = False
      if self.rightSensor is None:
        self.rightSensor = False
    else:
      self.sender = ''
      self.leftSensor = False
      self.centerSensor = False
      self.rightSensor = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.sender
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3B().pack(_x.leftSensor, _x.centerSensor, _x.rightSensor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sender = str[start:end].decode('utf-8')
      else:
        self.sender = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.leftSensor, _x.centerSensor, _x.rightSensor,) = _get_struct_3B().unpack(str[start:end])
      self.leftSensor = bool(self.leftSensor)
      self.centerSensor = bool(self.centerSensor)
      self.rightSensor = bool(self.rightSensor)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.sender
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3B().pack(_x.leftSensor, _x.centerSensor, _x.rightSensor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sender = str[start:end].decode('utf-8')
      else:
        self.sender = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.leftSensor, _x.centerSensor, _x.rightSensor,) = _get_struct_3B().unpack(str[start:end])
      self.leftSensor = bool(self.leftSensor)
      self.centerSensor = bool(self.centerSensor)
      self.rightSensor = bool(self.rightSensor)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B