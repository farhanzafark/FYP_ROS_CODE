; Auto-generated. Do not edit!


(cl:in-package metal_line_follower-msg)


;//! \htmlinclude graphMsg.msg.html

(cl:defclass <graphMsg> (roslisp-msg-protocol:ros-message)
  ((sender
    :reader sender
    :initarg :sender
    :type cl:string
    :initform "")
   (shortestPath
    :reader shortestPath
    :initarg :shortestPath
    :type cl:string
    :initform ""))
)

(cl:defclass graphMsg (<graphMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <graphMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'graphMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metal_line_follower-msg:<graphMsg> is deprecated: use metal_line_follower-msg:graphMsg instead.")))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <graphMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:sender-val is deprecated.  Use metal_line_follower-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'shortestPath-val :lambda-list '(m))
(cl:defmethod shortestPath-val ((m <graphMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:shortestPath-val is deprecated.  Use metal_line_follower-msg:shortestPath instead.")
  (shortestPath m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <graphMsg>) ostream)
  "Serializes a message object of type '<graphMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shortestPath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shortestPath))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <graphMsg>) istream)
  "Deserializes a message object of type '<graphMsg>"
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
      (cl:setf (cl:slot-value msg 'shortestPath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shortestPath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<graphMsg>)))
  "Returns string type for a message object of type '<graphMsg>"
  "metal_line_follower/graphMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'graphMsg)))
  "Returns string type for a message object of type 'graphMsg"
  "metal_line_follower/graphMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<graphMsg>)))
  "Returns md5sum for a message object of type '<graphMsg>"
  "e3a1b9063ec7f8e5e0bd46e697b1e154")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'graphMsg)))
  "Returns md5sum for a message object of type 'graphMsg"
  "e3a1b9063ec7f8e5e0bd46e697b1e154")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<graphMsg>)))
  "Returns full string definition for message of type '<graphMsg>"
  (cl:format cl:nil "string sender~%string shortestPath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'graphMsg)))
  "Returns full string definition for message of type 'graphMsg"
  (cl:format cl:nil "string sender~%string shortestPath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <graphMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sender))
     4 (cl:length (cl:slot-value msg 'shortestPath))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <graphMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'graphMsg
    (cl:cons ':sender (sender msg))
    (cl:cons ':shortestPath (shortestPath msg))
))
