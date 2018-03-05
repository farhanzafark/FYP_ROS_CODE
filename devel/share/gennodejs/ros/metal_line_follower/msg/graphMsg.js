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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type graphMsg
    // Serialize message field [sender]
    bufferOffset = _serializer.string(obj.sender, buffer, bufferOffset);
    // Serialize message field [shortestPath]
    bufferOffset = _serializer.string(obj.shortestPath, buffer, bufferOffset);
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
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sender.length;
    length += object.shortestPath.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metal_line_follower/graphMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3a1b9063ec7f8e5e0bd46e697b1e154';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sender
    string shortestPath
    
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

    return resolved;
    }
};

module.exports = graphMsg;
