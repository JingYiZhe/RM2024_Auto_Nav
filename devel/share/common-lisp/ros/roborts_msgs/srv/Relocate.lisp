; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-srv)


;//! \htmlinclude Relocate-request.msg.html

(cl:defclass <Relocate-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Relocate-request (<Relocate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Relocate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Relocate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-srv:<Relocate-request> is deprecated: use roborts_msgs-srv:Relocate-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Relocate-request>) ostream)
  "Serializes a message object of type '<Relocate-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Relocate-request>) istream)
  "Deserializes a message object of type '<Relocate-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Relocate-request>)))
  "Returns string type for a service object of type '<Relocate-request>"
  "roborts_msgs/RelocateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Relocate-request)))
  "Returns string type for a service object of type 'Relocate-request"
  "roborts_msgs/RelocateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Relocate-request>)))
  "Returns md5sum for a message object of type '<Relocate-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Relocate-request)))
  "Returns md5sum for a message object of type 'Relocate-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Relocate-request>)))
  "Returns full string definition for message of type '<Relocate-request>"
  (cl:format cl:nil "# Relocate.srv~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Relocate-request)))
  "Returns full string definition for message of type 'Relocate-request"
  (cl:format cl:nil "# Relocate.srv~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Relocate-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Relocate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Relocate-request
))
;//! \htmlinclude Relocate-response.msg.html

(cl:defclass <Relocate-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Relocate-response (<Relocate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Relocate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Relocate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-srv:<Relocate-response> is deprecated: use roborts_msgs-srv:Relocate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Relocate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-srv:success-val is deprecated.  Use roborts_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Relocate-response>) ostream)
  "Serializes a message object of type '<Relocate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Relocate-response>) istream)
  "Deserializes a message object of type '<Relocate-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Relocate-response>)))
  "Returns string type for a service object of type '<Relocate-response>"
  "roborts_msgs/RelocateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Relocate-response)))
  "Returns string type for a service object of type 'Relocate-response"
  "roborts_msgs/RelocateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Relocate-response>)))
  "Returns md5sum for a message object of type '<Relocate-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Relocate-response)))
  "Returns md5sum for a message object of type 'Relocate-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Relocate-response>)))
  "Returns full string definition for message of type '<Relocate-response>"
  (cl:format cl:nil "# Service response~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Relocate-response)))
  "Returns full string definition for message of type 'Relocate-response"
  (cl:format cl:nil "# Service response~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Relocate-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Relocate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Relocate-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Relocate)))
  'Relocate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Relocate)))
  'Relocate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Relocate)))
  "Returns string type for a service object of type '<Relocate>"
  "roborts_msgs/Relocate")