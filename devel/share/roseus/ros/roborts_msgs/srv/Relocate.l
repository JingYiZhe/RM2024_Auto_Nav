;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::Relocate)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'Relocate (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::RELOCATE")
  (make-package "ROBORTS_MSGS::RELOCATE"))
(unless (find-package "ROBORTS_MSGS::RELOCATEREQUEST")
  (make-package "ROBORTS_MSGS::RELOCATEREQUEST"))
(unless (find-package "ROBORTS_MSGS::RELOCATERESPONSE")
  (make-package "ROBORTS_MSGS::RELOCATERESPONSE"))

(in-package "ROS")





(defclass roborts_msgs::RelocateRequest
  :super ros::object
  :slots ())

(defmethod roborts_msgs::RelocateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roborts_msgs::RelocateResponse
  :super ros::object
  :slots (_success ))

(defmethod roborts_msgs::RelocateResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roborts_msgs::Relocate
  :super ros::object
  :slots ())

(setf (get roborts_msgs::Relocate :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get roborts_msgs::Relocate :datatype-) "roborts_msgs/Relocate")
(setf (get roborts_msgs::Relocate :request) roborts_msgs::RelocateRequest)
(setf (get roborts_msgs::Relocate :response) roborts_msgs::RelocateResponse)

(defmethod roborts_msgs::RelocateRequest
  (:response () (instance roborts_msgs::RelocateResponse :init)))

(setf (get roborts_msgs::RelocateRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get roborts_msgs::RelocateRequest :datatype-) "roborts_msgs/RelocateRequest")
(setf (get roborts_msgs::RelocateRequest :definition-)
      "# Relocate.srv

---
# Service response
bool success

")

(setf (get roborts_msgs::RelocateResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get roborts_msgs::RelocateResponse :datatype-) "roborts_msgs/RelocateResponse")
(setf (get roborts_msgs::RelocateResponse :definition-)
      "# Relocate.srv

---
# Service response
bool success

")



(provide :roborts_msgs/Relocate "358e233cde0c8a8bcfea4ce193f8fc15")


