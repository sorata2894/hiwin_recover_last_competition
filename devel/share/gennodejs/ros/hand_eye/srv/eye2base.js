// Auto-generated. Do not edit!

// (in-package hand_eye.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class eye2baseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ini_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('ini_pose')) {
        this.ini_pose = initObj.ini_pose
      }
      else {
        this.ini_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type eye2baseRequest
    // Serialize message field [ini_pose]
    bufferOffset = _arraySerializer.float64(obj.ini_pose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type eye2baseRequest
    let len;
    let data = new eye2baseRequest(null);
    // Deserialize message field [ini_pose]
    data.ini_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.ini_pose.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_eye/eye2baseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf5f31a4ddc2f5da7f91a45ce88ebe88';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[]   ini_pose
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new eye2baseRequest(null);
    if (msg.ini_pose !== undefined) {
      resolved.ini_pose = msg.ini_pose;
    }
    else {
      resolved.ini_pose = []
    }

    return resolved;
    }
};

class eye2baseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tar_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('tar_pose')) {
        this.tar_pose = initObj.tar_pose
      }
      else {
        this.tar_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type eye2baseResponse
    // Serialize message field [tar_pose]
    bufferOffset = _arraySerializer.float64(obj.tar_pose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type eye2baseResponse
    let len;
    let data = new eye2baseResponse(null);
    // Deserialize message field [tar_pose]
    data.tar_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.tar_pose.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_eye/eye2baseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13e916f631234683424cc610f1b27a51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64[]   tar_pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new eye2baseResponse(null);
    if (msg.tar_pose !== undefined) {
      resolved.tar_pose = msg.tar_pose;
    }
    else {
      resolved.tar_pose = []
    }

    return resolved;
    }
};

module.exports = {
  Request: eye2baseRequest,
  Response: eye2baseResponse,
  md5sum() { return '525ac9dec1a89bc706b1140d349a6a9a'; },
  datatype() { return 'hand_eye/eye2base'; }
};
