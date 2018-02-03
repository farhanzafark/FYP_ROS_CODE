// Auto-generated. Do not edit!

// (in-package metal_line_follower.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class myCustom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.senderType = null;
      this.msgData = null;
    }
    else {
      if (initObj.hasOwnProperty('senderType')) {
        this.senderType = initObj.senderType
      }
      else {
        this.senderType = '';
      }
      if (initObj.hasOwnProperty('msgData')) {
        this.msgData = initObj.msgData
      }
      else {
        this.msgData = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myCustom
    // Serialize message field [senderType]
    bufferOffset = _serializer.string(obj.senderType, buffer, bufferOffset);
    // Serialize message field [msgData]
    bufferOffset = _arraySerializer.int32(obj.msgData, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myCustom
    let len;
    let data = new myCustom(null);
    // Deserialize message field [senderType]
    data.senderType = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msgData]
    data.msgData = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.senderType.length;
    length += 4 * object.msgData.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metal_line_follower/myCustom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ace9042348799f75d0457e17a86b80b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string senderType
    int32[] msgData
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myCustom(null);
    if (msg.senderType !== undefined) {
      resolved.senderType = msg.senderType;
    }
    else {
      resolved.senderType = ''
    }

    if (msg.msgData !== undefined) {
      resolved.msgData = msg.msgData;
    }
    else {
      resolved.msgData = []
    }

    return resolved;
    }
};

module.exports = myCustom;
