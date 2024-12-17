function exe_return_control_input_v2(_struct)
{
	var _input_from =				exe_return_struct_key_value(_struct,"input_from");
	
	var _pad_struct = {};
	switch(_input_from[0])
		{
			case "noone":	break;
			case "keymouse":
				_pad_struct = exe_return_keymouse_result(keymouse_preset);
				break;
			case"pad_struct.pad_result_array":
				_pad_struct = pad_struct.pad_result_array[_struct.input_from[1]];
				break;
		}
		
	var _key_list = ["strafe_fb","strafe_up","strafe_sides","tilt","pitch","yaw","slow","jump","action","action1"];
	_struct.temporary_values = exe_apply_return_3d_object_controls(_struct,_pad_struct,_key_list);
	

	return(_struct)
}