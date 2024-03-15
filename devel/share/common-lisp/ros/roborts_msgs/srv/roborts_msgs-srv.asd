
(cl:in-package :asdf)

(defsystem "roborts_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PidPlannerStatus" :depends-on ("_package_PidPlannerStatus"))
    (:file "_package_PidPlannerStatus" :depends-on ("_package"))
    (:file "Relocate" :depends-on ("_package_Relocate"))
    (:file "_package_Relocate" :depends-on ("_package"))
  ))