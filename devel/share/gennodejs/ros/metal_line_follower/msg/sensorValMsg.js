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

class sensorValMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sender = null;
      this.centerSensorIn = null;
      this.leftSensorIn = null;
      this.rightSensorIn = null;
    }
    else {
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = '';
      }
      if (initObj.hasOwnProperty('centerSensorIn')) {
        this.centerSensorIn = initObj.centerSensorIn
      }
      else {
        this.centerSensorIn = false;
      }
      if (initObj.hasOwnProperty('leftSensorIn')) {
        this.leftSensorIn = initObj.leftSensorIn
      }
      else {
        this.leftSensorIn = false;
      }
      if (initObj.hasOwnProperty('rightSensorIn')) {
        this.rightSensorIn = initObj.rightSensorIn
      }
      else {
        this.rightSensorIn = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sensorValMsg
    // Serialize message field [sender]
    bufferOffset = _serializer.string(obj.sender, buffer, bufferOffset);
    // Serialize message field [centerSensorIn]
    bufferOffset = _serializer.bool(obj.centerSensorIn, buffer, bufferOffset);
    // Serialize message field [leftSensorIn]
    bufferOffset = _serializer.bool(obj.leftSensorIn, buffer, bufferOffset);
    // Serialize message field [rightSensorIn]
    bufferOffset = _serializer.bool(obj.rightSensorIn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sensorValMsg
    let len;
    let data = new sensorValMsg(null);
    // Deserialize message field [sender]
    data.sender = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [centerSensorIn]
    data.centerSensorIn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [leftSensorIn]
    data.leftSensorIn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rightSensorIn]
    data.rightSensorIn = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sender.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metal_line_follower/sensorValMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ea5d8411b8bc50422659e11921c9f65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sender
    bool centerSensorIn
    bool leftSensorIn
    bool rightSensorIn
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sensorValMsg(null);
    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = ''
    }

    if (msg.centerSensorIn !== undefined) {
      resolved.centerSensorIn = msg.centerSensorIn;
    }
    else {
      resolved.centerSensorIn = false
    }

    if (msg.leftSensorIn !== undefined) {
      resolved.leftSensorIn = msg.leftSensorIn;
    }
    else {
      resolved.leftSensorIn = false
    }

    if (msg.rightSensorIn !== undefined) {
      resolved.rightSensorIn = msg.rightSensorIn;
    }
    else {
      resolved.rightSensorIn = false
    }

    return resolved;
    }
};

module.exports = sensorValMsg;
