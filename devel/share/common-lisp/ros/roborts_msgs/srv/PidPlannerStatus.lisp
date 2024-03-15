; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-srv)


;//! \htmlinclude PidPlannerStatus-request.msg.html

(cl:defclass <PidPlannerStatus-request> (roslisp-msg-protocol:ros-message)
  ((planner_state
    :reader planner_state
    :initarg :planner_state
    :type cl:integer
    :initform 0)
   (max_x_speed
    :reader max_x_speed
    :initarg :max_x_speed
    :type cl:float
    :initform 0.0)
   (max_y_speed
    :reader max_y_speed
    :initarg :max_y_speed
    :type cl:float
    :initform 0.0)
   (yaw_speed
    :reader yaw_speed
    :initarg :yaw_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass PidPlannerStatus-request (<PidPlannerStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PidPlannerStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PidPlannerStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-srv:<PidPlannerStatus-request> is deprecated: use roborts_msgs-srv:PidPlannerStatus-request instead.")))

(cl:ensure-generic-function 'planner_state-val :lambda-list '(m))
(cl:defmethod planner_state-val ((m <PidPlannerStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-srv:planner_state-val is deprecated.  Use roborts_msgs-srv:planner_state instead.")
  (planner_state m))

(cl:ensure-generic-function 'max_x_speed-val :lambda-list '(m))
(cl:defmethod max_x_speed-val ((m <PidPlannerStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-srv:max_x_speed-val is deprecated.  Use roborts_msgs-srv:max_x_speed instead.")
  (max_x_speed m))

(cl:ensure-generic-function 'max_y_speed-val :lambda-list '(m))
(cl:defmethod max_y_speed-val ((m <PidPlannerStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-srv:max_y_speed-val is deprecated.  Use roborts_msgs-srv:max_y_speed instead.")
  (max_y_speed m))

(cl:ensure-generic-function 'yaw_speed-val :lambda-list '(m))
(cl:defmethod yaw_speed-val ((m <PidPlannerStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-srv:yaw_speed-val is deprecated.  Use roborts_msgs-srv:yaw_speed instead.")
  (yaw_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PidPlannerStatus-request>) ostream)
  "Serializes a message object of type '<PidPlannerStatus-request>"
  (cl:let* ((signed (cl:slot-value msg 'planner_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_x_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_y_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PidPlannerStatus-request>) istream)
  "Deserializes a message object of type '<PidPlannerStatus-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_x_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_y_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PidPlannerStatus-request>)))
  "Returns string type for a service object of type '<PidPlannerStatus-request>"
  "roborts_msgs/PidPlannerStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PidPlannerStatus-request)))
  "Returns string type for a service object of type 'PidPlannerStatus-request"
  "roborts_msgs/PidPlannerStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PidPlannerStatus-request>)))
  "Returns md5sum for a message object of type '<PidPlannerStatus-request>"
  "a371bdf98ac23518e5ce8e1cbb0f1497")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PidPlannerStatus-request)))
  "Returns md5sum for a message object of type 'PidPlannerStatus-request"
  "a371bdf98ac23518e5ce8e1cbb0f1497")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PidPlannerStatus-request>)))
  "Returns full string definition for message of type '<PidPlannerStatus-request>"
  (cl:format cl:nil "# 客户端请求时设置状态~%int32 planner_state~%float32 max_x_speed~%float32 max_y_speed~%float32 yaw_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PidPlannerStatus-request)))
  "Returns full string definition for message of type 'PidPlannerStatus-request"
  (cl:format cl:nil "# 客户端请求时设置状态~%int32 planner_state~%float32 max_x_speed~%float32 max_y_speed~%float32 yaw_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PidPlannerStatus-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PidPlannerStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PidPlannerStatus-request
    (cl:cons ':planner_state (planner_state msg))
    (cl:cons ':max_x_speed (max_x_speed msg))
    (cl:cons ':max_y_speed (max_y_speed msg))
    (cl:cons ':yaw_speed (yaw_speed msg))
))
;//! \htmlinclude PidPlannerStatus-response.msg.html

(cl:defclass <PidPlannerStatus-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass PidPlannerStatus-response (<PidPlannerStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PidPlannerStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PidPlannerStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-srv:<PidPlannerStatus-response> is deprecated: use roborts_msgs-srv:PidPlannerStatus-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PidPlannerStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-srv:result-val is deprecated.  Use roborts_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PidPlannerStatus-response>) ostream)
  "Serializes a message object of type '<PidPlannerStatus-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PidPlannerStatus-response>) istream)
  "Deserializes a message object of type '<PidPlannerStatus-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PidPlannerStatus-response>)))
  "Returns string type for a service object of type '<PidPlannerStatus-response>"
  "roborts_msgs/PidPlannerStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PidPlannerStatus-response)))
  "Returns string type for a service object of type 'PidPlannerStatus-response"
  "roborts_msgs/PidPlannerStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PidPlannerStatus-response>)))
  "Returns md5sum for a message object of type '<PidPlannerStatus-response>"
  "a371bdf98ac23518e5ce8e1cbb0f1497")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PidPlannerStatus-response)))
  "Returns md5sum for a message object of type 'PidPlannerStatus-response"
  "a371bdf98ac23518e5ce8e1cbb0f1497")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PidPlannerStatus-response>)))
  "Returns full string definition for message of type '<PidPlannerStatus-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PidPlannerStatus-response)))
  "Returns full string definition for message of type 'PidPlannerStatus-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PidPlannerStatus-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PidPlannerStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PidPlannerStatus-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PidPlannerStatus)))
  'PidPlannerStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PidPlannerStatus)))
  'PidPlannerStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PidPlannerStatus)))
  "Returns string type for a service object of type '<PidPlannerStatus>"
  "roborts_msgs/PidPlannerStatus")