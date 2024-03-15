// Auto-generated. Do not edit!

// (in-package roborts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GameStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.area = null;
      this.shoot_number = null;
      this.health_point = null;
      this.game_state = null;
      this.heat_rest = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = 0;
      }
      if (initObj.hasOwnProperty('shoot_number')) {
        this.shoot_number = initObj.shoot_number
      }
      else {
        this.shoot_number = 0.0;
      }
      if (initObj.hasOwnProperty('health_point')) {
        this.health_point = initObj.health_point
      }
      else {
        this.health_point = 0.0;
      }
      if (initObj.hasOwnProperty('game_state')) {
        this.game_state = initObj.game_state
      }
      else {
        this.game_state = 0;
      }
      if (initObj.hasOwnProperty('heat_rest')) {
        this.heat_rest = initObj.heat_rest
      }
      else {
        this.heat_rest = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GameStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = _serializer.uint8(obj.area, buffer, bufferOffset);
    // Serialize message field [shoot_number]
    bufferOffset = _serializer.float64(obj.shoot_number, buffer, bufferOffset);
    // Serialize message field [health_point]
    bufferOffset = _serializer.float64(obj.health_point, buffer, bufferOffset);
    // Serialize message field [game_state]
    bufferOffset = _serializer.uint8(obj.game_state, buffer, bufferOffset);
    // Serialize message field [heat_rest]
    bufferOffset = _serializer.float64(obj.heat_rest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameStatus
    let len;
    let data = new GameStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [shoot_number]
    data.shoot_number = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [health_point]
    data.health_point = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [game_state]
    data.game_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [heat_rest]
    data.heat_rest = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/GameStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f256835487a7c2a1aeb09f0176114118';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    uint8 area
    float64 shoot_number
    float64 health_point
    uint8 game_state
    float64 heat_rest
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GameStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.area !== undefined) {
      resolved.area = msg.area;
    }
    else {
      resolved.area = 0
    }

    if (msg.shoot_number !== undefined) {
      resolved.shoot_number = msg.shoot_number;
    }
    else {
      resolved.shoot_number = 0.0
    }

    if (msg.health_point !== undefined) {
      resolved.health_point = msg.health_point;
    }
    else {
      resolved.health_point = 0.0
    }

    if (msg.game_state !== undefined) {
      resolved.game_state = msg.game_state;
    }
    else {
      resolved.game_state = 0
    }

    if (msg.heat_rest !== undefined) {
      resolved.heat_rest = msg.heat_rest;
    }
    else {
      resolved.heat_rest = 0.0
    }

    return resolved;
    }
};

module.exports = GameStatus;
