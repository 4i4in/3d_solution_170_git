function exe_perform_pushback_sequence_on_obj(_obj,_main_id,_action)
{
	_obj = exe_perform_colisions_on_obj(_obj,["pushback","any",0]);
	var _colision_push_back = exe_temp_check_if_any_colisions(_obj,"pushback");
	if _colision_push_back > 0	
		{
			for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
				{
					if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
						{
							var _reason_for_check = _obj.part_detector_lines_results[_thlprs][4];
							switch(_reason_for_check)
								{
									case "pushback":
										switch(_action)
											{
												case "standard":	_obj = exe_anchor_push(_obj,_main_id,_thlprs,_action);			break;
												//case "fall":		_obj = exe_inert_invert_push(_obj,_main_id,_thlprs,_action);			break;
												case "fall":		_obj = exe_inert_freeze_push(_obj,_main_id,_thlprs,_action);			break;
												case "light":		_obj = exe_anchor_push_light(_obj,_main_id,_thlprs,_action);	break;
											}
										break;
								}
						}
				}
		}
		
	return(_obj);
}