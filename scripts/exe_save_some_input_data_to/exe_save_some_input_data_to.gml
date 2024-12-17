function exe_save_some_input_data_to(_struct_save,_struct_source)
{
	_struct_save.tilt_speed = variable_clone(_struct_source.tilt_speed);
	_struct_save.yaw_speed = variable_clone(_struct_source.yaw_speed);
	_struct_save.pitch_speed = variable_clone(_struct_source.pitch_speed);
	
	_struct_save.forward_speed = variable_clone(_struct_source.forward_speed);
	_struct_save.side_speed = variable_clone(_struct_source.side_speed);
	_struct_save.vert_speed = variable_clone(_struct_source.vert_speed);
	
	return(_struct_save)
}