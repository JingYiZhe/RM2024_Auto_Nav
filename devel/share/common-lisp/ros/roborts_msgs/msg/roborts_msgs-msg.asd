
(cl:in-package :asdf)

(defsystem "roborts_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GameStatus" :depends-on ("_package_GameStatus"))
    (:file "_package_GameStatus" :depends-on ("_package"))
    (:file "LocationInfo" :depends-on ("_package_LocationInfo"))
    (:file "_package_LocationInfo" :depends-on ("_package"))
    (:file "RobotStatus" :depends-on ("_package_RobotStatus"))
    (:file "_package_RobotStatus" :depends-on ("_package"))
  ))