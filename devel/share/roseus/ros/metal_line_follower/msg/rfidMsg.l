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
  :slots (_sender _id ))

(defmethod metal_line_follower::rfidMsg
  (:init
   (&key
    ((:sender __sender) "")
    ((:id __id) "")
    )
   (send-super :init)
   (setq _sender (string __sender))
   (setq _id (string __id))
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _sender
    4 (length _sender)
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get metal_line_follower::rfidMsg :md5sum-) "1cb0315028760cd89d0107e03ae1d336")
(setf (get metal_line_follower::rfidMsg :datatype-) "metal_line_follower/rfidMsg")
(setf (get metal_line_follower::rfidMsg :definition-)
      "string sender
string id

")



(provide :metal_line_follower/rfidMsg "1cb0315028760cd89d0107e03ae1d336")


