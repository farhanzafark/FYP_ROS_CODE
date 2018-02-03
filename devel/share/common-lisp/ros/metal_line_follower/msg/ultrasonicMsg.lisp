; Auto-generated. Do not edit!


(cl:in-package metal_line_follower-msg)


;//! \htmlinclude ultrasonicMsg.msg.html

(cl:defclass <ultrasonicMsg> (roslisp-msg-protocol:ros-message)
  ((sender
    :reader sender
    :initarg :sender
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass ultrasonicMsg (<ultrasonicMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasonicMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasonicMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metal_line_follower-msg:<ultrasonicMsg> is deprecated: use metal_line_follower-msg:ultrasonicMsg instead.")))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <ultrasonicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:sender-val is deprecated.  Use metal_line_follower-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ultrasonicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:status-val is deprecated.  Use metal_line_follower-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasonicMsg>) ostream)
  "Serializes a message object of type '<ultrasonicMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasonicMsg>) istream)
  "Deserializes a message object of type '<ultrasonicMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sender) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sender) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasonicMsg>)))
  "Returns string type for a message object of type '<ultrasonicMsg>"
  "metal_line_follower/ultrasonicMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasonicMsg)))
  "Returns string type for a message object of type 'ultrasonicMsg"
  "metal_line_follower/ultrasonicMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasonicMsg>)))
  "Returns md5sum for a message object of type '<ultrasonicMsg>"
  "71e49fb46532b9d06288e5c19a941590")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasonicMsg)))
  "Returns md5sum for a message object of type 'ultrasonicMsg"
  "71e49fb46532b9d06288e5c19a941590")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasonicMsg>)))
  "Returns full string definition for message of type '<ultrasonicMsg>"
  (cl:format cl:nil "string sender~%string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasonicMsg)))
  "Returns full string definition for message of type 'ultrasonicMsg"
  (cl:format cl:nil "string sender~%string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasonicMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sender))
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasonicMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasonicMsg
    (cl:cons ':sender (sender msg))
    (cl:cons ':status (status msg))
))
