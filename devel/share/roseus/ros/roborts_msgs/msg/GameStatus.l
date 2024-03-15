;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::GameStatus)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'GameStatus (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::GAMESTATUS")
  (make-package "ROBORTS_MSGS::GAMESTATUS"))

(in-package "ROS")
;;//! \htmlinclude GameStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roborts_msgs::GameStatus
  :super ros::object
  :slots (_header _area _shoot_number _health_point _game_state _heat_rest ))

(defmethod roborts_msgs::GameStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:area __area) 0)
    ((:shoot_number __shoot_number) 0.0)
    ((:health_point __health_point) 0.0)
    ((:game_state __game_state) 0)
    ((:heat_rest __heat_rest) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _area (round __area))
   (setq _shoot_number (float __shoot_number))
   (setq _health_point (float __health_point))
   (setq _game_state (round __game_state))
   (setq _heat_rest (float __heat_rest))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:shoot_number
   (&optional __shoot_number)
   (if __shoot_number (setq _shoot_number __shoot_number)) _shoot_number)
  (:health_point
   (&optional __health_point)
   (if __health_point (setq _health_point __health_point)) _health_point)
  (:game_state
   (&optional __game_state)
   (if __game_state (setq _game_state __game_state)) _game_state)
  (:heat_rest
   (&optional __heat_rest)
   (if __heat_rest (setq _heat_rest __heat_rest)) _heat_rest)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _area
    1
    ;; float64 _shoot_number
    8
    ;; float64 _health_point
    8
    ;; uint8 _game_state
    1
    ;; float64 _heat_rest
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _area
       (write-byte _area s)
     ;; float64 _shoot_number
       (sys::poke _shoot_number (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _health_point
       (sys::poke _health_point (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _game_state
       (write-byte _game_state s)
     ;; float64 _heat_rest
       (sys::poke _heat_rest (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _area
     (setq _area (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _shoot_number
     (setq _shoot_number (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _health_point
     (setq _health_point (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _game_state
     (setq _game_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _heat_rest
     (setq _heat_rest (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roborts_msgs::GameStatus :md5sum-) "f256835487a7c2a1aeb09f0176114118")
(setf (get roborts_msgs::GameStatus :datatype-) "roborts_msgs/GameStatus")
(setf (get roborts_msgs::GameStatus :definition-)
      "std_msgs/Header header

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

")



(provide :roborts_msgs/GameStatus "f256835487a7c2a1aeb09f0176114118")


