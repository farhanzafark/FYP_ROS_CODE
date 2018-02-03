;; Auto-generated. Do not edit!


(when (boundp 'metal_line_follower::proximityMsg)
  (if (not (find-package "METAL_LINE_FOLLOWER"))
    (make-package "METAL_LINE_FOLLOWER"))
  (shadow 'proximityMsg (find-package "METAL_LINE_FOLLOWER")))
(unless (find-package "METAL_LINE_FOLLOWER::PROXIMITYMSG")
  (make-package "METAL_LINE_FOLLOWER::PROXIMITYMSG"))

(in-package "ROS")
;;//! \htmlinclude proximityMsg.msg.html


(defclass metal_line_follower::proximityMsg
  :super ros::object
  :slots (_sender _leftSensor _centerSensor _rightSensor ))

(defmethod metal_line_follower::proximityMsg
  (:init
   (&key
    ((:sender __sender) "")
    ((:leftSensor __leftSensor) nil)
    ((:centerSensor __centerSensor) nil)
    ((:rightSensor __rightSensor) nil)
    )
   (send-super :init)
   (setq _sender (string __sender))
   (setq _leftSensor __leftSensor)
   (setq _centerSensor __centerSensor)
   (setq _rightSensor __rightSensor)
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:leftSensor
   (&optional __leftSensor)
   (if __leftSensor (setq _leftSensor __leftSensor)) _leftSensor)
  (:centerSensor
   (&optional __centerSensor)
   (if __centerSensor (setq _centerSensor __centerSensor)) _centerSensor)
  (:rightSensor
   (&optional __rightSensor)
   (if __rightSensor (setq _rightSensor __rightSensor)) _rightSensor)
  (:serialization-length
   ()
   (+
    ;; string _sender
    4 (length _sender)
    ;; bool _leftSensor
    1
    ;; bool _centerSensor
    1
    ;; bool _rightSensor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; bool _leftSensor
       (if _leftSensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _centerSensor
       (if _centerSensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _rightSensor
       (if _rightSensor (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _leftSensor
     (setq _leftSensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _centerSensor
     (setq _centerSensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rightSensor
     (setq _rightSensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get metal_line_follower::proximityMsg :md5sum-) "af11528ee9c2394e81b2d19dd1d4bc01")
(setf (get metal_line_follower::proximityMsg :datatype-) "metal_line_follower/proximityMsg")
(setf (get metal_line_follower::proximityMsg :definition-)
      "string sender
bool leftSensor
bool centerSensor
bool rightSensor


")



(provide :metal_line_follower/proximityMsg "af11528ee9c2394e81b2d19dd1d4bc01")


