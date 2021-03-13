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

class save_pcdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.save_mix = null;
      this.curr_trans = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('save_mix')) {
        this.save_mix = initObj.save_mix
      }
      else {
        this.save_mix = false;
      }
      if (initObj.hasOwnProperty('curr_trans')) {
        this.curr_trans = initObj.curr_trans
      }
      else {
        this.curr_trans = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type save_pcdRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [save_mix]
    bufferOffset = _serializer.bool(obj.save_mix, buffer, bufferOffset);
    // Serialize message field [curr_trans]
    bufferOffset = _arraySerializer.float64(obj.curr_trans, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_pcdRequest
    let len;
    let data = new save_pcdRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [save_mix]
    data.save_mix = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [curr_trans]
    data.curr_trans = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += 8 * object.curr_trans.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_eye/save_pcdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c07f114cbbea4072f42229e881072e67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string    name
    bool      save_mix
    float64[] curr_trans
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new save_pcdRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.save_mix !== undefined) {
      resolved.save_mix = msg.save_mix;
    }
    else {
      resolved.save_mix = false
    }

    if (msg.curr_trans !== undefined) {
      resolved.curr_trans = msg.curr_trans;
    }
    else {
      resolved.curr_trans = []
    }

    return resolved;
    }
};

class save_pcdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type save_pcdResponse
    // Serialize message field [done]
    bufferOffset = _serializer.bool(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_pcdResponse
    let len;
    let data = new save_pcdResponse(null);
    // Deserialize message field [done]
    data.done = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_eye/save_pcdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89bb254424e4cffedbf494e7b0ddbfea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool  done
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new save_pcdResponse(null);
    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = false
    }

    return resolved;
    }
};

module.exports = {
  Request: save_pcdRequest,
  Response: save_pcdResponse,
  md5sum() { return '019443dee1fc0f101de6cb027a41dd75'; },
  datatype() { return 'hand_eye/save_pcd'; }
};
