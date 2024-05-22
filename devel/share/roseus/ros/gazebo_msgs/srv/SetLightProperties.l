;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::SetLightProperties)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'SetLightProperties (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::SETLIGHTPROPERTIES")
  (make-package "GAZEBO_MSGS::SETLIGHTPROPERTIES"))
(unless (find-package "GAZEBO_MSGS::SETLIGHTPROPERTIESREQUEST")
  (make-package "GAZEBO_MSGS::SETLIGHTPROPERTIESREQUEST"))
(unless (find-package "GAZEBO_MSGS::SETLIGHTPROPERTIESRESPONSE")
  (make-package "GAZEBO_MSGS::SETLIGHTPROPERTIESRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass gazebo_msgs::SetLightPropertiesRequest
  :super ros::object
  :slots (_light_name _cast_shadows _diffuse _specular _attenuation_constant _attenuation_linear _attenuation_quadratic _direction _pose ))

(defmethod gazebo_msgs::SetLightPropertiesRequest
  (:init
   (&key
    ((:light_name __light_name) "")
    ((:cast_shadows __cast_shadows) nil)
    ((:diffuse __diffuse) (instance std_msgs::ColorRGBA :init))
    ((:specular __specular) (instance std_msgs::ColorRGBA :init))
    ((:attenuation_constant __attenuation_constant) 0.0)
    ((:attenuation_linear __attenuation_linear) 0.0)
    ((:attenuation_quadratic __attenuation_quadratic) 0.0)
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _light_name (string __light_name))
   (setq _cast_shadows __cast_shadows)
   (setq _diffuse __diffuse)
   (setq _specular __specular)
   (setq _attenuation_constant (float __attenuation_constant))
   (setq _attenuation_linear (float __attenuation_linear))
   (setq _attenuation_quadratic (float __attenuation_quadratic))
   (setq _direction __direction)
   (setq _pose __pose)
   self)
  (:light_name
   (&optional __light_name)
   (if __light_name (setq _light_name __light_name)) _light_name)
  (:cast_shadows
   (&optional (__cast_shadows :null))
   (if (not (eq __cast_shadows :null)) (setq _cast_shadows __cast_shadows)) _cast_shadows)
  (:diffuse
   (&rest __diffuse)
   (if (keywordp (car __diffuse))
       (send* _diffuse __diffuse)
     (progn
       (if __diffuse (setq _diffuse (car __diffuse)))
       _diffuse)))
  (:specular
   (&rest __specular)
   (if (keywordp (car __specular))
       (send* _specular __specular)
     (progn
       (if __specular (setq _specular (car __specular)))
       _specular)))
  (:attenuation_constant
   (&optional __attenuation_constant)
   (if __attenuation_constant (setq _attenuation_constant __attenuation_constant)) _attenuation_constant)
  (:attenuation_linear
   (&optional __attenuation_linear)
   (if __attenuation_linear (setq _attenuation_linear __attenuation_linear)) _attenuation_linear)
  (:attenuation_quadratic
   (&optional __attenuation_quadratic)
   (if __attenuation_quadratic (setq _attenuation_quadratic __attenuation_quadratic)) _attenuation_quadratic)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _light_name
    4 (length _light_name)
    ;; bool _cast_shadows
    1
    ;; std_msgs/ColorRGBA _diffuse
    (send _diffuse :serialization-length)
    ;; std_msgs/ColorRGBA _specular
    (send _specular :serialization-length)
    ;; float64 _attenuation_constant
    8
    ;; float64 _attenuation_linear
    8
    ;; float64 _attenuation_quadratic
    8
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _light_name
       (write-long (length _light_name) s) (princ _light_name s)
     ;; bool _cast_shadows
       (if _cast_shadows (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/ColorRGBA _diffuse
       (send _diffuse :serialize s)
     ;; std_msgs/ColorRGBA _specular
       (send _specular :serialize s)
     ;; float64 _attenuation_constant
       (sys::poke _attenuation_constant (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _attenuation_linear
       (sys::poke _attenuation_linear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _attenuation_quadratic
       (sys::poke _attenuation_quadratic (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _light_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _light_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _cast_shadows
     (setq _cast_shadows (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/ColorRGBA _diffuse
     (send _diffuse :deserialize buf ptr-) (incf ptr- (send _diffuse :serialization-length))
   ;; std_msgs/ColorRGBA _specular
     (send _specular :deserialize buf ptr-) (incf ptr- (send _specular :serialization-length))
   ;; float64 _attenuation_constant
     (setq _attenuation_constant (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _attenuation_linear
     (setq _attenuation_linear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _attenuation_quadratic
     (setq _attenuation_quadratic (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass gazebo_msgs::SetLightPropertiesResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod gazebo_msgs::SetLightPropertiesResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::SetLightProperties
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::SetLightProperties :md5sum-) "e6f13430c57278bb364aca53a1bf5ebf")
(setf (get gazebo_msgs::SetLightProperties :datatype-) "gazebo_msgs/SetLightProperties")
(setf (get gazebo_msgs::SetLightProperties :request) gazebo_msgs::SetLightPropertiesRequest)
(setf (get gazebo_msgs::SetLightProperties :response) gazebo_msgs::SetLightPropertiesResponse)

(defmethod gazebo_msgs::SetLightPropertiesRequest
  (:response () (instance gazebo_msgs::SetLightPropertiesResponse :init)))

(setf (get gazebo_msgs::SetLightPropertiesRequest :md5sum-) "e6f13430c57278bb364aca53a1bf5ebf")
(setf (get gazebo_msgs::SetLightPropertiesRequest :datatype-) "gazebo_msgs/SetLightPropertiesRequest")
(setf (get gazebo_msgs::SetLightPropertiesRequest :definition-)
      "string light_name                    # name of Gazebo Light
bool cast_shadows
std_msgs/ColorRGBA diffuse           # diffuse color as red, green, blue, alpha
std_msgs/ColorRGBA specular          # specular color as red, green, blue, alpha
float64 attenuation_constant
float64 attenuation_linear
float64 attenuation_quadratic
geometry_msgs/Vector3 direction
geometry_msgs/Pose pose              # pose in world frame

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success                         # return true if get successful
string status_message                # comments if available

")

(setf (get gazebo_msgs::SetLightPropertiesResponse :md5sum-) "e6f13430c57278bb364aca53a1bf5ebf")
(setf (get gazebo_msgs::SetLightPropertiesResponse :datatype-) "gazebo_msgs/SetLightPropertiesResponse")
(setf (get gazebo_msgs::SetLightPropertiesResponse :definition-)
      "string light_name                    # name of Gazebo Light
bool cast_shadows
std_msgs/ColorRGBA diffuse           # diffuse color as red, green, blue, alpha
std_msgs/ColorRGBA specular          # specular color as red, green, blue, alpha
float64 attenuation_constant
float64 attenuation_linear
float64 attenuation_quadratic
geometry_msgs/Vector3 direction
geometry_msgs/Pose pose              # pose in world frame

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success                         # return true if get successful
string status_message                # comments if available

")



(provide :gazebo_msgs/SetLightProperties "e6f13430c57278bb364aca53a1bf5ebf")


