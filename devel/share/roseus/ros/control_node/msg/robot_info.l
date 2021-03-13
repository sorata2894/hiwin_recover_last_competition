;; Auto-generated. Do not edit!


(when (boundp 'control_node::robot_info)
  (if (not (find-package "CONTROL_NODE"))
    (make-package "CONTROL_NODE"))
  (shadow 'robot_info (find-package "CONTROL_NODE")))
(unless (find-package "CONTROL_NODE::ROBOT_INFO")
  (make-package "CONTROL_NODE::ROBOT_INFO"))

(in-package "ROS")
;;//! \htmlinclude robot_info.msg.html


(defclass control_node::robot_info
  :super ros::object
  :slots (_curr_pose _tool_coor _base_coor ))

(defmethod control_node::robot_info
  (:init
   (&key
    ((:curr_pose __curr_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tool_coor __tool_coor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:base_coor __base_coor) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _curr_pose __curr_pose)
   (setq _tool_coor __tool_coor)
   (setq _base_coor __base_coor)
   self)
  (:curr_pose
   (&optional __curr_pose)
   (if __curr_pose (setq _curr_pose __curr_pose)) _curr_pose)
  (:tool_coor
   (&optional __tool_coor)
   (if __tool_coor (setq _tool_coor __tool_coor)) _tool_coor)
  (:base_coor
   (&optional __base_coor)
   (if __base_coor (setq _base_coor __base_coor)) _base_coor)
  (:serialization-length
   ()
   (+
    ;; float64[] _curr_pose
    (* 8    (length _curr_pose)) 4
    ;; float64[] _tool_coor
    (* 8    (length _tool_coor)) 4
    ;; float64[] _base_coor
    (* 8    (length _base_coor)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _curr_pose
     (write-long (length _curr_pose) s)
     (dotimes (i (length _curr_pose))
       (sys::poke (elt _curr_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tool_coor
     (write-long (length _tool_coor) s)
     (dotimes (i (length _tool_coor))
       (sys::poke (elt _tool_coor i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _base_coor
     (write-long (length _base_coor) s)
     (dotimes (i (length _base_coor))
       (sys::poke (elt _base_coor i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _curr_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curr_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _curr_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tool_coor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool_coor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tool_coor i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _base_coor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _base_coor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _base_coor i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get control_node::robot_info :md5sum-) "495061eec8ab7a1d80f5e29c62b58a6e")
(setf (get control_node::robot_info :datatype-) "control_node/robot_info")
(setf (get control_node::robot_info :definition-)
      "float64[]  curr_pose
float64[]  tool_coor
float64[]  base_coor
")



(provide :control_node/robot_info "495061eec8ab7a1d80f5e29c62b58a6e")


