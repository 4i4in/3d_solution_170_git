function exe_return_colision_xyz_for(_specyfik,_obj)
{
	var _colision_xyz = "noone";
	for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
		{
			if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
				{
					if _obj.part_detector_lines_results[_thlprs][4] == _specyfik[0]
						{
							if _obj.part_detector_lines_results[_thlprs][2][0][4] == _specyfik[1]
								{
									var _xx1 = (	_obj.part_detector_lines_results[_thlprs][2][0][0][0] + _obj.part_detector_lines_results[_thlprs][2][0][1][0]	)/2;
									var _yy1 = (	_obj.part_detector_lines_results[_thlprs][2][0][0][1] + _obj.part_detector_lines_results[_thlprs][2][0][1][1]	)/2;
									var _zz1 = (	_obj.part_detector_lines_results[_thlprs][2][0][0][2] + _obj.part_detector_lines_results[_thlprs][2][0][1][2]	)/2;
									return([_xx1,_yy1,_zz1]);
								}
						}
				}
		}
	return(_colision_xyz);
}