// Auto-generated. Do not edit!

// (in-package control_node.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class robot_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.curr_pose = null;
      this.tool_coor = null;
      this.base_coor = null;
    }
    else {
      if (initObj.hasOwnProperty('curr_pose')) {
        this.curr_pose = initObj.curr_pose
      }
      else {
        this.curr_pose = [];
      }
      if (initObj.hasOwnProperty('tool_coor')) {
        this.tool_coor = initObj.tool_coor
      }
      else {
        this.tool_coor = [];
      }
      if (initObj.hasOwnProperty('base_coor')) {
        this.base_coor = initObj.base_coor
      }
      else {
        this.base_coor = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_info
    // Serialize message field [curr_pose]
    bufferOffset = _arraySerializer.float64(obj.curr_pose, buffer, bufferOffset, null);
    // Serialize message field [tool_coor]
    bufferOffset = _arraySerializer.float64(obj.tool_coor, buffer, bufferOffset, null);
    // Serialize message field [base_coor]
    bufferOffset = _arraySerializer.float64(obj.base_coor, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_info
    let len;
    let data = new robot_info(null);
    // Deserialize message field [curr_pose]
    data.curr_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tool_coor]
    data.tool_coor = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [base_coor]
    data.base_coor = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.curr_pose.length;
    length += 8 * object.tool_coor.length;
    length += 8 * object.base_coor.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_node/robot_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '495061eec8ab7a1d80f5e29c62b58a6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[]  curr_pose
    float64[]  tool_coor
    float64[]  base_coor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_info(null);
    if (msg.curr_pose !== undefined) {
      resolved.curr_pose = msg.curr_pose;
    }
    else {
      resolved.curr_pose = []
    }

    if (msg.tool_coor !== undefined) {
      resolved.tool_coor = msg.tool_coor;
    }
    else {
      resolved.tool_coor = []
    }

    if (msg.base_coor !== undefined) {
      resolved.base_coor = msg.base_coor;
    }
    else {
      resolved.base_coor = []
    }

    return resolved;
    }
};

module.exports = robot_info;
