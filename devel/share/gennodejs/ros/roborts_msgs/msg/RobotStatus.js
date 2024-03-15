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

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.game_type = null;
      this.game_progress = null;
      this.shooter_cooling_rate = null;
      this.shooter_speed_limit = null;
      this.shooter_cooling_limit = null;
      this.robot_id = null;
      this.remain_HP = null;
      this.max_HP = null;
      this.armor_id = null;
      this.hurt_type = null;
      this.bullet_freq = null;
      this.bullet_speed = null;
      this.bullet_remaining_num = null;
      this.key_board = null;
      this.other_robot_id = null;
      this.tgx = null;
      this.tgy = null;
      this.tgz = null;
      this.blue_x = null;
      this.blue_y = null;
      this.blue_confiden = null;
      this.red_x = null;
      this.red_y = null;
      this.red_confiden = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('game_type')) {
        this.game_type = initObj.game_type
      }
      else {
        this.game_type = 0.0;
      }
      if (initObj.hasOwnProperty('game_progress')) {
        this.game_progress = initObj.game_progress
      }
      else {
        this.game_progress = 0.0;
      }
      if (initObj.hasOwnProperty('shooter_cooling_rate')) {
        this.shooter_cooling_rate = initObj.shooter_cooling_rate
      }
      else {
        this.shooter_cooling_rate = 0.0;
      }
      if (initObj.hasOwnProperty('shooter_speed_limit')) {
        this.shooter_speed_limit = initObj.shooter_speed_limit
      }
      else {
        this.shooter_speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('shooter_cooling_limit')) {
        this.shooter_cooling_limit = initObj.shooter_cooling_limit
      }
      else {
        this.shooter_cooling_limit = 0.0;
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0.0;
      }
      if (initObj.hasOwnProperty('remain_HP')) {
        this.remain_HP = initObj.remain_HP
      }
      else {
        this.remain_HP = 0.0;
      }
      if (initObj.hasOwnProperty('max_HP')) {
        this.max_HP = initObj.max_HP
      }
      else {
        this.max_HP = 0.0;
      }
      if (initObj.hasOwnProperty('armor_id')) {
        this.armor_id = initObj.armor_id
      }
      else {
        this.armor_id = 0.0;
      }
      if (initObj.hasOwnProperty('hurt_type')) {
        this.hurt_type = initObj.hurt_type
      }
      else {
        this.hurt_type = 0.0;
      }
      if (initObj.hasOwnProperty('bullet_freq')) {
        this.bullet_freq = initObj.bullet_freq
      }
      else {
        this.bullet_freq = 0.0;
      }
      if (initObj.hasOwnProperty('bullet_speed')) {
        this.bullet_speed = initObj.bullet_speed
      }
      else {
        this.bullet_speed = 0.0;
      }
      if (initObj.hasOwnProperty('bullet_remaining_num')) {
        this.bullet_remaining_num = initObj.bullet_remaining_num
      }
      else {
        this.bullet_remaining_num = 0.0;
      }
      if (initObj.hasOwnProperty('key_board')) {
        this.key_board = initObj.key_board
      }
      else {
        this.key_board = 0.0;
      }
      if (initObj.hasOwnProperty('other_robot_id')) {
        this.other_robot_id = initObj.other_robot_id
      }
      else {
        this.other_robot_id = 0.0;
      }
      if (initObj.hasOwnProperty('tgx')) {
        this.tgx = initObj.tgx
      }
      else {
        this.tgx = 0.0;
      }
      if (initObj.hasOwnProperty('tgy')) {
        this.tgy = initObj.tgy
      }
      else {
        this.tgy = 0.0;
      }
      if (initObj.hasOwnProperty('tgz')) {
        this.tgz = initObj.tgz
      }
      else {
        this.tgz = 0.0;
      }
      if (initObj.hasOwnProperty('blue_x')) {
        this.blue_x = initObj.blue_x
      }
      else {
        this.blue_x = 0.0;
      }
      if (initObj.hasOwnProperty('blue_y')) {
        this.blue_y = initObj.blue_y
      }
      else {
        this.blue_y = 0.0;
      }
      if (initObj.hasOwnProperty('blue_confiden')) {
        this.blue_confiden = initObj.blue_confiden
      }
      else {
        this.blue_confiden = 0.0;
      }
      if (initObj.hasOwnProperty('red_x')) {
        this.red_x = initObj.red_x
      }
      else {
        this.red_x = 0.0;
      }
      if (initObj.hasOwnProperty('red_y')) {
        this.red_y = initObj.red_y
      }
      else {
        this.red_y = 0.0;
      }
      if (initObj.hasOwnProperty('red_confiden')) {
        this.red_confiden = initObj.red_confiden
      }
      else {
        this.red_confiden = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [game_type]
    bufferOffset = _serializer.float64(obj.game_type, buffer, bufferOffset);
    // Serialize message field [game_progress]
    bufferOffset = _serializer.float64(obj.game_progress, buffer, bufferOffset);
    // Serialize message field [shooter_cooling_rate]
    bufferOffset = _serializer.float64(obj.shooter_cooling_rate, buffer, bufferOffset);
    // Serialize message field [shooter_speed_limit]
    bufferOffset = _serializer.float64(obj.shooter_speed_limit, buffer, bufferOffset);
    // Serialize message field [shooter_cooling_limit]
    bufferOffset = _serializer.float64(obj.shooter_cooling_limit, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.float64(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [remain_HP]
    bufferOffset = _serializer.float64(obj.remain_HP, buffer, bufferOffset);
    // Serialize message field [max_HP]
    bufferOffset = _serializer.float64(obj.max_HP, buffer, bufferOffset);
    // Serialize message field [armor_id]
    bufferOffset = _serializer.float64(obj.armor_id, buffer, bufferOffset);
    // Serialize message field [hurt_type]
    bufferOffset = _serializer.float64(obj.hurt_type, buffer, bufferOffset);
    // Serialize message field [bullet_freq]
    bufferOffset = _serializer.float64(obj.bullet_freq, buffer, bufferOffset);
    // Serialize message field [bullet_speed]
    bufferOffset = _serializer.float64(obj.bullet_speed, buffer, bufferOffset);
    // Serialize message field [bullet_remaining_num]
    bufferOffset = _serializer.float64(obj.bullet_remaining_num, buffer, bufferOffset);
    // Serialize message field [key_board]
    bufferOffset = _serializer.float64(obj.key_board, buffer, bufferOffset);
    // Serialize message field [other_robot_id]
    bufferOffset = _serializer.float64(obj.other_robot_id, buffer, bufferOffset);
    // Serialize message field [tgx]
    bufferOffset = _serializer.float64(obj.tgx, buffer, bufferOffset);
    // Serialize message field [tgy]
    bufferOffset = _serializer.float64(obj.tgy, buffer, bufferOffset);
    // Serialize message field [tgz]
    bufferOffset = _serializer.float64(obj.tgz, buffer, bufferOffset);
    // Serialize message field [blue_x]
    bufferOffset = _serializer.float64(obj.blue_x, buffer, bufferOffset);
    // Serialize message field [blue_y]
    bufferOffset = _serializer.float64(obj.blue_y, buffer, bufferOffset);
    // Serialize message field [blue_confiden]
    bufferOffset = _serializer.float64(obj.blue_confiden, buffer, bufferOffset);
    // Serialize message field [red_x]
    bufferOffset = _serializer.float64(obj.red_x, buffer, bufferOffset);
    // Serialize message field [red_y]
    bufferOffset = _serializer.float64(obj.red_y, buffer, bufferOffset);
    // Serialize message field [red_confiden]
    bufferOffset = _serializer.float64(obj.red_confiden, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [game_type]
    data.game_type = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [game_progress]
    data.game_progress = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [shooter_cooling_rate]
    data.shooter_cooling_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [shooter_speed_limit]
    data.shooter_speed_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [shooter_cooling_limit]
    data.shooter_cooling_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [remain_HP]
    data.remain_HP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_HP]
    data.max_HP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [armor_id]
    data.armor_id = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hurt_type]
    data.hurt_type = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bullet_freq]
    data.bullet_freq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bullet_speed]
    data.bullet_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bullet_remaining_num]
    data.bullet_remaining_num = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [key_board]
    data.key_board = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [other_robot_id]
    data.other_robot_id = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tgx]
    data.tgx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tgy]
    data.tgy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tgz]
    data.tgz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blue_x]
    data.blue_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blue_y]
    data.blue_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blue_confiden]
    data.blue_confiden = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [red_x]
    data.red_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [red_y]
    data.red_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [red_confiden]
    data.red_confiden = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 192;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9de178dca1cd2056946b6631a6ec5d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
      float64 game_type
      float64 game_progress
      float64 shooter_cooling_rate
      float64 shooter_speed_limit
      float64 shooter_cooling_limit
      float64 robot_id
      float64 remain_HP
      float64 max_HP
      float64 armor_id
      float64 hurt_type
      float64 bullet_freq
      float64 bullet_speed
      float64 bullet_remaining_num
      float64 key_board
      float64 other_robot_id
      float64 tgx
      float64 tgy
      float64 tgz
      float64 blue_x
      float64  blue_y
      float64  blue_confiden
      float64 red_x
      float64  red_y
      float64  red_confiden
    
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
    const resolved = new RobotStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.game_type !== undefined) {
      resolved.game_type = msg.game_type;
    }
    else {
      resolved.game_type = 0.0
    }

    if (msg.game_progress !== undefined) {
      resolved.game_progress = msg.game_progress;
    }
    else {
      resolved.game_progress = 0.0
    }

    if (msg.shooter_cooling_rate !== undefined) {
      resolved.shooter_cooling_rate = msg.shooter_cooling_rate;
    }
    else {
      resolved.shooter_cooling_rate = 0.0
    }

    if (msg.shooter_speed_limit !== undefined) {
      resolved.shooter_speed_limit = msg.shooter_speed_limit;
    }
    else {
      resolved.shooter_speed_limit = 0.0
    }

    if (msg.shooter_cooling_limit !== undefined) {
      resolved.shooter_cooling_limit = msg.shooter_cooling_limit;
    }
    else {
      resolved.shooter_cooling_limit = 0.0
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0.0
    }

    if (msg.remain_HP !== undefined) {
      resolved.remain_HP = msg.remain_HP;
    }
    else {
      resolved.remain_HP = 0.0
    }

    if (msg.max_HP !== undefined) {
      resolved.max_HP = msg.max_HP;
    }
    else {
      resolved.max_HP = 0.0
    }

    if (msg.armor_id !== undefined) {
      resolved.armor_id = msg.armor_id;
    }
    else {
      resolved.armor_id = 0.0
    }

    if (msg.hurt_type !== undefined) {
      resolved.hurt_type = msg.hurt_type;
    }
    else {
      resolved.hurt_type = 0.0
    }

    if (msg.bullet_freq !== undefined) {
      resolved.bullet_freq = msg.bullet_freq;
    }
    else {
      resolved.bullet_freq = 0.0
    }

    if (msg.bullet_speed !== undefined) {
      resolved.bullet_speed = msg.bullet_speed;
    }
    else {
      resolved.bullet_speed = 0.0
    }

    if (msg.bullet_remaining_num !== undefined) {
      resolved.bullet_remaining_num = msg.bullet_remaining_num;
    }
    else {
      resolved.bullet_remaining_num = 0.0
    }

    if (msg.key_board !== undefined) {
      resolved.key_board = msg.key_board;
    }
    else {
      resolved.key_board = 0.0
    }

    if (msg.other_robot_id !== undefined) {
      resolved.other_robot_id = msg.other_robot_id;
    }
    else {
      resolved.other_robot_id = 0.0
    }

    if (msg.tgx !== undefined) {
      resolved.tgx = msg.tgx;
    }
    else {
      resolved.tgx = 0.0
    }

    if (msg.tgy !== undefined) {
      resolved.tgy = msg.tgy;
    }
    else {
      resolved.tgy = 0.0
    }

    if (msg.tgz !== undefined) {
      resolved.tgz = msg.tgz;
    }
    else {
      resolved.tgz = 0.0
    }

    if (msg.blue_x !== undefined) {
      resolved.blue_x = msg.blue_x;
    }
    else {
      resolved.blue_x = 0.0
    }

    if (msg.blue_y !== undefined) {
      resolved.blue_y = msg.blue_y;
    }
    else {
      resolved.blue_y = 0.0
    }

    if (msg.blue_confiden !== undefined) {
      resolved.blue_confiden = msg.blue_confiden;
    }
    else {
      resolved.blue_confiden = 0.0
    }

    if (msg.red_x !== undefined) {
      resolved.red_x = msg.red_x;
    }
    else {
      resolved.red_x = 0.0
    }

    if (msg.red_y !== undefined) {
      resolved.red_y = msg.red_y;
    }
    else {
      resolved.red_y = 0.0
    }

    if (msg.red_confiden !== undefined) {
      resolved.red_confiden = msg.red_confiden;
    }
    else {
      resolved.red_confiden = 0.0
    }

    return resolved;
    }
};

module.exports = RobotStatus;
