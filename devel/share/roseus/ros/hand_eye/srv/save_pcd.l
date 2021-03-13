;; Auto-generated. Do not edit!


(when (boundp 'hand_eye::save_pcd)
  (if (not (find-package "HAND_EYE"))
    (make-package "HAND_EYE"))
  (shadow 'save_pcd (find-package "HAND_EYE")))
(unless (find-package "HAND_EYE::SAVE_PCD")
  (make-package "HAND_EYE::SAVE_PCD"))
(unless (find-package "HAND_EYE::SAVE_PCDREQUEST")
  (make-package "HAND_EYE::SAVE_PCDREQUEST"))
(unless (find-package "HAND_EYE::SAVE_PCDRESPONSE")
  (make-package "HAND_EYE::SAVE_PCDRESPONSE"))

(in-package "ROS")





(defclass hand_eye::save_pcdRequest
  :super ros::object
  :slots (_name _save_mix _curr_trans ))

(defmethod hand_eye::save_pcdRequest
  (:init
   (&key
    ((:name __name) "")
    ((:save_mix __save_mix) nil)
    ((:curr_trans __curr_trans) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _save_mix __save_mix)
   (setq _curr_trans __curr_trans)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:save_mix
   (&optional __save_mix)
   (if __save_mix (setq _save_mix __save_mix)) _save_mix)
  (:curr_trans
   (&optional __curr_trans)
   (if __curr_trans (setq _curr_trans __curr_trans)) _curr_trans)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _save_mix
    1
    ;; float64[] _curr_trans
    (* 8    (length _curr_trans)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _save_mix
       (if _save_mix (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _curr_trans
     (write-long (length _curr_trans) s)
     (dotimes (i (length _curr_trans))
       (sys::poke (elt _curr_trans i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _save_mix
     (setq _save_mix (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _curr_trans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curr_trans (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _curr_trans i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass hand_eye::save_pcdResponse
  :super ros::object
  :slots (_done ))

(defmethod hand_eye::save_pcdResponse
  (:init
   (&key
    ((:done __done) nil)
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hand_eye::save_pcd
  :super ros::object
  :slots ())

(setf (get hand_eye::save_pcd :md5sum-) "019443dee1fc0f101de6cb027a41dd75")
(setf (get hand_eye::save_pcd :datatype-) "hand_eye/save_pcd")
(setf (get hand_eye::save_pcd :request) hand_eye::save_pcdRequest)
(setf (get hand_eye::save_pcd :response) hand_eye::save_pcdResponse)

(defmethod hand_eye::save_pcdRequest
  (:response () (instance hand_eye::save_pcdResponse :init)))

(setf (get hand_eye::save_pcdRequest :md5sum-) "019443dee1fc0f101de6cb027a41dd75")
(setf (get hand_eye::save_pcdRequest :datatype-) "hand_eye/save_pcdRequest")
(setf (get hand_eye::save_pcdRequest :definition-)
      "string    name
bool      save_mix
float64[] curr_trans

---

bool  done
")

(setf (get hand_eye::save_pcdResponse :md5sum-) "019443dee1fc0f101de6cb027a41dd75")
(setf (get hand_eye::save_pcdResponse :datatype-) "hand_eye/save_pcdResponse")
(setf (get hand_eye::save_pcdResponse :definition-)
      "string    name
bool      save_mix
float64[] curr_trans

---

bool  done
")



(provide :hand_eye/save_pcd "019443dee1fc0f101de6cb027a41dd75")


