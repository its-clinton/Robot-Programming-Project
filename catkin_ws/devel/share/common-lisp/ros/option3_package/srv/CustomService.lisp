; Auto-generated. Do not edit!


(cl:in-package option3_package-srv)


;//! \htmlinclude CustomService-request.msg.html

(cl:defclass <CustomService-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass CustomService-request (<CustomService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name option3_package-srv:<CustomService-request> is deprecated: use option3_package-srv:CustomService-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <CustomService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader option3_package-srv:a-val is deprecated.  Use option3_package-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CustomService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader option3_package-srv:type-val is deprecated.  Use option3_package-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomService-request>) ostream)
  "Serializes a message object of type '<CustomService-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomService-request>) istream)
  "Deserializes a message object of type '<CustomService-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomService-request>)))
  "Returns string type for a service object of type '<CustomService-request>"
  "option3_package/CustomServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomService-request)))
  "Returns string type for a service object of type 'CustomService-request"
  "option3_package/CustomServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomService-request>)))
  "Returns md5sum for a message object of type '<CustomService-request>"
  "7dbf19863255d8238636cddbc89afb50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomService-request)))
  "Returns md5sum for a message object of type 'CustomService-request"
  "7dbf19863255d8238636cddbc89afb50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomService-request>)))
  "Returns full string definition for message of type '<CustomService-request>"
  (cl:format cl:nil "int32 a~%int32 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomService-request)))
  "Returns full string definition for message of type 'CustomService-request"
  (cl:format cl:nil "int32 a~%int32 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomService-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomService-request
    (cl:cons ':a (a msg))
    (cl:cons ':type (type msg))
))
;//! \htmlinclude CustomService-response.msg.html

(cl:defclass <CustomService-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass CustomService-response (<CustomService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name option3_package-srv:<CustomService-response> is deprecated: use option3_package-srv:CustomService-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CustomService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader option3_package-srv:result-val is deprecated.  Use option3_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomService-response>) ostream)
  "Serializes a message object of type '<CustomService-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomService-response>) istream)
  "Deserializes a message object of type '<CustomService-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomService-response>)))
  "Returns string type for a service object of type '<CustomService-response>"
  "option3_package/CustomServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomService-response)))
  "Returns string type for a service object of type 'CustomService-response"
  "option3_package/CustomServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomService-response>)))
  "Returns md5sum for a message object of type '<CustomService-response>"
  "7dbf19863255d8238636cddbc89afb50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomService-response)))
  "Returns md5sum for a message object of type 'CustomService-response"
  "7dbf19863255d8238636cddbc89afb50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomService-response>)))
  "Returns full string definition for message of type '<CustomService-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomService-response)))
  "Returns full string definition for message of type 'CustomService-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomService-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomService-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomService)))
  'CustomService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomService)))
  'CustomService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomService)))
  "Returns string type for a service object of type '<CustomService>"
  "option3_package/CustomService")