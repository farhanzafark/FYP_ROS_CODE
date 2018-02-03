; Auto-generated. Do not edit!


(cl:in-package metal_line_follower-msg)


;//! \htmlinclude proximityMsg.msg.html

(cl:defclass <proximityMsg> (roslisp-msg-protocol:ros-message)
  ((sender
    :reader sender
    :initarg :sender
    :type cl:string
    :initform "")
   (leftSensor
    :reader leftSensor
    :initarg :leftSensor
    :type cl:boolean
    :initform cl:nil)
   (centerSensor
    :reader centerSensor
    :initarg :centerSensor
    :type cl:boolean
    :initform cl:nil)
   (rightSensor
    :reader rightSensor
    :initarg :rightSensor
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass proximityMsg (<proximityMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <proximityMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'proximityMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metal_line_follower-msg:<proximityMsg> is deprecated: use metal_line_follower-msg:proximityMsg instead.")))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <proximityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:sender-val is deprecated.  Use metal_line_follower-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'leftSensor-val :lambda-list '(m))
(cl:defmethod leftSensor-val ((m <proximityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:leftSensor-val is deprecated.  Use metal_line_follower-msg:leftSensor instead.")
  (leftSensor m))

(cl:ensure-generic-function 'centerSensor-val :lambda-list '(m))
(cl:defmethod centerSensor-val ((m <proximityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:centerSensor-val is deprecated.  Use metal_line_follower-msg:centerSensor instead.")
  (centerSensor m))

(cl:ensure-generic-function 'rightSensor-val :lambda-list '(m))
(cl:defmethod rightSensor-val ((m <proximityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:rightSensor-val is deprecated.  Use metal_line_follower-msg:rightSensor instead.")
  (rightSensor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <proximityMsg>) ostream)
  "Serializes a message object of type '<proximityMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'leftSensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'centerSensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rightSensor) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <proximityMsg>) istream)
  "Deserializes a message object of type '<proximityMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sender) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sender) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'leftSensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'centerSensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rightSensor) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<proximityMsg>)))
  "Returns string type for a message object of type '<proximityMsg>"
  "metal_line_follower/proximityMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'proximityMsg)))
  "Returns string type for a message object of type 'proximityMsg"
  "metal_line_follower/proximityMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<proximityMsg>)))
  "Returns md5sum for a message object of type '<proximityMsg>"
  "af11528ee9c2394e81b2d19dd1d4bc01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'proximityMsg)))
  "Returns md5sum for a message object of type 'proximityMsg"
  "af11528ee9c2394e81b2d19dd1d4bc01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<proximityMsg>)))
  "Returns full string definition for message of type '<proximityMsg>"
  (cl:format cl:nil "string sender~%bool leftSensor~%bool centerSensor~%bool rightSensor~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'proximityMsg)))
  "Returns full string definition for message of type 'proximityMsg"
  (cl:format cl:nil "string sender~%bool leftSensor~%bool centerSensor~%bool rightSensor~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <proximityMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sender))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <proximityMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'proximityMsg
    (cl:cons ':sender (sender msg))
    (cl:cons ':leftSensor (leftSensor msg))
    (cl:cons ':centerSensor (centerSensor msg))
    (cl:cons ':rightSensor (rightSensor msg))
))
