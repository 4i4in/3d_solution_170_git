function exe_anchor_push_light(_obj,_main_id,_thlprs,_action)
{
	var _sublist = _obj.part_detector_lines_results[_thlprs][2];
	//var _refer_to_part = _obj.part_detector_lines_results[_thlprs][3];

	//var _xyz0 =					_sublist[0][0];
	//var _xyz1 =				_sublist[0][1];
	//var _normal =				_sublist[0][2];
	//var _hash_colided =		_sublist[0][3];
	var _who_colided =			_sublist[0][4];
	//var _what_list =			_sublist[0][5];
	var _colision_type =		_sublist[0][6];	
	
	if _colision_type == "solid"
		{
			var _posMat = _obj.part_posMat[_main_id];
			
			if array_length(_obj.control_method.anchor) > 0
				{
					//push anchor
					switch(_who_colided)
						{
							case "col_ass_fwd":
								_obj.control_method.anchor[0][1][0] += _posMat[0];
								_obj.control_method.anchor[0][1][1] += _posMat[1];
								_obj.control_method.anchor[0][1][2] += _posMat[2];
								break;
								
							case "col_ass_back":
								_obj.control_method.anchor[0][1][0] -= _posMat[0];
								_obj.control_method.anchor[0][1][1] -= _posMat[1];
								_obj.control_method.anchor[0][1][2] -= _posMat[2];
								break;
								
							case "col_shd_right":
								_obj.control_method.anchor[0][1][0] += _posMat[4];
								_obj.control_method.anchor[0][1][1] += _posMat[5];
								_obj.control_method.anchor[0][1][2] += _posMat[6];
								break;
								
							case "col_shd_left":
								_obj.control_method.anchor[0][1][0] -= _posMat[4];
								_obj.control_method.anchor[0][1][1] -= _posMat[5];
								_obj.control_method.anchor[0][1][2] -= _posMat[6];
								break;
								
							case "col_nck_up":
								_obj.control_method.anchor[0][1][0] += _posMat[8];
								_obj.control_method.anchor[0][1][1] += _posMat[9];
								_obj.control_method.anchor[0][1][2] += _posMat[10];
								break;
								
							case "col_ass_down":
								_obj.control_method.anchor[0][1][0] -= _posMat[8];
								_obj.control_method.anchor[0][1][1] -= _posMat[9];
								_obj.control_method.anchor[0][1][2] -= _posMat[10];
								break;
						}
				}
			else	//if no anchor
				{	//push main	
					switch(_who_colided)
						{
							case "col_ass_fwd":
								_obj.part_posMat[_main_id][12] += _posMat[0];
								_obj.part_posMat[_main_id][13] += _posMat[1];
								_obj.part_posMat[_main_id][14] += _posMat[2];
								break;
								
							case "col_ass_back":
								_obj.part_posMat[_main_id][12] -= _posMat[0];
								_obj.part_posMat[_main_id][13] -= _posMat[1];
								_obj.part_posMat[_main_id][14] -= _posMat[2];
								break;
								
							case "col_shd_right":
								_obj.part_posMat[_main_id][12] += _posMat[4];
								_obj.part_posMat[_main_id][13] += _posMat[5];
								_obj.part_posMat[_main_id][14] += _posMat[6];
								break;
								
							case "col_shd_left":
								_obj.part_posMat[_main_id][12] -= _posMat[4];
								_obj.part_posMat[_main_id][13] -= _posMat[5];
								_obj.part_posMat[_main_id][14] -= _posMat[6];
								break;
								
							case "col_nck_up":
								_obj.part_posMat[_main_id][12] += _posMat[8];
								_obj.part_posMat[_main_id][13] += _posMat[9];
								_obj.part_posMat[_main_id][14] += _posMat[10];
								break;
								
							case "col_ass_down":
								_obj.part_posMat[_main_id][12] -= _posMat[8];
								_obj.part_posMat[_main_id][13] -= _posMat[9];
								_obj.part_posMat[_main_id][14] -= _posMat[10];
								break;
						}
					
				}
		}
	return(_obj);
}