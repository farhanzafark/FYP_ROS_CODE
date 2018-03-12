; Auto-generated. Do not edit!


(cl:in-package metal_line_follower-msg)


;//! \htmlinclude beginOpMsg.msg.html

(cl:defclass <beginOpMsg> (roslisp-msg-protocol:ros-message)
  ((enableOperation
    :reader enableOperation
    :initarg :enableOperation
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass beginOpMsg (<beginOpMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <beginOpMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'beginOpMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metal_line_follower-msg:<beginOpMsg> is deprecated: use metal_line_follower-msg:beginOpMsg instead.")))

(cl:ensure-generic-function 'enableOperation-val :lambda-list '(m))
(cl:defmethod enableOperation-val ((m <beginOpMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metal_line_follower-msg:enableOperation-val is deprecated.  Use metal_line_follower-msg:enableOperation instead.")
  (enableOperation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <beginOpMsg>) ostream)
  "Serializes a message object of type '<beginOpMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableOperation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <beginOpMsg>) istream)
  "Deserializes a message object of type '<beginOpMsg>"
    (cl:setf (cl:slot-value msg 'enableOperation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<beginOpMsg>)))
  "Returns string type for a message object of type '<beginOpMsg>"
  "metal_line_follower/beginOpMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'beginOpMsg)))
  "Returns string type for a message object of type 'beginOpMsg"
  "metal_line_follower/beginOpMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<beginOpMsg>)))
  "Returns md5sum for a message object of type '<beginOpMsg>"
  "71ee0ed5e8ee97a464b9e21ee3b05a3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'beginOpMsg)))
  "Returns md5sum for a message object of type 'beginOpMsg"
  "71ee0ed5e8ee97a464b9e21ee3b05a3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<beginOpMsg>)))
  "Returns full string definition for message of type '<beginOpMsg>"
  (cl:format cl:nil "bool enableOperation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'beginOpMsg)))
  "Returns full string definition for message of type 'beginOpMsg"
  (cl:format cl:nil "bool enableOperation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <beginOpMsg>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <beginOpMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'beginOpMsg
    (cl:cons ':enableOperation (enableOperation msg))
))
