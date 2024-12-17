function exe_perform_reanchor(_obj,_main_id)
{
	_obj = exe_perform_colisions_on_obj(_obj,["anchor","any",0]);
	var _any_colision_anchor = exe_temp_check_if_any_colisions(_obj,"anchor");
	if _any_colision_anchor > 0
		{
			for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
				{
					if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
						{
							var _reason_for_check = _obj.part_detector_lines_results[_thlprs][4];
							switch(_reason_for_check)
								{
									case "anchor":
										_obj = exe_perform_humanoid_sceleton_simple_anchoring_obj(_obj,_thlprs,"reanchor","reset",_main_id);
										break;
								}
						}
				}
			
		}
	return(_obj);
}