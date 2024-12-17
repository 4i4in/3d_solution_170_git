function exe_calculate_rotation_input(_struct)
{
	_struct.tilt	*= _struct.tilt_speed[0];
	_struct.yaw		*= _struct.yaw_speed[0];
	_struct.pitch	*= _struct.pitch_speed[0];
	
	return(_struct)
}