; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude SetLightProperties-request.msg.html

(cl:defclass <SetLightProperties-request> (roslisp-msg-protocol:ros-message)
  ((light_name
    :reader light_name
    :initarg :light_name
    :type cl:string
    :initform "")
   (cast_shadows
    :reader cast_shadows
    :initarg :cast_shadows
    :type cl:boolean
    :initform cl:nil)
   (diffuse
    :reader diffuse
    :initarg :diffuse
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (specular
    :reader specular
    :initarg :specular
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (attenuation_constant
    :reader attenuation_constant
    :initarg :attenuation_constant
    :type cl:float
    :initform 0.0)
   (attenuation_linear
    :reader attenuation_linear
    :initarg :attenuation_linear
    :type cl:float
    :initform 0.0)
   (attenuation_quadratic
    :reader attenuation_quadratic
    :initarg :attenuation_quadratic
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SetLightProperties-request (<SetLightProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLightProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLightProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetLightProperties-request> is deprecated: use gazebo_msgs-srv:SetLightProperties-request instead.")))

(cl:ensure-generic-function 'light_name-val :lambda-list '(m))
(cl:defmethod light_name-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:light_name-val is deprecated.  Use gazebo_msgs-srv:light_name instead.")
  (light_name m))

(cl:ensure-generic-function 'cast_shadows-val :lambda-list '(m))
(cl:defmethod cast_shadows-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:cast_shadows-val is deprecated.  Use gazebo_msgs-srv:cast_shadows instead.")
  (cast_shadows m))

(cl:ensure-generic-function 'diffuse-val :lambda-list '(m))
(cl:defmethod diffuse-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:diffuse-val is deprecated.  Use gazebo_msgs-srv:diffuse instead.")
  (diffuse m))

(cl:ensure-generic-function 'specular-val :lambda-list '(m))
(cl:defmethod specular-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:specular-val is deprecated.  Use gazebo_msgs-srv:specular instead.")
  (specular m))

(cl:ensure-generic-function 'attenuation_constant-val :lambda-list '(m))
(cl:defmethod attenuation_constant-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:attenuation_constant-val is deprecated.  Use gazebo_msgs-srv:attenuation_constant instead.")
  (attenuation_constant m))

(cl:ensure-generic-function 'attenuation_linear-val :lambda-list '(m))
(cl:defmethod attenuation_linear-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:attenuation_linear-val is deprecated.  Use gazebo_msgs-srv:attenuation_linear instead.")
  (attenuation_linear m))

(cl:ensure-generic-function 'attenuation_quadratic-val :lambda-list '(m))
(cl:defmethod attenuation_quadratic-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:attenuation_quadratic-val is deprecated.  Use gazebo_msgs-srv:attenuation_quadratic instead.")
  (attenuation_quadratic m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:direction-val is deprecated.  Use gazebo_msgs-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetLightProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:pose-val is deprecated.  Use gazebo_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLightProperties-request>) ostream)
  "Serializes a message object of type '<SetLightProperties-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'light_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'light_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cast_shadows) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diffuse) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'specular) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'attenuation_constant))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'attenuation_linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'attenuation_quadratic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLightProperties-request>) istream)
  "Deserializes a message object of type '<SetLightProperties-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'light_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'light_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'cast_shadows) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diffuse) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'specular) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'attenuation_constant) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'attenuation_linear) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'attenuation_quadratic) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLightProperties-request>)))
  "Returns string type for a service object of type '<SetLightProperties-request>"
  "gazebo_msgs/SetLightPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLightProperties-request)))
  "Returns string type for a service object of type 'SetLightProperties-request"
  "gazebo_msgs/SetLightPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLightProperties-request>)))
  "Returns md5sum for a message object of type '<SetLightProperties-request>"
  "e6f13430c57278bb364aca53a1bf5ebf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLightProperties-request)))
  "Returns md5sum for a message object of type 'SetLightProperties-request"
  "e6f13430c57278bb364aca53a1bf5ebf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLightProperties-request>)))
  "Returns full string definition for message of type '<SetLightProperties-request>"
  (cl:format cl:nil "string light_name                    # name of Gazebo Light~%bool cast_shadows~%std_msgs/ColorRGBA diffuse           # diffuse color as red, green, blue, alpha~%std_msgs/ColorRGBA specular          # specular color as red, green, blue, alpha~%float64 attenuation_constant~%float64 attenuation_linear~%float64 attenuation_quadratic~%geometry_msgs/Vector3 direction~%geometry_msgs/Pose pose              # pose in world frame~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLightProperties-request)))
  "Returns full string definition for message of type 'SetLightProperties-request"
  (cl:format cl:nil "string light_name                    # name of Gazebo Light~%bool cast_shadows~%std_msgs/ColorRGBA diffuse           # diffuse color as red, green, blue, alpha~%std_msgs/ColorRGBA specular          # specular color as red, green, blue, alpha~%float64 attenuation_constant~%float64 attenuation_linear~%float64 attenuation_quadratic~%geometry_msgs/Vector3 direction~%geometry_msgs/Pose pose              # pose in world frame~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLightProperties-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'light_name))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diffuse))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'specular))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLightProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLightProperties-request
    (cl:cons ':light_name (light_name msg))
    (cl:cons ':cast_shadows (cast_shadows msg))
    (cl:cons ':diffuse (diffuse msg))
    (cl:cons ':specular (specular msg))
    (cl:cons ':attenuation_constant (attenuation_constant msg))
    (cl:cons ':attenuation_linear (attenuation_linear msg))
    (cl:cons ':attenuation_quadratic (attenuation_quadratic msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude SetLightProperties-response.msg.html

(cl:defclass <SetLightProperties-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass SetLightProperties-response (<SetLightProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLightProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLightProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<SetLightProperties-response> is deprecated: use gazebo_msgs-srv:SetLightProperties-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:success-val is deprecated.  Use gazebo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetLightProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:status_message-val is deprecated.  Use gazebo_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLightProperties-response>) ostream)
  "Serializes a message object of type '<SetLightProperties-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLightProperties-response>) istream)
  "Deserializes a message object of type '<SetLightProperties-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLightProperties-response>)))
  "Returns string type for a service object of type '<SetLightProperties-response>"
  "gazebo_msgs/SetLightPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLightProperties-response)))
  "Returns string type for a service object of type 'SetLightProperties-response"
  "gazebo_msgs/SetLightPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLightProperties-response>)))
  "Returns md5sum for a message object of type '<SetLightProperties-response>"
  "e6f13430c57278bb364aca53a1bf5ebf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLightProperties-response)))
  "Returns md5sum for a message object of type 'SetLightProperties-response"
  "e6f13430c57278bb364aca53a1bf5ebf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLightProperties-response>)))
  "Returns full string definition for message of type '<SetLightProperties-response>"
  (cl:format cl:nil "bool success                         # return true if get successful~%string status_message                # comments if available~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLightProperties-response)))
  "Returns full string definition for message of type 'SetLightProperties-response"
  (cl:format cl:nil "bool success                         # return true if get successful~%string status_message                # comments if available~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLightProperties-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLightProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLightProperties-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLightProperties)))
  'SetLightProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLightProperties)))
  'SetLightProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLightProperties)))
  "Returns string type for a service object of type '<SetLightProperties>"
  "gazebo_msgs/SetLightProperties")