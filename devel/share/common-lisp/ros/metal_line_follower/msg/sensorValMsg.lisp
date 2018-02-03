; Auto-generated. Do not edit!


(cl:in-package metal_line_follower-msg)


;//! \htmlinclude sensorValMsg.msg.html

(cl:defclass <sensorValMsg> (roslisp-msg-protocol:ros-message)
  ((sender
    :reader sender
    :initarg :sender
    :type cl:string
    :initform "")
   (centerSensorIn
    :reader centerSensorIn
    :initarg :centerSensorIn
    :type cl:boolean
    :initform cl:nil)
   (leftSensorIn
    :reader leftSensorIn
    :initarg :leftSensorIn
    :type cl:boolean
    :initform cl:nil)
   (rightSensorIn
    :reader rightSensorIn
    :initarg :rightSensorIn
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass sensorValMsg (<sensorValMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensorValMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensorValMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metal_line_follower-msg:<sensorValMsg> is deprecated: use metal_line_follower-msg:sensorValMsg instead.")))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <sensorValMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:sender-val is deprecated.  Use metal_line_follower-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'centerSensorIn-val :lambda-list '(m))
(cl:defmethod centerSensorIn-val ((m <sensorValMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:centerSensorIn-val is deprecated.  Use metal_line_follower-msg:centerSensorIn instead.")
  (centerSensorIn m))

(cl:ensure-generic-function 'leftSensorIn-val :lambda-list '(m))
(cl:defmethod leftSensorIn-val ((m <sensorValMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:leftSensorIn-val is deprecated.  Use metal_line_follower-msg:leftSensorIn instead.")
  (leftSensorIn m))

(cl:ensure-generic-function 'rightSensorIn-val :lambda-list '(m))
(cl:defmethod rightSensorIn-val ((m <sensorValMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:rightSensorIn-val is deprecated.  Use metal_line_follower-msg:rightSensorIn instead.")
  (rightSensorIn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensorValMsg>) ostream)
  "Serializes a message object of type '<sensorValMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'centerSensorIn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'leftSensorIn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rightSensorIn) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensorValMsg>) istream)
  "Deserializes a message object of type '<sensorValMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sender) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sender) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'centerSensorIn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'leftSensorIn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rightSensorIn) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensorValMsg>)))
  "Returns string type for a message object of type '<sensorValMsg>"
  "metal_line_follower/sensorValMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensorValMsg)))
  "Returns string type for a message object of type 'sensorValMsg"
  "metal_line_follower/sensorValMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensorValMsg>)))
  "Returns md5sum for a message object of type '<sensorValMsg>"
  "2ea5d8411b8bc50422659e11921c9f65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensorValMsg)))
  "Returns md5sum for a message object of type 'sensorValMsg"
  "2ea5d8411b8bc50422659e11921c9f65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensorValMsg>)))
  "Returns full string definition for message of type '<sensorValMsg>"
  (cl:format cl:nil "string sender~%bool centerSensorIn~%bool leftSensorIn~%bool rightSensorIn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensorValMsg)))
  "Returns full string definition for message of type 'sensorValMsg"
  (cl:format cl:nil "string sender~%bool centerSensorIn~%bool leftSensorIn~%bool rightSensorIn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensorValMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sender))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensorValMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'sensorValMsg
    (cl:cons ':sender (sender msg))
    (cl:cons ':centerSensorIn (centerSensorIn msg))
    (cl:cons ':leftSensorIn (leftSensorIn msg))
    (cl:cons ':rightSensorIn (rightSensorIn msg))
))
