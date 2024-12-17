function exe_calculate_detector_lines(_obj,_specyfic)
{
//["info","ass_inertial",num] example [reason, specyfic detector label, precision]; ["any","any",0] is passing without change
	_obj.part_detector_lines_results = [];	
	for(var _ii = 0; _ii < array_length(_obj.part_detector_lines_load_reference); _ii++)
		{
			var _forced_precision = 0;
			var _continue_check = 0;
			if _specyfic != undefined
				{
					if _obj.part_detector_lines_load_reference[_ii][5] == _specyfic[0]
						{
							if _obj.part_detector_lines_load_reference[_ii][2] == _specyfic[1]	{	_continue_check = 1;	_forced_precision = _specyfic[2];	};	
							if _specyfic[1] == "any"											{	_continue_check = 1;	_forced_precision = _specyfic[2];};
						}
					if _specyfic[0] == "any"
						{
							if _obj.part_detector_lines_load_reference[_ii][2] == _specyfic[1]	{	_continue_check = 1;	_forced_precision = _specyfic[2];	}	
							if _specyfic[1] == "any"											{	_continue_check = 1;	_forced_precision = _specyfic[2];	}
						}
				}
			else	{_continue_check = 1;}
			
			if _continue_check > 0
				{
					var _part_name_find = _obj.part_detector_lines_load_reference[_ii][0];
					var _point0 = -1;
					var _point1 = -1;
					var _pnf_id = -1;
			
					for(var _pnf = 0; _pnf < array_length(_obj.part_naming); _pnf++)
						{	if _part_name_find == _obj.part_naming[_pnf]	{_pnf_id = _pnf; break;};	}
					if _pnf_id > -1
						{
							_point0 = [	_obj.part_vsubmit[_pnf_id][0],_obj.part_vsubmit[_pnf_id][1],_obj.part_vsubmit[_pnf_id][2]	];
						}
			
					var _part_name_find = _obj.part_detector_lines_load_reference[_ii][1];
					for(var _pnf = 0; _pnf < array_length(_obj.part_naming); _pnf++)
						{	if _part_name_find == _obj.part_naming[_pnf]	{_pnf_id = _pnf; break;};	}
					if _pnf_id > -1
						{
							_point1 = [	_obj.part_vsubmit[_pnf_id][0],_obj.part_vsubmit[_pnf_id][1],_obj.part_vsubmit[_pnf_id][2]	];
						}
					if is_array(_point0)	&&	is_array(_point1)
						{
							var _label =		_obj.part_detector_lines_load_reference[_ii][2];
							var _precision =	_obj.part_detector_lines_load_reference[_ii][3];	if _forced_precision > 0	{_precision = _forced_precision;};
							var _part =			_obj.part_detector_lines_load_reference[_ii][4];
							var _reason =		_obj.part_detector_lines_load_reference[_ii][5];
							var _colisions = exe_check_collision_line_vs_geometry_v2(_point0,_point1,_label,_precision,map3d.world_settings.perform_fast_check);
							var _point_pack = [_point0,_point1,_colisions,_part,_reason];
							array_push(_obj.part_detector_lines_results,_point_pack);
						}
				}
		}
	return(_obj);
}