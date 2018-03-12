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

class beginOpMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enableOperation = null;
    }
    else {
      if (initObj.hasOwnProperty('enableOperation')) {
        this.enableOperation = initObj.enableOperation
      }
      else {
        this.enableOperation = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type beginOpMsg
    // Serialize message field [enableOperation]
    bufferOffset = _serializer.bool(obj.enableOperation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type beginOpMsg
    let len;
    let data = new beginOpMsg(null);
    // Deserialize message field [enableOperation]
    data.enableOperation = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metal_line_follower/beginOpMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71ee0ed5e8ee97a464b9e21ee3b05a3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enableOperation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new beginOpMsg(null);
    if (msg.enableOperation !== undefined) {
      resolved.enableOperation = msg.enableOperation;
    }
    else {
      resolved.enableOperation = false
    }

    return resolved;
    }
};

module.exports = beginOpMsg;
