;; Auto-generated. Do not edit!


(when (boundp 'hand_eye::eye2base)
  (if (not (find-package "HAND_EYE"))
    (make-package "HAND_EYE"))
  (shadow 'eye2base (find-package "HAND_EYE")))
(unless (find-package "HAND_EYE::EYE2BASE")
  (make-package "HAND_EYE::EYE2BASE"))
(unless (find-package "HAND_EYE::EYE2BASEREQUEST")
  (make-package "HAND_EYE::EYE2BASEREQUEST"))
(unless (find-package "HAND_EYE::EYE2BASERESPONSE")
  (make-package "HAND_EYE::EYE2BASERESPONSE"))

(in-package "ROS")





(defclass hand_eye::eye2baseRequest
  :super ros::object
  :slots (_ini_pose ))

(defmethod hand_eye::eye2baseRequest
  (:init
   (&key
    ((:ini_pose __ini_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _ini_pose __ini_pose)
   self)
  (:ini_pose
   (&optional __ini_pose)
   (if __ini_pose (setq _ini_pose __ini_pose)) _ini_pose)
  (:serialization-length
   ()
   (+
    ;; float64[] _ini_pose
    (* 8    (length _ini_pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _ini_pose
     (write-long (length _ini_pose) s)
     (dotimes (i (length _ini_pose))
       (sys::poke (elt _ini_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _ini_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ini_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ini_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass hand_eye::eye2baseResponse
  :super ros::object
  :slots (_tar_pose ))

(defmethod hand_eye::eye2baseResponse
  (:init
   (&key
    ((:tar_pose __tar_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _tar_pose __tar_pose)
   self)
  (:tar_pose
   (&optional __tar_pose)
   (if __tar_pose (setq _tar_pose __tar_pose)) _tar_pose)
  (:serialization-length
   ()
   (+
    ;; float64[] _tar_pose
    (* 8    (length _tar_pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _tar_pose
     (write-long (length _tar_pose) s)
     (dotimes (i (length _tar_pose))
       (sys::poke (elt _tar_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _tar_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tar_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tar_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass hand_eye::eye2base
  :super ros::object
  :slots ())

(setf (get hand_eye::eye2base :md5sum-) "525ac9dec1a89bc706b1140d349a6a9a")
(setf (get hand_eye::eye2base :datatype-) "hand_eye/eye2base")
(setf (get hand_eye::eye2base :request) hand_eye::eye2baseRequest)
(setf (get hand_eye::eye2base :response) hand_eye::eye2baseResponse)

(defmethod hand_eye::eye2baseRequest
  (:response () (instance hand_eye::eye2baseResponse :init)))

(setf (get hand_eye::eye2baseRequest :md5sum-) "525ac9dec1a89bc706b1140d349a6a9a")
(setf (get hand_eye::eye2baseRequest :datatype-) "hand_eye/eye2baseRequest")
(setf (get hand_eye::eye2baseRequest :definition-)
      "float64[]   ini_pose

---

float64[]   tar_pose
")

(setf (get hand_eye::eye2baseResponse :md5sum-) "525ac9dec1a89bc706b1140d349a6a9a")
(setf (get hand_eye::eye2baseResponse :datatype-) "hand_eye/eye2baseResponse")
(setf (get hand_eye::eye2baseResponse :definition-)
      "float64[]   ini_pose

---

float64[]   tar_pose
")



(provide :hand_eye/eye2base "525ac9dec1a89bc706b1140d349a6a9a")


