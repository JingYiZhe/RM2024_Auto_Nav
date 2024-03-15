;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::RobotStatus)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'RobotStatus (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::ROBOTSTATUS")
  (make-package "ROBORTS_MSGS::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roborts_msgs::RobotStatus
  :super ros::object
  :slots (_header _game_type _game_progress _shooter_cooling_rate _shooter_speed_limit _shooter_cooling_limit _robot_id _remain_HP _max_HP _armor_id _hurt_type _bullet_freq _bullet_speed _bullet_remaining_num _key_board _other_robot_id _tgx _tgy _tgz _blue_x _blue_y _blue_confiden _red_x _red_y _red_confiden ))

(defmethod roborts_msgs::RobotStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:game_type __game_type) 0.0)
    ((:game_progress __game_progress) 0.0)
    ((:shooter_cooling_rate __shooter_cooling_rate) 0.0)
    ((:shooter_speed_limit __shooter_speed_limit) 0.0)
    ((:shooter_cooling_limit __shooter_cooling_limit) 0.0)
    ((:robot_id __robot_id) 0.0)
    ((:remain_HP __remain_HP) 0.0)
    ((:max_HP __max_HP) 0.0)
    ((:armor_id __armor_id) 0.0)
    ((:hurt_type __hurt_type) 0.0)
    ((:bullet_freq __bullet_freq) 0.0)
    ((:bullet_speed __bullet_speed) 0.0)
    ((:bullet_remaining_num __bullet_remaining_num) 0.0)
    ((:key_board __key_board) 0.0)
    ((:other_robot_id __other_robot_id) 0.0)
    ((:tgx __tgx) 0.0)
    ((:tgy __tgy) 0.0)
    ((:tgz __tgz) 0.0)
    ((:blue_x __blue_x) 0.0)
    ((:blue_y __blue_y) 0.0)
    ((:blue_confiden __blue_confiden) 0.0)
    ((:red_x __red_x) 0.0)
    ((:red_y __red_y) 0.0)
    ((:red_confiden __red_confiden) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _game_type (float __game_type))
   (setq _game_progress (float __game_progress))
   (setq _shooter_cooling_rate (float __shooter_cooling_rate))
   (setq _shooter_speed_limit (float __shooter_speed_limit))
   (setq _shooter_cooling_limit (float __shooter_cooling_limit))
   (setq _robot_id (float __robot_id))
   (setq _remain_HP (float __remain_HP))
   (setq _max_HP (float __max_HP))
   (setq _armor_id (float __armor_id))
   (setq _hurt_type (float __hurt_type))
   (setq _bullet_freq (float __bullet_freq))
   (setq _bullet_speed (float __bullet_speed))
   (setq _bullet_remaining_num (float __bullet_remaining_num))
   (setq _key_board (float __key_board))
   (setq _other_robot_id (float __other_robot_id))
   (setq _tgx (float __tgx))
   (setq _tgy (float __tgy))
   (setq _tgz (float __tgz))
   (setq _blue_x (float __blue_x))
   (setq _blue_y (float __blue_y))
   (setq _blue_confiden (float __blue_confiden))
   (setq _red_x (float __red_x))
   (setq _red_y (float __red_y))
   (setq _red_confiden (float __red_confiden))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:game_type
   (&optional __game_type)
   (if __game_type (setq _game_type __game_type)) _game_type)
  (:game_progress
   (&optional __game_progress)
   (if __game_progress (setq _game_progress __game_progress)) _game_progress)
  (:shooter_cooling_rate
   (&optional __shooter_cooling_rate)
   (if __shooter_cooling_rate (setq _shooter_cooling_rate __shooter_cooling_rate)) _shooter_cooling_rate)
  (:shooter_speed_limit
   (&optional __shooter_speed_limit)
   (if __shooter_speed_limit (setq _shooter_speed_limit __shooter_speed_limit)) _shooter_speed_limit)
  (:shooter_cooling_limit
   (&optional __shooter_cooling_limit)
   (if __shooter_cooling_limit (setq _shooter_cooling_limit __shooter_cooling_limit)) _shooter_cooling_limit)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:remain_HP
   (&optional __remain_HP)
   (if __remain_HP (setq _remain_HP __remain_HP)) _remain_HP)
  (:max_HP
   (&optional __max_HP)
   (if __max_HP (setq _max_HP __max_HP)) _max_HP)
  (:armor_id
   (&optional __armor_id)
   (if __armor_id (setq _armor_id __armor_id)) _armor_id)
  (:hurt_type
   (&optional __hurt_type)
   (if __hurt_type (setq _hurt_type __hurt_type)) _hurt_type)
  (:bullet_freq
   (&optional __bullet_freq)
   (if __bullet_freq (setq _bullet_freq __bullet_freq)) _bullet_freq)
  (:bullet_speed
   (&optional __bullet_speed)
   (if __bullet_speed (setq _bullet_speed __bullet_speed)) _bullet_speed)
  (:bullet_remaining_num
   (&optional __bullet_remaining_num)
   (if __bullet_remaining_num (setq _bullet_remaining_num __bullet_remaining_num)) _bullet_remaining_num)
  (:key_board
   (&optional __key_board)
   (if __key_board (setq _key_board __key_board)) _key_board)
  (:other_robot_id
   (&optional __other_robot_id)
   (if __other_robot_id (setq _other_robot_id __other_robot_id)) _other_robot_id)
  (:tgx
   (&optional __tgx)
   (if __tgx (setq _tgx __tgx)) _tgx)
  (:tgy
   (&optional __tgy)
   (if __tgy (setq _tgy __tgy)) _tgy)
  (:tgz
   (&optional __tgz)
   (if __tgz (setq _tgz __tgz)) _tgz)
  (:blue_x
   (&optional __blue_x)
   (if __blue_x (setq _blue_x __blue_x)) _blue_x)
  (:blue_y
   (&optional __blue_y)
   (if __blue_y (setq _blue_y __blue_y)) _blue_y)
  (:blue_confiden
   (&optional __blue_confiden)
   (if __blue_confiden (setq _blue_confiden __blue_confiden)) _blue_confiden)
  (:red_x
   (&optional __red_x)
   (if __red_x (setq _red_x __red_x)) _red_x)
  (:red_y
   (&optional __red_y)
   (if __red_y (setq _red_y __red_y)) _red_y)
  (:red_confiden
   (&optional __red_confiden)
   (if __red_confiden (setq _red_confiden __red_confiden)) _red_confiden)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _game_type
    8
    ;; float64 _game_progress
    8
    ;; float64 _shooter_cooling_rate
    8
    ;; float64 _shooter_speed_limit
    8
    ;; float64 _shooter_cooling_limit
    8
    ;; float64 _robot_id
    8
    ;; float64 _remain_HP
    8
    ;; float64 _max_HP
    8
    ;; float64 _armor_id
    8
    ;; float64 _hurt_type
    8
    ;; float64 _bullet_freq
    8
    ;; float64 _bullet_speed
    8
    ;; float64 _bullet_remaining_num
    8
    ;; float64 _key_board
    8
    ;; float64 _other_robot_id
    8
    ;; float64 _tgx
    8
    ;; float64 _tgy
    8
    ;; float64 _tgz
    8
    ;; float64 _blue_x
    8
    ;; float64 _blue_y
    8
    ;; float64 _blue_confiden
    8
    ;; float64 _red_x
    8
    ;; float64 _red_y
    8
    ;; float64 _red_confiden
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _game_type
       (sys::poke _game_type (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _game_progress
       (sys::poke _game_progress (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _shooter_cooling_rate
       (sys::poke _shooter_cooling_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _shooter_speed_limit
       (sys::poke _shooter_speed_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _shooter_cooling_limit
       (sys::poke _shooter_cooling_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _robot_id
       (sys::poke _robot_id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _remain_HP
       (sys::poke _remain_HP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_HP
       (sys::poke _max_HP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _armor_id
       (sys::poke _armor_id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hurt_type
       (sys::poke _hurt_type (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bullet_freq
       (sys::poke _bullet_freq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bullet_speed
       (sys::poke _bullet_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bullet_remaining_num
       (sys::poke _bullet_remaining_num (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _key_board
       (sys::poke _key_board (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _other_robot_id
       (sys::poke _other_robot_id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tgx
       (sys::poke _tgx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tgy
       (sys::poke _tgy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tgz
       (sys::poke _tgz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _blue_x
       (sys::poke _blue_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _blue_y
       (sys::poke _blue_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _blue_confiden
       (sys::poke _blue_confiden (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _red_x
       (sys::poke _red_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _red_y
       (sys::poke _red_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _red_confiden
       (sys::poke _red_confiden (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _game_type
     (setq _game_type (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _game_progress
     (setq _game_progress (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _shooter_cooling_rate
     (setq _shooter_cooling_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _shooter_speed_limit
     (setq _shooter_speed_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _shooter_cooling_limit
     (setq _shooter_cooling_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _robot_id
     (setq _robot_id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _remain_HP
     (setq _remain_HP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_HP
     (setq _max_HP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _armor_id
     (setq _armor_id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hurt_type
     (setq _hurt_type (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bullet_freq
     (setq _bullet_freq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bullet_speed
     (setq _bullet_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bullet_remaining_num
     (setq _bullet_remaining_num (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _key_board
     (setq _key_board (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _other_robot_id
     (setq _other_robot_id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tgx
     (setq _tgx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tgy
     (setq _tgy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tgz
     (setq _tgz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _blue_x
     (setq _blue_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _blue_y
     (setq _blue_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _blue_confiden
     (setq _blue_confiden (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _red_x
     (setq _red_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _red_y
     (setq _red_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _red_confiden
     (setq _red_confiden (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roborts_msgs::RobotStatus :md5sum-) "d9de178dca1cd2056946b6631a6ec5d2")
(setf (get roborts_msgs::RobotStatus :datatype-) "roborts_msgs/RobotStatus")
(setf (get roborts_msgs::RobotStatus :definition-)
      "std_msgs/Header header

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

")



(provide :roborts_msgs/RobotStatus "d9de178dca1cd2056946b6631a6ec5d2")


