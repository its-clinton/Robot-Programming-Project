;; Auto-generated. Do not edit!


(when (boundp 'option3_package::CustomService)
  (if (not (find-package "OPTION3_PACKAGE"))
    (make-package "OPTION3_PACKAGE"))
  (shadow 'CustomService (find-package "OPTION3_PACKAGE")))
(unless (find-package "OPTION3_PACKAGE::CUSTOMSERVICE")
  (make-package "OPTION3_PACKAGE::CUSTOMSERVICE"))
(unless (find-package "OPTION3_PACKAGE::CUSTOMSERVICEREQUEST")
  (make-package "OPTION3_PACKAGE::CUSTOMSERVICEREQUEST"))
(unless (find-package "OPTION3_PACKAGE::CUSTOMSERVICERESPONSE")
  (make-package "OPTION3_PACKAGE::CUSTOMSERVICERESPONSE"))

(in-package "ROS")





(defclass option3_package::CustomServiceRequest
  :super ros::object
  :slots (_a _type ))

(defmethod option3_package::CustomServiceRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _type (round __type))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass option3_package::CustomServiceResponse
  :super ros::object
  :slots (_result ))

(defmethod option3_package::CustomServiceResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass option3_package::CustomService
  :super ros::object
  :slots ())

(setf (get option3_package::CustomService :md5sum-) "7dbf19863255d8238636cddbc89afb50")
(setf (get option3_package::CustomService :datatype-) "option3_package/CustomService")
(setf (get option3_package::CustomService :request) option3_package::CustomServiceRequest)
(setf (get option3_package::CustomService :response) option3_package::CustomServiceResponse)

(defmethod option3_package::CustomServiceRequest
  (:response () (instance option3_package::CustomServiceResponse :init)))

(setf (get option3_package::CustomServiceRequest :md5sum-) "7dbf19863255d8238636cddbc89afb50")
(setf (get option3_package::CustomServiceRequest :datatype-) "option3_package/CustomServiceRequest")
(setf (get option3_package::CustomServiceRequest :definition-)
      "int32 a
int32 type
---
int32 result


")

(setf (get option3_package::CustomServiceResponse :md5sum-) "7dbf19863255d8238636cddbc89afb50")
(setf (get option3_package::CustomServiceResponse :datatype-) "option3_package/CustomServiceResponse")
(setf (get option3_package::CustomServiceResponse :definition-)
      "int32 a
int32 type
---
int32 result


")



(provide :option3_package/CustomService "7dbf19863255d8238636cddbc89afb50")


