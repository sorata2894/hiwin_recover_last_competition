; Auto-generated. Do not edit!


(cl:in-package control_node-msg)


;//! \htmlinclude robot_info.msg.html

(cl:defclass <robot_info> (roslisp-msg-protocol:ros-message)
  ((curr_pose
    :reader curr_pose
    :initarg :curr_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tool_coor
    :reader tool_coor
    :initarg :tool_coor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (base_coor
    :reader base_coor
    :initarg :base_coor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass robot_info (<robot_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_node-msg:<robot_info> is deprecated: use control_node-msg:robot_info instead.")))

(cl:ensure-generic-function 'curr_pose-val :lambda-list '(m))
(cl:defmethod curr_pose-val ((m <robot_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_node-msg:curr_pose-val is deprecated.  Use control_node-msg:curr_pose instead.")
  (curr_pose m))

(cl:ensure-generic-function 'tool_coor-val :lambda-list '(m))
(cl:defmethod tool_coor-val ((m <robot_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_node-msg:tool_coor-val is deprecated.  Use control_node-msg:tool_coor instead.")
  (tool_coor m))

(cl:ensure-generic-function 'base_coor-val :lambda-list '(m))
(cl:defmethod base_coor-val ((m <robot_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_node-msg:base_coor-val is deprecated.  Use control_node-msg:base_coor instead.")
  (base_coor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_info>) ostream)
  "Serializes a message object of type '<robot_info>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'curr_pose))))
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
   (cl:slot-value msg 'curr_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tool_coor))))
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
   (cl:slot-value msg 'tool_coor))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'base_coor))))
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
   (cl:slot-value msg 'base_coor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_info>) istream)
  "Deserializes a message object of type '<robot_info>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'curr_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'curr_pose)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tool_coor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tool_coor)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'base_coor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'base_coor)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_info>)))
  "Returns string type for a message object of type '<robot_info>"
  "control_node/robot_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_info)))
  "Returns string type for a message object of type 'robot_info"
  "control_node/robot_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_info>)))
  "Returns md5sum for a message object of type '<robot_info>"
  "495061eec8ab7a1d80f5e29c62b58a6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_info)))
  "Returns md5sum for a message object of type 'robot_info"
  "495061eec8ab7a1d80f5e29c62b58a6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_info>)))
  "Returns full string definition for message of type '<robot_info>"
  (cl:format cl:nil "float64[]  curr_pose~%float64[]  tool_coor~%float64[]  base_coor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_info)))
  "Returns full string definition for message of type 'robot_info"
  (cl:format cl:nil "float64[]  curr_pose~%float64[]  tool_coor~%float64[]  base_coor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_info>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'curr_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tool_coor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'base_coor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_info>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_info
    (cl:cons ':curr_pose (curr_pose msg))
    (cl:cons ':tool_coor (tool_coor msg))
    (cl:cons ':base_coor (base_coor msg))
))
