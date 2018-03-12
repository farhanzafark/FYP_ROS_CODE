;; Auto-generated. Do not edit!


(when (boundp 'metal_line_follower::beginOpMsg)
  (if (not (find-package "METAL_LINE_FOLLOWER"))
    (make-package "METAL_LINE_FOLLOWER"))
  (shadow 'beginOpMsg (find-package "METAL_LINE_FOLLOWER")))
(unless (find-package "METAL_LINE_FOLLOWER::BEGINOPMSG")
  (make-package "METAL_LINE_FOLLOWER::BEGINOPMSG"))

(in-package "ROS")
;;//! \htmlinclude beginOpMsg.msg.html


(defclass metal_line_follower::beginOpMsg
  :super ros::object
  :slots (_enableOperation ))

(defmethod metal_line_follower::beginOpMsg
  (:init
   (&key
    ((:enableOperation __enableOperation) nil)
    )
   (send-super :init)
   (setq _enableOperation __enableOperation)
   self)
  (:enableOperation
   (&optional __enableOperation)
   (if __enableOperation (setq _enableOperation __enableOperation)) _enableOperation)
  (:serialization-length
   ()
   (+
    ;; bool _enableOperation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enableOperation
       (if _enableOperation (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enableOperation
     (setq _enableOperation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get metal_line_follower::beginOpMsg :md5sum-) "71ee0ed5e8ee97a464b9e21ee3b05a3e")
(setf (get metal_line_follower::beginOpMsg :datatype-) "metal_line_follower/beginOpMsg")
(setf (get metal_line_follower::beginOpMsg :definition-)
      "bool enableOperation

")



(provide :metal_line_follower/beginOpMsg "71ee0ed5e8ee97a464b9e21ee3b05a3e")


