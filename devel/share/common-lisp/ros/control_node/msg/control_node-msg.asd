
(cl:in-package :asdf)

(defsystem "control_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "robot_info" :depends-on ("_package_robot_info"))
    (:file "_package_robot_info" :depends-on ("_package"))
  ))