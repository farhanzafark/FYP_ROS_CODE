; Auto-generated. Do not edit!


(cl:in-package metal_line_follower-msg)


;//! \htmlinclude rfidMsg.msg.html

(cl:defclass <rfidMsg> (roslisp-msg-protocol:ros-message)
  ((sender
    :reader sender
    :initarg :sender
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass rfidMsg (<rfidMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rfidMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rfidMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metal_line_follower-msg:<rfidMsg> is deprecated: use metal_line_follower-msg:rfidMsg instead.")))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <rfidMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:sender-val is deprecated.  Use metal_line_follower-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <rfidMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:id-val is deprecated.  Use metal_line_follower-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rfidMsg>) ostream)
  "Serializes a message object of type '<rfidMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rfidMsg>) istream)
  "Deserializes a message object of type '<rfidMsg>"
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
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rfidMsg>)))
  "Returns string type for a message object of type '<rfidMsg>"
  "metal_line_follower/rfidMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rfidMsg)))
  "Returns string type for a message object of type 'rfidMsg"
  "metal_line_follower/rfidMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rfidMsg>)))
  "Returns md5sum for a message object of type '<rfidMsg>"
  "1cb0315028760cd89d0107e03ae1d336")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rfidMsg)))
  "Returns md5sum for a message object of type 'rfidMsg"
  "1cb0315028760cd89d0107e03ae1d336")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rfidMsg>)))
  "Returns full string definition for message of type '<rfidMsg>"
  (cl:format cl:nil "string sender~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rfidMsg)))
  "Returns full string definition for message of type 'rfidMsg"
  (cl:format cl:nil "string sender~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rfidMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sender))
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rfidMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'rfidMsg
    (cl:cons ':sender (sender msg))
    (cl:cons ':id (id msg))
))
