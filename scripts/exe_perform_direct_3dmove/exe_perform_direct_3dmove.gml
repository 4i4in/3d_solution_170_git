function exe_perform_direct_3dmove(_obj)
{
	var _main_id = -1;
	for(var _ii = 0; _ii < array_length(_obj.part_naming); _ii++)
		{
			if _main_id > -1	{break;};
			if _obj.part_naming[_ii] == "main_part"	{_main_id = _ii;};
		}
	var _input_call = _obj.control_method.temporary_values;
	
	var _posMat = _obj.part_posMat[_main_id];
	_posMat = matrix_multiply(matrix_build(0, 0, 0,_input_call.tilt,_input_call.pitch,_input_call.yaw,	1, 1, 1), _posMat);
	_posMat = exe_matrix_orthonormalize(_posMat);
	
	var _delta = [0,0,0];
	switch(_obj.control_method.active[2])
		{
			case "relative":
				_delta = exe_move_fb(_delta,_posMat,_input_call.strafe_fb);
				_delta = exe_move_updown(_delta,_posMat,_input_call.strafe_up);
				_delta = exe_move_sides(_delta,_posMat,_input_call.strafe_sides);
				break;
		}
	_posMat = exe_delta_add_Mat(_delta,_posMat);
	_obj.part_vsubmit[_main_id] = exe_return_v_submit(_posMat,1);
	
	_obj.part_posMat[_main_id] = _posMat;

	return(_obj);
}