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

class proximityMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sender = null;
      this.leftSensor = null;
      this.centerSensor = null;
      this.rightSensor = null;
    }
    else {
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = '';
      }
      if (initObj.hasOwnProperty('leftSensor')) {
        this.leftSensor = initObj.leftSensor
      }
      else {
        this.leftSensor = false;
      }
      if (initObj.hasOwnProperty('centerSensor')) {
        this.centerSensor = initObj.centerSensor
      }
      else {
        this.centerSensor = false;
      }
      if (initObj.hasOwnProperty('rightSensor')) {
        this.rightSensor = initObj.rightSensor
      }
      else {
        this.rightSensor = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type proximityMsg
    // Serialize message field [sender]
    bufferOffset = _serializer.string(obj.sender, buffer, bufferOffset);
    // Serialize message field [leftSensor]
    bufferOffset = _serializer.bool(obj.leftSensor, buffer, bufferOffset);
    // Serialize message field [centerSensor]
    bufferOffset = _serializer.bool(obj.centerSensor, buffer, bufferOffset);
    // Serialize message field [rightSensor]
    bufferOffset = _serializer.bool(obj.rightSensor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type proximityMsg
    let len;
    let data = new proximityMsg(null);
    // Deserialize message field [sender]
    data.sender = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [leftSensor]
    data.leftSensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [centerSensor]
    data.centerSensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rightSensor]
    data.rightSensor = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sender.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metal_line_follower/proximityMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af11528ee9c2394e81b2d19dd1d4bc01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sender
    bool leftSensor
    bool centerSensor
    bool rightSensor
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new proximityMsg(null);
    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = ''
    }

    if (msg.leftSensor !== undefined) {
      resolved.leftSensor = msg.leftSensor;
    }
    else {
      resolved.leftSensor = false
    }

    if (msg.centerSensor !== undefined) {
      resolved.centerSensor = msg.centerSensor;
    }
    else {
      resolved.centerSensor = false
    }

    if (msg.rightSensor !== undefined) {
      resolved.rightSensor = msg.rightSensor;
    }
    else {
      resolved.rightSensor = false
    }

    return resolved;
    }
};

module.exports = proximityMsg;
