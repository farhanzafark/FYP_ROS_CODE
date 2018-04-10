;; Auto-generated. Do not edit!


(when (boundp 'metal_line_follower::rfidMsg)
  (if (not (find-package "METAL_LINE_FOLLOWER"))
    (make-package "METAL_LINE_FOLLOWER"))
  (shadow 'rfidMsg (find-package "METAL_LINE_FOLLOWER")))
(unless (find-package "METAL_LINE_FOLLOWER::RFIDMSG")
  (make-package "METAL_LINE_FOLLOWER::RFIDMSG"))

(in-package "ROS")
;;//! \htmlinclude rfidMsg.msg.html


(defclass metal_line_follower::rfidMsg
  :super ros::object
  :slots (_sender _nodeId ))

(defmethod metal_line_follower::rfidMsg
  (:init
   (&key
    ((:sender __sender) "")
    ((:nodeId __nodeId) "")
    )
   (send-super :init)
   (setq _sender (string __sender))
   (setq _nodeId (string __nodeId))
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:nodeId
   (&optional __nodeId)
   (if __nodeId (setq _nodeId __nodeId)) _nodeId)
  (:serialization-length
   ()
   (+
    ;; string _sender
    4 (length _sender)
    ;; string _nodeId
    4 (length _nodeId)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; string _nodeId
       (write-long (length _nodeId) s) (princ _nodeId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _nodeId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nodeId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get metal_line_follower::rfidMsg :md5sum-) "683ff0ffba5ff7be443d666ab4b04ae4")
(setf (get metal_line_follower::rfidMsg :datatype-) "metal_line_follower/rfidMsg")
(setf (get metal_line_follower::rfidMsg :definition-)
      "string sender
string nodeId

")



(provide :metal_line_follower/rfidMsg "683ff0ffba5ff7be443d666ab4b04ae4")


