; Auto-generated. Do not edit!


(cl:in-package metal_line_follower-msg)


;//! \htmlinclude myCustom.msg.html

(cl:defclass <myCustom> (roslisp-msg-protocol:ros-message)
  ((senderType
    :reader senderType
    :initarg :senderType
    :type cl:string
    :initform "")
   (msgData
    :reader msgData
    :initarg :msgData
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass myCustom (<myCustom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <myCustom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'myCustom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metal_line_follower-msg:<myCustom> is deprecated: use metal_line_follower-msg:myCustom instead.")))

(cl:ensure-generic-function 'senderType-val :lambda-list '(m))
(cl:defmethod senderType-val ((m <myCustom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:senderType-val is deprecated.  Use metal_line_follower-msg:senderType instead.")
  (senderType m))

(cl:ensure-generic-function 'msgData-val :lambda-list '(m))
(cl:defmethod msgData-val ((m <myCustom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:msgData-val is deprecated.  Use metal_line_follower-msg:msgData instead.")
  (msgData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <myCustom>) ostream)
  "Serializes a message object of type '<myCustom>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'senderType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'senderType))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'msgData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'msgData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <myCustom>) istream)
  "Deserializes a message object of type '<myCustom>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'senderType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'senderType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'msgData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'msgData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<myCustom>)))
  "Returns string type for a message object of type '<myCustom>"
  "metal_line_follower/myCustom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myCustom)))
  "Returns string type for a message object of type 'myCustom"
  "metal_line_follower/myCustom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<myCustom>)))
  "Returns md5sum for a message object of type '<myCustom>"
  "ace9042348799f75d0457e17a86b80b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'myCustom)))
  "Returns md5sum for a message object of type 'myCustom"
  "ace9042348799f75d0457e17a86b80b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<myCustom>)))
  "Returns full string definition for message of type '<myCustom>"
  (cl:format cl:nil "string senderType~%int32[] msgData~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'myCustom)))
  "Returns full string definition for message of type 'myCustom"
  (cl:format cl:nil "string senderType~%int32[] msgData~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <myCustom>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'senderType))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'msgData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <myCustom>))
  "Converts a ROS message object to a list"
  (cl:list 'myCustom
    (cl:cons ':senderType (senderType msg))
    (cl:cons ':msgData (msgData msg))
))
