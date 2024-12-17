function exe_initialize_inertial_translation_array(_inertial_translation,_slow)
{
	var _sl = max(1.,_slow);
	for(var _ii = 0; _ii < array_length(_inertial_translation[0]); _ii++)
		{
			var _axis_value = lerp(_inertial_translation[0][_ii],0.,_inertial_translation[3][_ii]	* _sl);
			if abs(_axis_value) < _inertial_translation[1][_ii]	{_axis_value = 0.};
			if abs(_axis_value) > _inertial_translation[2][_ii]	{_axis_value = _inertial_translation[2][_ii] * sign(_axis_value);};
			_inertial_translation[0][_ii] = _axis_value;
		}
	
	return(_inertial_translation);
}