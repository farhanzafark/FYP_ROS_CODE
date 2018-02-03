;; Auto-generated. Do not edit!


(when (boundp 'metal_line_follower::sensorValMsg)
  (if (not (find-package "METAL_LINE_FOLLOWER"))
    (make-package "METAL_LINE_FOLLOWER"))
  (shadow 'sensorValMsg (find-package "METAL_LINE_FOLLOWER")))
(unless (find-package "METAL_LINE_FOLLOWER::SENSORVALMSG")
  (make-package "METAL_LINE_FOLLOWER::SENSORVALMSG"))

(in-package "ROS")
;;//! \htmlinclude sensorValMsg.msg.html


(defclass metal_line_follower::sensorValMsg
  :super ros::object
  :slots (_sender _centerSensorIn _leftSensorIn _rightSensorIn ))

(defmethod metal_line_follower::sensorValMsg
  (:init
   (&key
    ((:sender __sender) "")
    ((:centerSensorIn __centerSensorIn) nil)
    ((:leftSensorIn __leftSensorIn) nil)
    ((:rightSensorIn __rightSensorIn) nil)
    )
   (send-super :init)
   (setq _sender (string __sender))
   (setq _centerSensorIn __centerSensorIn)
   (setq _leftSensorIn __leftSensorIn)
   (setq _rightSensorIn __rightSensorIn)
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:centerSensorIn
   (&optional __centerSensorIn)
   (if __centerSensorIn (setq _centerSensorIn __centerSensorIn)) _centerSensorIn)
  (:leftSensorIn
   (&optional __leftSensorIn)
   (if __leftSensorIn (setq _leftSensorIn __leftSensorIn)) _leftSensorIn)
  (:rightSensorIn
   (&optional __rightSensorIn)
   (if __rightSensorIn (setq _rightSensorIn __rightSensorIn)) _rightSensorIn)
  (:serialization-length
   ()
   (+
    ;; string _sender
    4 (length _sender)
    ;; bool _centerSensorIn
    1
    ;; bool _leftSensorIn
    1
    ;; bool _rightSensorIn
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; bool _centerSensorIn
       (if _centerSensorIn (write-byte -1 s) (write-byte 0 s))
     ;; bool _leftSensorIn
       (if _leftSensorIn (write-byte -1 s) (write-byte 0 s))
     ;; bool _rightSensorIn
       (if _rightSensorIn (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _centerSensorIn
     (setq _centerSensorIn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _leftSensorIn
     (setq _leftSensorIn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rightSensorIn
     (setq _rightSensorIn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get metal_line_follower::sensorValMsg :md5sum-) "2ea5d8411b8bc50422659e11921c9f65")
(setf (get metal_line_follower::sensorValMsg :datatype-) "metal_line_follower/sensorValMsg")
(setf (get metal_line_follower::sensorValMsg :definition-)
      "string sender
bool centerSensorIn
bool leftSensorIn
bool rightSensorIn

")



(provide :metal_line_follower/sensorValMsg "2ea5d8411b8bc50422659e11921c9f65")


