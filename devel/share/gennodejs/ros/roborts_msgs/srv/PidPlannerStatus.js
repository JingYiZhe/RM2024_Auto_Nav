// Auto-generated. Do not edit!

// (in-package roborts_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PidPlannerStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planner_state = null;
      this.max_x_speed = null;
      this.max_y_speed = null;
      this.yaw_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('planner_state')) {
        this.planner_state = initObj.planner_state
      }
      else {
        this.planner_state = 0;
      }
      if (initObj.hasOwnProperty('max_x_speed')) {
        this.max_x_speed = initObj.max_x_speed
      }
      else {
        this.max_x_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_y_speed')) {
        this.max_y_speed = initObj.max_y_speed
      }
      else {
        this.max_y_speed = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_speed')) {
        this.yaw_speed = initObj.yaw_speed
      }
      else {
        this.yaw_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PidPlannerStatusRequest
    // Serialize message field [planner_state]
    bufferOffset = _serializer.int32(obj.planner_state, buffer, bufferOffset);
    // Serialize message field [max_x_speed]
    bufferOffset = _serializer.float32(obj.max_x_speed, buffer, bufferOffset);
    // Serialize message field [max_y_speed]
    bufferOffset = _serializer.float32(obj.max_y_speed, buffer, bufferOffset);
    // Serialize message field [yaw_speed]
    bufferOffset = _serializer.float32(obj.yaw_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PidPlannerStatusRequest
    let len;
    let data = new PidPlannerStatusRequest(null);
    // Deserialize message field [planner_state]
    data.planner_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [max_x_speed]
    data.max_x_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_y_speed]
    data.max_y_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_speed]
    data.yaw_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roborts_msgs/PidPlannerStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48bbfebcde954eacf43ffc7a0f713b7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 客户端请求时设置状态
    int32 planner_state
    float32 max_x_speed
    float32 max_y_speed
    float32 yaw_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PidPlannerStatusRequest(null);
    if (msg.planner_state !== undefined) {
      resolved.planner_state = msg.planner_state;
    }
    else {
      resolved.planner_state = 0
    }

    if (msg.max_x_speed !== undefined) {
      resolved.max_x_speed = msg.max_x_speed;
    }
    else {
      resolved.max_x_speed = 0.0
    }

    if (msg.max_y_speed !== undefined) {
      resolved.max_y_speed = msg.max_y_speed;
    }
    else {
      resolved.max_y_speed = 0.0
    }

    if (msg.yaw_speed !== undefined) {
      resolved.yaw_speed = msg.yaw_speed;
    }
    else {
      resolved.yaw_speed = 0.0
    }

    return resolved;
    }
};

class PidPlannerStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PidPlannerStatusResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PidPlannerStatusResponse
    let len;
    let data = new PidPlannerStatusResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roborts_msgs/PidPlannerStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PidPlannerStatusResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: PidPlannerStatusRequest,
  Response: PidPlannerStatusResponse,
  md5sum() { return 'a371bdf98ac23518e5ce8e1cbb0f1497'; },
  datatype() { return 'roborts_msgs/PidPlannerStatus'; }
};
