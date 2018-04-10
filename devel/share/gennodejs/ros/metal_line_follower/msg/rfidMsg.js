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

class rfidMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sender = null;
      this.nodeId = null;
    }
    else {
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = '';
      }
      if (initObj.hasOwnProperty('nodeId')) {
        this.nodeId = initObj.nodeId
      }
      else {
        this.nodeId = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rfidMsg
    // Serialize message field [sender]
    bufferOffset = _serializer.string(obj.sender, buffer, bufferOffset);
    // Serialize message field [nodeId]
    bufferOffset = _serializer.string(obj.nodeId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rfidMsg
    let len;
    let data = new rfidMsg(null);
    // Deserialize message field [sender]
    data.sender = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nodeId]
    data.nodeId = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sender.length;
    length += object.nodeId.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metal_line_follower/rfidMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '683ff0ffba5ff7be443d666ab4b04ae4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sender
    string nodeId
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rfidMsg(null);
    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = ''
    }

    if (msg.nodeId !== undefined) {
      resolved.nodeId = msg.nodeId;
    }
    else {
      resolved.nodeId = ''
    }

    return resolved;
    }
};

module.exports = rfidMsg;
