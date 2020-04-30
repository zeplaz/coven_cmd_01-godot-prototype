
class_name steering_output

var linear := vector3.ZERO
var angular := 0.0



# Sets the linear and angular components to 0.
func set_zero() -> void:
	linear.x = 0.0
	linear.y = 0.0
	linear.z = 0.0
	angular = 0.0



func add_scaled_accel(accel: steering_output, scalar: float) -> void:
	linear += accel.linear * scalar
	angular += accel.angular * scalar



func get_magnitude_squared() -> float:
	return linear.length_squared() + angular * angular



func get_magnitude() -> float:
	return sqrt(get_magnitude_squared())

#newfile?

extends steering_output

class_name steering_entity_base

var zero_linear_speed_threshold := 0.01

var linear_speed_max := 0.0

var linear_acceleration_max := 0.0

var angular_speed_max := 0.0

var angular_acceleration_max := 0.0

var angular_velocity := 0.0

var group_is_considerd := false





class_name steering_behavoir


var is_enabled := true;


var agent : steering_output

func _init(_agent: steering_output) -> void:
	self.agent = _agent


func calculate_steering(acceleration: steering_output) -> void:
	if is_enabled:
		_calculate_steering(acceleration)
	else:
		acceleration.set_zero()


func _calculate_steering(acceleration: steering_output) -> void:
	acceleration.set_zero()
