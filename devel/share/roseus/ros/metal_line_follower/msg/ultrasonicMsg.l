;; Auto-generated. Do not edit!


(when (boundp 'metal_line_follower::ultrasonicMsg)
  (if (not (find-package "METAL_LINE_FOLLOWER"))
    (make-package "METAL_LINE_FOLLOWER"))
  (shadow 'ultrasonicMsg (find-package "METAL_LINE_FOLLOWER")))
(unless (find-package "METAL_LINE_FOLLOWER::ULTRASONICMSG")
  (make-package "METAL_LINE_FOLLOWER::ULTRASONICMSG"))

(in-package "ROS")
;;//! \htmlinclude ultrasonicMsg.msg.html


(defclass metal_line_follower::ultrasonicMsg
  :super ros::object
  :slots (_sender _status ))

(defmethod metal_line_follower::ultrasonicMsg
  (:init
   (&key
    ((:sender __sender) "")
    ((:status __status) "")
    )
   (send-super :init)
   (setq _sender (string __sender))
   (setq _status (string __status))
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _sender
    4 (length _sender)
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get metal_line_follower::ultrasonicMsg :md5sum-) "71e49fb46532b9d06288e5c19a941590")
(setf (get metal_line_follower::ultrasonicMsg :datatype-) "metal_line_follower/ultrasonicMsg")
(setf (get metal_line_follower::ultrasonicMsg :definition-)
      "string sender
string status

")



(provide :metal_line_follower/ultrasonicMsg "71e49fb46532b9d06288e5c19a941590")


