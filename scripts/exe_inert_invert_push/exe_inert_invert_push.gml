function exe_inert_invert_push(_obj,_main_id,_thlprs,_action)
{
	var _sublist = _obj.part_detector_lines_results[_thlprs][2];
	//var _refer_to_part = _obj.part_detector_lines_results[_thlprs][3];

	var _xyz0 =					_sublist[0][0];
	//var _xyz1 =				_sublist[0][1];
	//var _normal =				_sublist[0][2];
	//var _hash_colided =		_sublist[0][3];
	var _who_colided =			_sublist[0][4];
	//var _what_list =			_sublist[0][5];
	var _colision_type =		_sublist[0][6];	
	
	if _colision_type == "solid"
		{
			var _posMat = _obj.part_posMat[_main_id];
			var _delta = [	 _posMat[12] - _xyz0[0],	 _posMat[13] - _xyz0[1],	 _posMat[14] - _xyz0[2]	];
			
			var _delta_norm = vec_normalize(_delta);
			
			show_debug_message("_delta : " + string(_delta));
			show_debug_message("_delta_norm : " + string(_delta_norm));
			var _inert_length = point_distance_3d(0,_obj.control_method.intertia_translation[0][0],	0,_obj.control_method.intertia_translation[0][1],	0,_obj.control_method.intertia_translation[0][2]);
			if _inert_length < 1	{_inert_length = 1;};
			
			var _dot_p =	_obj.control_method.intertia_translation[0][0] * _delta_norm[0] +
							_obj.control_method.intertia_translation[0][1] * _delta_norm[1] +
							_obj.control_method.intertia_translation[0][2] * _delta_norm[2];
							
			show_debug_message("_dot_p : " + string(_dot_p));
			
			var _reflected_intertia_translation = [
													    _obj.control_method.intertia_translation[0][0] - 2 * _dot_p * _delta_norm[0],
													    _obj.control_method.intertia_translation[0][1] - 2 * _dot_p * _delta_norm[1],
													    _obj.control_method.intertia_translation[0][2] - 2 * _dot_p * _delta_norm[2]
													];
			
			show_debug_message("intertia_translation : " + string(_obj.control_method.intertia_translation[0][0]) + " | "  + string(_obj.control_method.intertia_translation[0][1]) + " | " + string(_obj.control_method.intertia_translation[0][2]));
			show_debug_message("_reflected_intertia_translation : " + string(_reflected_intertia_translation));
			
			_obj.control_method.intertia_translation[0] = _reflected_intertia_translation;
			
			//cast on main object
			var _cast_fwd =	_delta[0] * (-_posMat[0]) +
							_delta[1] * (-_posMat[1]) +
							_delta[2] * (-_posMat[2]);
							
			var _cast_sides =	_delta[0] * (-_posMat[4]) +
								_delta[1] * (-_posMat[5]) +
								_delta[2] * (-_posMat[6]);
			
			if array_length(_obj.control_method.anchor) > 0
				{
					//push anchor
					switch(_who_colided)
						{
							case "col_ass_fwd":
								_obj.control_method.anchor[0][1][0] -= _posMat[0]*_cast_fwd*_inert_length;
								_obj.control_method.anchor[0][1][1] -= _posMat[1]*_cast_fwd*_inert_length;
								_obj.control_method.anchor[0][1][2] -= _posMat[2]*_cast_fwd*_inert_length;
								break;
								
							case "col_ass_back":
								_obj.control_method.anchor[0][1][0] -= _posMat[0]*_cast_fwd*_inert_length;
								_obj.control_method.anchor[0][1][1] -= _posMat[1]*_cast_fwd*_inert_length;
								_obj.control_method.anchor[0][1][2] -= _posMat[2]*_cast_fwd*_inert_length;
								break;
								
							case "col_shd_right":
								_obj.control_method.anchor[0][1][0] -= _posMat[4]*_cast_sides*_inert_length;
								_obj.control_method.anchor[0][1][1] -= _posMat[5]*_cast_sides*_inert_length;
								_obj.control_method.anchor[0][1][2] -= _posMat[6]*_cast_sides*_inert_length;
								break;
								
							case "col_shd_left":
								_obj.control_method.anchor[0][1][0] -= _posMat[4]*_cast_sides*_inert_length;
								_obj.control_method.anchor[0][1][1] -= _posMat[5]*_cast_sides*_inert_length;
								_obj.control_method.anchor[0][1][2] -= _posMat[6]*_cast_sides*_inert_length;
								break;
						}
				}
			else	//if no anchor
				{	//push main	
					switch(_who_colided)
						{
							case "col_ass_fwd":
								_obj.part_posMat[_main_id][12] -= _posMat[0]*_cast_fwd*_inert_length;
								_obj.part_posMat[_main_id][13] -= _posMat[1]*_cast_fwd*_inert_length;
								_obj.part_posMat[_main_id][14] -= _posMat[2]*_cast_fwd*_inert_length;
								break;
								
							case "col_ass_back":
								_obj.part_posMat[_main_id][12] -= _posMat[0]*_cast_fwd*_inert_length;
								_obj.part_posMat[_main_id][13] -= _posMat[1]*_cast_fwd*_inert_length;
								_obj.part_posMat[_main_id][14] -= _posMat[2]*_cast_fwd*_inert_length;
								break;
								
							case "col_shd_right":
								_obj.part_posMat[_main_id][12] -= _posMat[4]*_cast_sides*_inert_length;
								_obj.part_posMat[_main_id][13] -= _posMat[5]*_cast_sides*_inert_length;
								_obj.part_posMat[_main_id][14] -= _posMat[6]*_cast_sides*_inert_length;
								break;
								
							case "col_shd_left":
								_obj.part_posMat[_main_id][12] -= _posMat[4]*_cast_sides*_inert_length;
								_obj.part_posMat[_main_id][13] -= _posMat[5]*_cast_sides*_inert_length;
								_obj.part_posMat[_main_id][14] -= _posMat[6]*_cast_sides*_inert_length;
								break;
						}
				}
		}
	return(_obj);
}