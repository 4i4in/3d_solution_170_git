function exe_move_obj_to_anchor(_obj,_main_id)
{
	//_obj = exe_load_part_posMat_by_reference(_obj);
	if array_length(_obj.control_method.anchor) < 1	{return(_obj);};
	
	var _chosen_anchor = _obj.control_method.anchor[0];
	var _cha_name = _chosen_anchor[0];
	var _expected_anchor_position = _chosen_anchor[1];
	
	var _cha_id = -1;
	for(var _ii = 0; _ii < array_length(_obj.part_naming); _ii++)
		{
			if _cha_id > -1	{break;};
			if _obj.part_naming[_ii] == string(_cha_name)	{_cha_id = _ii;};
		}
	var _cha_posMat = _obj.part_posMat[_cha_id];
	var _delta = [	 _cha_posMat[12] - _expected_anchor_position[0],	 _cha_posMat[13] - _expected_anchor_position[1],	 _cha_posMat[14] - _expected_anchor_position[2]	];
	
	var _posMat = _obj.part_posMat[_main_id];
	
	_posMat = exe_delta_add_Mat(_delta,_posMat);
	
	_obj.part_vsubmit[_main_id] = exe_return_v_submit(_posMat,1);
	_obj.part_posMat[_main_id] = _posMat;

	return(_obj);
}