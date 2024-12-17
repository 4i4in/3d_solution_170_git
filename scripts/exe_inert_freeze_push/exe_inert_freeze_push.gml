function exe_inert_freeze_push(_obj,_main_id,_thlprs,_action)
{
	var _sublist = _obj.part_detector_lines_results[_thlprs][2];
	//var _refer_to_part = _obj.part_detector_lines_results[_thlprs][3];

	//var _xyz0 =				_sublist[0][0];
	//var _xyz1 =				_sublist[0][1];
	var _normal =				_sublist[0][2];
	//var _hash_colided =		_sublist[0][3];
	//var _who_colided =			_sublist[0][4];
	//var _what_list =			_sublist[0][5];
	var _colision_type =		_sublist[0][6];	
	
	if _colision_type == "solid"
		{
			var _inert_length = point_distance_3d(0,_obj.control_method.intertia_translation[0][0],	0,_obj.control_method.intertia_translation[0][1],	0,_obj.control_method.intertia_translation[0][2]);

			var _delta = [	 _normal[0] * _inert_length,	 _normal[1] * _inert_length,	 _normal[2] * _inert_length];
	
			if abs(_delta[0]) + abs(_delta[1]) + abs(_delta[2]) < 0.1
				{	
					_obj = exe_pushup_a_bit_against_gravity_exception(_obj,_main_id);
					_delta = [_normal[0]* collision_resolution,	_normal[1]* collision_resolution,	_normal[2]* collision_resolution];
				};		
			if array_length(_obj.control_method.anchor) > 0
				{
					_obj.control_method.anchor[0][1][0] += _delta[0];
					_obj.control_method.anchor[0][1][1] += _delta[1];
					_obj.control_method.anchor[0][1][2] += _delta[2];
				}
			else
				{
					_obj.part_posMat[_main_id][12] += _delta[0];
					_obj.part_posMat[_main_id][13] += _delta[1];
					_obj.part_posMat[_main_id][14] += _delta[2];
				}
			_obj.control_method.intertia_translation[0] = [0,0,0];
		}
	return(_obj);
}