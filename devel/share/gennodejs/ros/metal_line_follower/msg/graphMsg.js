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

class graphMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sender = null;
      this.shortestPath = null;
      this.enableFlag = null;
      this.xCoordinates = null;
      this.yCoordinates = null;
    }
    else {
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = '';
      }
      if (initObj.hasOwnProperty('shortestPath')) {
        this.shortestPath = initObj.shortestPath
      }
      else {
        this.shortestPath = '';
      }
      if (initObj.hasOwnProperty('enableFlag')) {
        this.enableFlag = initObj.enableFlag
      }
      else {
        this.enableFlag = false;
      }
      if (initObj.hasOwnProperty('xCoordinates')) {
        this.xCoordinates = initObj.xCoordinates
      }
      else {
        this.xCoordinates = '';
      }
      if (initObj.hasOwnProperty('yCoordinates')) {
        this.yCoordinates = initObj.yCoordinates
      }
      else {
        this.yCoordinates = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type graphMsg
    // Serialize message field [sender]
    bufferOffset = _serializer.string(obj.sender, buffer, bufferOffset);
    // Serialize message field [shortestPath]
    bufferOffset = _serializer.string(obj.shortestPath, buffer, bufferOffset);
    // Serialize message field [enableFlag]
    bufferOffset = _serializer.bool(obj.enableFlag, buffer, bufferOffset);
    // Serialize message field [xCoordinates]
    bufferOffset = _serializer.string(obj.xCoordinates, buffer, bufferOffset);
    // Serialize message field [yCoordinates]
    bufferOffset = _serializer.string(obj.yCoordinates, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type graphMsg
    let len;
    let data = new graphMsg(null);
    // Deserialize message field [sender]
    data.sender = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [shortestPath]
    data.shortestPath = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enableFlag]
    data.enableFlag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [xCoordinates]
    data.xCoordinates = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [yCoordinates]
    data.yCoordinates = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sender.length;
    length += object.shortestPath.length;
    length += object.xCoordinates.length;
    length += object.yCoordinates.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metal_line_follower/graphMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c019807c6f85ba6ce267a24b9dc89cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sender
    string shortestPath
    bool enableFlag
    string xCoordinates
    string yCoordinates
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new graphMsg(null);
    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = ''
    }

    if (msg.shortestPath !== undefined) {
      resolved.shortestPath = msg.shortestPath;
    }
    else {
      resolved.shortestPath = ''
    }

    if (msg.enableFlag !== undefined) {
      resolved.enableFlag = msg.enableFlag;
    }
    else {
      resolved.enableFlag = false
    }

    if (msg.xCoordinates !== undefined) {
      resolved.xCoordinates = msg.xCoordinates;
    }
    else {
      resolved.xCoordinates = ''
    }

    if (msg.yCoordinates !== undefined) {
      resolved.yCoordinates = msg.yCoordinates;
    }
    else {
      resolved.yCoordinates = ''
    }

    return resolved;
    }
};

module.exports = graphMsg;
