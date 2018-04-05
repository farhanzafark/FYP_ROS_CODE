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
  :slots (_sender _shortestPath _enableFlag _xCoordinates _yCoordinates _directions ))

(defmethod metal_line_follower::graphMsg
  (:init
   (&key
    ((:sender __sender) "")
    ((:shortestPath __shortestPath) "")
    ((:enableFlag __enableFlag) nil)
    ((:xCoordinates __xCoordinates) "")
    ((:yCoordinates __yCoordinates) "")
    ((:directions __directions) "")
    )
   (send-super :init)
   (setq _sender (string __sender))
   (setq _shortestPath (string __shortestPath))
   (setq _enableFlag __enableFlag)
   (setq _xCoordinates (string __xCoordinates))
   (setq _yCoordinates (string __yCoordinates))
   (setq _directions (string __directions))
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:shortestPath
   (&optional __shortestPath)
   (if __shortestPath (setq _shortestPath __shortestPath)) _shortestPath)
  (:enableFlag
   (&optional __enableFlag)
   (if __enableFlag (setq _enableFlag __enableFlag)) _enableFlag)
  (:xCoordinates
   (&optional __xCoordinates)
   (if __xCoordinates (setq _xCoordinates __xCoordinates)) _xCoordinates)
  (:yCoordinates
   (&optional __yCoordinates)
   (if __yCoordinates (setq _yCoordinates __yCoordinates)) _yCoordinates)
  (:directions
   (&optional __directions)
   (if __directions (setq _directions __directions)) _directions)
  (:serialization-length
   ()
   (+
    ;; string _sender
    4 (length _sender)
    ;; string _shortestPath
    4 (length _shortestPath)
    ;; bool _enableFlag
    1
    ;; string _xCoordinates
    4 (length _xCoordinates)
    ;; string _yCoordinates
    4 (length _yCoordinates)
    ;; string _directions
    4 (length _directions)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; string _shortestPath
       (write-long (length _shortestPath) s) (princ _shortestPath s)
     ;; bool _enableFlag
       (if _enableFlag (write-byte -1 s) (write-byte 0 s))
     ;; string _xCoordinates
       (write-long (length _xCoordinates) s) (princ _xCoordinates s)
     ;; string _yCoordinates
       (write-long (length _yCoordinates) s) (princ _yCoordinates s)
     ;; string _directions
       (write-long (length _directions) s) (princ _directions s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _shortestPath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shortestPath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enableFlag
     (setq _enableFlag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _xCoordinates
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _xCoordinates (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _yCoordinates
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _yCoordinates (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _directions
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _directions (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get metal_line_follower::graphMsg :md5sum-) "0feed93f467ba06282bf8c2a567be919")
(setf (get metal_line_follower::graphMsg :datatype-) "metal_line_follower/graphMsg")
(setf (get metal_line_follower::graphMsg :definition-)
      "string sender
string shortestPath
bool enableFlag
string xCoordinates
string yCoordinates
string directions

")



(provide :metal_line_follower/graphMsg "0feed93f467ba06282bf8c2a567be919")


