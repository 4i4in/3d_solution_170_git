function exe_calculate_inertial_input(_struct)
{
	_struct.strafe_fb		= variable_clone(_struct.forward_speed[0]);
	_struct.strafe_up		= variable_clone(_struct.vert_speed[0]);
	_struct.strafe_sides	= variable_clone(_struct.side_speed[0]);
	
	return(_struct)
}