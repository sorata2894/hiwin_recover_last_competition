
(cl:in-package :asdf)

(defsystem "hand_eye-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "aruco_info" :depends-on ("_package_aruco_info"))
    (:file "_package_aruco_info" :depends-on ("_package"))
    (:file "eye2base" :depends-on ("_package_eye2base"))
    (:file "_package_eye2base" :depends-on ("_package"))
    (:file "hand_eye_calibration" :depends-on ("_package_hand_eye_calibration"))
    (:file "_package_hand_eye_calibration" :depends-on ("_package"))
    (:file "save_pcd" :depends-on ("_package_save_pcd"))
    (:file "_package_save_pcd" :depends-on ("_package"))
  ))