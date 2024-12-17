function exe_calculate_linear_input(_struct)
{
	_struct.strafe_fb		*= _struct.forward_speed[1];
	_struct.strafe_up		*= _struct.vert_speed[1];
	_struct.strafe_sides	*= _struct.side_speed[1];
	
	return(_struct)
}