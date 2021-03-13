; Auto-generated. Do not edit!


(cl:in-package hand_eye-srv)


;//! \htmlinclude eye2base-request.msg.html

(cl:defclass <eye2base-request> (roslisp-msg-protocol:ros-message)
  ((ini_pose
    :reader ini_pose
    :initarg :ini_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass eye2base-request (<eye2base-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <eye2base-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'eye2base-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_eye-srv:<eye2base-request> is deprecated: use hand_eye-srv:eye2base-request instead.")))

(cl:ensure-generic-function 'ini_pose-val :lambda-list '(m))
(cl:defmethod ini_pose-val ((m <eye2base-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_eye-srv:ini_pose-val is deprecated.  Use hand_eye-srv:ini_pose instead.")
  (ini_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <eye2base-request>) ostream)
  "Serializes a message object of type '<eye2base-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ini_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'ini_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <eye2base-request>) istream)
  "Deserializes a message object of type '<eye2base-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ini_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ini_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<eye2base-request>)))
  "Returns string type for a service object of type '<eye2base-request>"
  "hand_eye/eye2baseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'eye2base-request)))
  "Returns string type for a service object of type 'eye2base-request"
  "hand_eye/eye2baseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<eye2base-request>)))
  "Returns md5sum for a message object of type '<eye2base-request>"
  "525ac9dec1a89bc706b1140d349a6a9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'eye2base-request)))
  "Returns md5sum for a message object of type 'eye2base-request"
  "525ac9dec1a89bc706b1140d349a6a9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<eye2base-request>)))
  "Returns full string definition for message of type '<eye2base-request>"
  (cl:format cl:nil "float64[]   ini_pose~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'eye2base-request)))
  "Returns full string definition for message of type 'eye2base-request"
  (cl:format cl:nil "float64[]   ini_pose~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <eye2base-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ini_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <eye2base-request>))
  "Converts a ROS message object to a list"
  (cl:list 'eye2base-request
    (cl:cons ':ini_pose (ini_pose msg))
))
;//! \htmlinclude eye2base-response.msg.html

(cl:defclass <eye2base-response> (roslisp-msg-protocol:ros-message)
  ((tar_pose
    :reader tar_pose
    :initarg :tar_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass eye2base-response (<eye2base-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <eye2base-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'eye2base-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_eye-srv:<eye2base-response> is deprecated: use hand_eye-srv:eye2base-response instead.")))

(cl:ensure-generic-function 'tar_pose-val :lambda-list '(m))
(cl:defmethod tar_pose-val ((m <eye2base-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_eye-srv:tar_pose-val is deprecated.  Use hand_eye-srv:tar_pose instead.")
  (tar_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <eye2base-response>) ostream)
  "Serializes a message object of type '<eye2base-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tar_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'tar_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <eye2base-response>) istream)
  "Deserializes a message object of type '<eye2base-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tar_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tar_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<eye2base-response>)))
  "Returns string type for a service object of type '<eye2base-response>"
  "hand_eye/eye2baseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'eye2base-response)))
  "Returns string type for a service object of type 'eye2base-response"
  "hand_eye/eye2baseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<eye2base-response>)))
  "Returns md5sum for a message object of type '<eye2base-response>"
  "525ac9dec1a89bc706b1140d349a6a9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'eye2base-response)))
  "Returns md5sum for a message object of type 'eye2base-response"
  "525ac9dec1a89bc706b1140d349a6a9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<eye2base-response>)))
  "Returns full string definition for message of type '<eye2base-response>"
  (cl:format cl:nil "~%float64[]   tar_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'eye2base-response)))
  "Returns full string definition for message of type 'eye2base-response"
  (cl:format cl:nil "~%float64[]   tar_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <eye2base-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tar_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <eye2base-response>))
  "Converts a ROS message object to a list"
  (cl:list 'eye2base-response
    (cl:cons ':tar_pose (tar_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'eye2base)))
  'eye2base-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'eye2base)))
  'eye2base-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'eye2base)))
  "Returns string type for a service object of type '<eye2base>"
  "hand_eye/eye2base")