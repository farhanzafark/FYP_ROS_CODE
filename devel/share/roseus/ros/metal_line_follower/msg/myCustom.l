;; Auto-generated. Do not edit!


(when (boundp 'metal_line_follower::myCustom)
  (if (not (find-package "METAL_LINE_FOLLOWER"))
    (make-package "METAL_LINE_FOLLOWER"))
  (shadow 'myCustom (find-package "METAL_LINE_FOLLOWER")))
(unless (find-package "METAL_LINE_FOLLOWER::MYCUSTOM")
  (make-package "METAL_LINE_FOLLOWER::MYCUSTOM"))

(in-package "ROS")
;;//! \htmlinclude myCustom.msg.html


(defclass metal_line_follower::myCustom
  :super ros::object
  :slots (_senderType _msgData ))

(defmethod metal_line_follower::myCustom
  (:init
   (&key
    ((:senderType __senderType) "")
    ((:msgData __msgData) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _senderType (string __senderType))
   (setq _msgData __msgData)
   self)
  (:senderType
   (&optional __senderType)
   (if __senderType (setq _senderType __senderType)) _senderType)
  (:msgData
   (&optional __msgData)
   (if __msgData (setq _msgData __msgData)) _msgData)
  (:serialization-length
   ()
   (+
    ;; string _senderType
    4 (length _senderType)
    ;; int32[] _msgData
    (* 4    (length _msgData)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _senderType
       (write-long (length _senderType) s) (princ _senderType s)
     ;; int32[] _msgData
     (write-long (length _msgData) s)
     (dotimes (i (length _msgData))
       (write-long (elt _msgData i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _senderType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _senderType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _msgData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _msgData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _msgData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get metal_line_follower::myCustom :md5sum-) "ace9042348799f75d0457e17a86b80b5")
(setf (get metal_line_follower::myCustom :datatype-) "metal_line_follower/myCustom")
(setf (get metal_line_follower::myCustom :definition-)
      "string senderType
int32[] msgData

")



(provide :metal_line_follower/myCustom "ace9042348799f75d0457e17a86b80b5")


