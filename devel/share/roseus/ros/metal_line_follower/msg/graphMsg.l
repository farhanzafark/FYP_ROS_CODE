;; Auto-generated. Do not edit!


(when (boundp 'metal_line_follower::graphMsg)
  (if (not (find-package "METAL_LINE_FOLLOWER"))
    (make-package "METAL_LINE_FOLLOWER"))
  (shadow 'graphMsg (find-package "METAL_LINE_FOLLOWER")))
(unless (find-package "METAL_LINE_FOLLOWER::GRAPHMSG")
  (make-package "METAL_LINE_FOLLOWER::GRAPHMSG"))

(in-package "ROS")
;;//! \htmlinclude graphMsg.msg.html


(defclass metal_line_follower::graphMsg
  :super ros::object
  :slots (_sender _shortestPath ))

(defmethod metal_line_follower::graphMsg
  (:init
   (&key
    ((:sender __sender) "")
    ((:shortestPath __shortestPath) "")
    )
   (send-super :init)
   (setq _sender (string __sender))
   (setq _shortestPath (string __shortestPath))
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:shortestPath
   (&optional __shortestPath)
   (if __shortestPath (setq _shortestPath __shortestPath)) _shortestPath)
  (:serialization-length
   ()
   (+
    ;; string _sender
    4 (length _sender)
    ;; string _shortestPath
    4 (length _shortestPath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; string _shortestPath
       (write-long (length _shortestPath) s) (princ _shortestPath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _shortestPath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shortestPath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get metal_line_follower::graphMsg :md5sum-) "e3a1b9063ec7f8e5e0bd46e697b1e154")
(setf (get metal_line_follower::graphMsg :datatype-) "metal_line_follower/graphMsg")
(setf (get metal_line_follower::graphMsg :definition-)
      "string sender
string shortestPath

")



(provide :metal_line_follower/graphMsg "e3a1b9063ec7f8e5e0bd46e697b1e154")


