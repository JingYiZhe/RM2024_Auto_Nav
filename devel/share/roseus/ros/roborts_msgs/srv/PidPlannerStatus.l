;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::PidPlannerStatus)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'PidPlannerStatus (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::PIDPLANNERSTATUS")
  (make-package "ROBORTS_MSGS::PIDPLANNERSTATUS"))
(unless (find-package "ROBORTS_MSGS::PIDPLANNERSTATUSREQUEST")
  (make-package "ROBORTS_MSGS::PIDPLANNERSTATUSREQUEST"))
(unless (find-package "ROBORTS_MSGS::PIDPLANNERSTATUSRESPONSE")
  (make-package "ROBORTS_MSGS::PIDPLANNERSTATUSRESPONSE"))

(in-package "ROS")





(defclass roborts_msgs::PidPlannerStatusRequest
  :super ros::object
  :slots (_planner_state _max_x_speed _max_y_speed _yaw_speed ))

(defmethod roborts_msgs::PidPlannerStatusRequest
  (:init
   (&key
    ((:planner_state __planner_state) 0)
    ((:max_x_speed __max_x_speed) 0.0)
    ((:max_y_speed __max_y_speed) 0.0)
    ((:yaw_speed __yaw_speed) 0.0)
    )
   (send-super :init)
   (setq _planner_state (round __planner_state))
   (setq _max_x_speed (float __max_x_speed))
   (setq _max_y_speed (float __max_y_speed))
   (setq _yaw_speed (float __yaw_speed))
   self)
  (:planner_state
   (&optional __planner_state)
   (if __planner_state (setq _planner_state __planner_state)) _planner_state)
  (:max_x_speed
   (&optional __max_x_speed)
   (if __max_x_speed (setq _max_x_speed __max_x_speed)) _max_x_speed)
  (:max_y_speed
   (&optional __max_y_speed)
   (if __max_y_speed (setq _max_y_speed __max_y_speed)) _max_y_speed)
  (:yaw_speed
   (&optional __yaw_speed)
   (if __yaw_speed (setq _yaw_speed __yaw_speed)) _yaw_speed)
  (:serialization-length
   ()
   (+
    ;; int32 _planner_state
    4
    ;; float32 _max_x_speed
    4
    ;; float32 _max_y_speed
    4
    ;; float32 _yaw_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _planner_state
       (write-long _planner_state s)
     ;; float32 _max_x_speed
       (sys::poke _max_x_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_y_speed
       (sys::poke _max_y_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_speed
       (sys::poke _yaw_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _planner_state
     (setq _planner_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _max_x_speed
     (setq _max_x_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_y_speed
     (setq _max_y_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_speed
     (setq _yaw_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roborts_msgs::PidPlannerStatusResponse
  :super ros::object
  :slots (_result ))

(defmethod roborts_msgs::PidPlannerStatusResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roborts_msgs::PidPlannerStatus
  :super ros::object
  :slots ())

(setf (get roborts_msgs::PidPlannerStatus :md5sum-) "a371bdf98ac23518e5ce8e1cbb0f1497")
(setf (get roborts_msgs::PidPlannerStatus :datatype-) "roborts_msgs/PidPlannerStatus")
(setf (get roborts_msgs::PidPlannerStatus :request) roborts_msgs::PidPlannerStatusRequest)
(setf (get roborts_msgs::PidPlannerStatus :response) roborts_msgs::PidPlannerStatusResponse)

(defmethod roborts_msgs::PidPlannerStatusRequest
  (:response () (instance roborts_msgs::PidPlannerStatusResponse :init)))

(setf (get roborts_msgs::PidPlannerStatusRequest :md5sum-) "a371bdf98ac23518e5ce8e1cbb0f1497")
(setf (get roborts_msgs::PidPlannerStatusRequest :datatype-) "roborts_msgs/PidPlannerStatusRequest")
(setf (get roborts_msgs::PidPlannerStatusRequest :definition-)
      "# 客户端请求时设置状态
int32 planner_state
float32 max_x_speed
float32 max_y_speed
float32 yaw_speed
---
int32 result

")

(setf (get roborts_msgs::PidPlannerStatusResponse :md5sum-) "a371bdf98ac23518e5ce8e1cbb0f1497")
(setf (get roborts_msgs::PidPlannerStatusResponse :datatype-) "roborts_msgs/PidPlannerStatusResponse")
(setf (get roborts_msgs::PidPlannerStatusResponse :definition-)
      "# 客户端请求时设置状态
int32 planner_state
float32 max_x_speed
float32 max_y_speed
float32 yaw_speed
---
int32 result

")



(provide :roborts_msgs/PidPlannerStatus "a371bdf98ac23518e5ce8e1cbb0f1497")


