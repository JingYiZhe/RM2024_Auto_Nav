; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude LocationInfo.msg.html

(cl:defclass <LocationInfo> (roslisp-msg-protocol:ros-message)
  ((if_relocation
    :reader if_relocation
    :initarg :if_relocation
    :type cl:boolean
    :initform cl:nil)
   (point_cloud_quantity
    :reader point_cloud_quantity
    :initarg :point_cloud_quantity
    :type cl:float
    :initform 0.0)
   (tranDist
    :reader tranDist
    :initarg :tranDist
    :type cl:float
    :initform 0.0)
   (angleDist
    :reader angleDist
    :initarg :angleDist
    :type cl:float
    :initform 0.0)
   (angle_apeed
    :reader angle_apeed
    :initarg :angle_apeed
    :type cl:float
    :initform 0.0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (if_match_success
    :reader if_match_success
    :initarg :if_match_success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LocationInfo (<LocationInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<LocationInfo> is deprecated: use roborts_msgs-msg:LocationInfo instead.")))

(cl:ensure-generic-function 'if_relocation-val :lambda-list '(m))
(cl:defmethod if_relocation-val ((m <LocationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:if_relocation-val is deprecated.  Use roborts_msgs-msg:if_relocation instead.")
  (if_relocation m))

(cl:ensure-generic-function 'point_cloud_quantity-val :lambda-list '(m))
(cl:defmethod point_cloud_quantity-val ((m <LocationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:point_cloud_quantity-val is deprecated.  Use roborts_msgs-msg:point_cloud_quantity instead.")
  (point_cloud_quantity m))

(cl:ensure-generic-function 'tranDist-val :lambda-list '(m))
(cl:defmethod tranDist-val ((m <LocationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:tranDist-val is deprecated.  Use roborts_msgs-msg:tranDist instead.")
  (tranDist m))

(cl:ensure-generic-function 'angleDist-val :lambda-list '(m))
(cl:defmethod angleDist-val ((m <LocationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:angleDist-val is deprecated.  Use roborts_msgs-msg:angleDist instead.")
  (angleDist m))

(cl:ensure-generic-function 'angle_apeed-val :lambda-list '(m))
(cl:defmethod angle_apeed-val ((m <LocationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:angle_apeed-val is deprecated.  Use roborts_msgs-msg:angle_apeed instead.")
  (angle_apeed m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <LocationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:score-val is deprecated.  Use roborts_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'if_match_success-val :lambda-list '(m))
(cl:defmethod if_match_success-val ((m <LocationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:if_match_success-val is deprecated.  Use roborts_msgs-msg:if_match_success instead.")
  (if_match_success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationInfo>) ostream)
  "Serializes a message object of type '<LocationInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'if_relocation) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'point_cloud_quantity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tranDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angleDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle_apeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'if_match_success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationInfo>) istream)
  "Deserializes a message object of type '<LocationInfo>"
    (cl:setf (cl:slot-value msg 'if_relocation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'point_cloud_quantity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tranDist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angleDist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_apeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'if_match_success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationInfo>)))
  "Returns string type for a message object of type '<LocationInfo>"
  "roborts_msgs/LocationInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationInfo)))
  "Returns string type for a message object of type 'LocationInfo"
  "roborts_msgs/LocationInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationInfo>)))
  "Returns md5sum for a message object of type '<LocationInfo>"
  "4480d6179e334a6455057a4ec084d3ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationInfo)))
  "Returns md5sum for a message object of type 'LocationInfo"
  "4480d6179e334a6455057a4ec084d3ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationInfo>)))
  "Returns full string definition for message of type '<LocationInfo>"
  (cl:format cl:nil "bool if_relocation~%float64 point_cloud_quantity~%float64 tranDist~%float64 angleDist~%float64 angle_apeed~%float64 score~%bool if_match_success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationInfo)))
  "Returns full string definition for message of type 'LocationInfo"
  (cl:format cl:nil "bool if_relocation~%float64 point_cloud_quantity~%float64 tranDist~%float64 angleDist~%float64 angle_apeed~%float64 score~%bool if_match_success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationInfo>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationInfo
    (cl:cons ':if_relocation (if_relocation msg))
    (cl:cons ':point_cloud_quantity (point_cloud_quantity msg))
    (cl:cons ':tranDist (tranDist msg))
    (cl:cons ':angleDist (angleDist msg))
    (cl:cons ':angle_apeed (angle_apeed msg))
    (cl:cons ':score (score msg))
    (cl:cons ':if_match_success (if_match_success msg))
))
