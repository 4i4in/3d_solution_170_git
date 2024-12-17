function exe_temp_check_if_any_colisions(_obj,_reason)
{
	var _any_colision = 0;
	if struct_exists(_obj,"part_detector_lines_results")
		{
			if array_length(_obj.part_detector_lines_results) > 0
				{
					for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
						{
							if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
								{
									if _obj.part_detector_lines_results[_thlprs][4] == _reason	{_any_colision++;}
									else if _reason == "any"	{_any_colision++;};
								}
						}
				}
		}
	return(_any_colision);
}