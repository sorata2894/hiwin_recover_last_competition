; Auto-generated. Do not edit!


(cl:in-package hand_eye-srv)


;//! \htmlinclude save_pcd-request.msg.html

(cl:defclass <save_pcd-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (save_mix
    :reader save_mix
    :initarg :save_mix
    :type cl:boolean
    :initform cl:nil)
   (curr_trans
    :reader curr_trans
    :initarg :curr_trans
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass save_pcd-request (<save_pcd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_pcd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_pcd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_eye-srv:<save_pcd-request> is deprecated: use hand_eye-srv:save_pcd-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <save_pcd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_eye-srv:name-val is deprecated.  Use hand_eye-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'save_mix-val :lambda-list '(m))
(cl:defmethod save_mix-val ((m <save_pcd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_eye-srv:save_mix-val is deprecated.  Use hand_eye-srv:save_mix instead.")
  (save_mix m))

(cl:ensure-generic-function 'curr_trans-val :lambda-list '(m))
(cl:defmethod curr_trans-val ((m <save_pcd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_eye-srv:curr_trans-val is deprecated.  Use hand_eye-srv:curr_trans instead.")
  (curr_trans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_pcd-request>) ostream)
  "Serializes a message object of type '<save_pcd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'save_mix) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'curr_trans))))
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
   (cl:slot-value msg 'curr_trans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_pcd-request>) istream)
  "Deserializes a message object of type '<save_pcd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'save_mix) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'curr_trans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'curr_trans)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_pcd-request>)))
  "Returns string type for a service object of type '<save_pcd-request>"
  "hand_eye/save_pcdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_pcd-request)))
  "Returns string type for a service object of type 'save_pcd-request"
  "hand_eye/save_pcdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_pcd-request>)))
  "Returns md5sum for a message object of type '<save_pcd-request>"
  "019443dee1fc0f101de6cb027a41dd75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_pcd-request)))
  "Returns md5sum for a message object of type 'save_pcd-request"
  "019443dee1fc0f101de6cb027a41dd75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_pcd-request>)))
  "Returns full string definition for message of type '<save_pcd-request>"
  (cl:format cl:nil "string    name~%bool      save_mix~%float64[] curr_trans~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_pcd-request)))
  "Returns full string definition for message of type 'save_pcd-request"
  (cl:format cl:nil "string    name~%bool      save_mix~%float64[] curr_trans~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_pcd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'curr_trans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_pcd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'save_pcd-request
    (cl:cons ':name (name msg))
    (cl:cons ':save_mix (save_mix msg))
    (cl:cons ':curr_trans (curr_trans msg))
))
;//! \htmlinclude save_pcd-response.msg.html

(cl:defclass <save_pcd-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass save_pcd-response (<save_pcd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_pcd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_pcd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_eye-srv:<save_pcd-response> is deprecated: use hand_eye-srv:save_pcd-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <save_pcd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_eye-srv:done-val is deprecated.  Use hand_eye-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_pcd-response>) ostream)
  "Serializes a message object of type '<save_pcd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_pcd-response>) istream)
  "Deserializes a message object of type '<save_pcd-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_pcd-response>)))
  "Returns string type for a service object of type '<save_pcd-response>"
  "hand_eye/save_pcdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_pcd-response)))
  "Returns string type for a service object of type 'save_pcd-response"
  "hand_eye/save_pcdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_pcd-response>)))
  "Returns md5sum for a message object of type '<save_pcd-response>"
  "019443dee1fc0f101de6cb027a41dd75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_pcd-response)))
  "Returns md5sum for a message object of type 'save_pcd-response"
  "019443dee1fc0f101de6cb027a41dd75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_pcd-response>)))
  "Returns full string definition for message of type '<save_pcd-response>"
  (cl:format cl:nil "~%bool  done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_pcd-response)))
  "Returns full string definition for message of type 'save_pcd-response"
  (cl:format cl:nil "~%bool  done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_pcd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_pcd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'save_pcd-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'save_pcd)))
  'save_pcd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'save_pcd)))
  'save_pcd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_pcd)))
  "Returns string type for a service object of type '<save_pcd>"
  "hand_eye/save_pcd")