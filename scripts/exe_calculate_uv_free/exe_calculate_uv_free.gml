function exe_calculate_uv_free(_p1,_p2,_p3)
{
	var _texcoord1 = [0,0];
	var _texcoord2 = [1,0];
	var _texcoord3 = [0,0];
	
	var _p1_to_p2 = point_distance_3d(_p1[0],_p1[1],_p1[2],	_p2[0],_p2[1],_p2[2]);
	var _p1_to_p3 = point_distance_3d(_p1[0],_p1[1],_p1[2],	_p3[0],_p3[1],_p3[2]);
	var _p2_to_p3 = point_distance_3d(_p2[0],_p2[1],_p2[2],	_p3[0],_p3[1],_p3[2]);
	
	var _scale = max(_p1_to_p2,_p1_to_p3,_p2_to_p3);
	_p1_to_p2 /= _scale;	_p1_to_p3 /= _scale;	_p2_to_p3 /= _scale;
	_texcoord2[0] = _p1_to_p2;
	
	var _chosen = undefined;
	var _found = 0;
	var _result_array = [];
	for(var _p3_dir = 0; _p3_dir > -180; _p3_dir--)
		{
			_texcoord3[0] = lengthdir_x(_p1_to_p3,_p3_dir);
			_texcoord3[1] = lengthdir_y(_p1_to_p3,_p3_dir);
			var _new_p3_to_p2 = point_distance(_texcoord3[0],_texcoord3[1],_texcoord2[0],_texcoord2[1]);
			var _result = _new_p3_to_p2 - _p2_to_p3;
			if abs(_result) < 0.016	
				{_chosen = _p3_dir; _found = 1; break;}
			else
				{
					var _push = [abs(_result),_p3_dir];
					array_push(_result_array,_push);
				}
		}
	if _found < 1 //not foudn
		{
			var _lowest = 1;
			var _angle = 0;
			for(var _ii = 0; _ii < array_length(_result_array); _ii++)
				{
					if _result_array[_ii][0] < _lowest
						{
							_lowest = _result_array[_ii][0];
							_angle = _result_array[_ii][1];
						}
				}
			_texcoord3[0] = lengthdir_x(_p1_to_p3,_angle);
			_texcoord3[1] = lengthdir_y(_p1_to_p3,_angle);
		}
	if _texcoord3[0] < 0
		{
			var _shift_x = abs(_texcoord3[0]);
			_texcoord1[0] += _shift_x;	_texcoord2[0] += _shift_x;	_texcoord3[0] += _shift_x;
		}
	var _any_x_over1 = 0;
	if _texcoord1[0] > 1	{_any_x_over1=1;};
	if _texcoord2[0] > 1	{_any_x_over1=1;};
	if _texcoord3[0] > 1	{_any_x_over1=1;};
	if _any_x_over1 > 0
		{
			var _scale = max(_texcoord1[0],_texcoord2[0],_texcoord3[0]);
			_texcoord1[0] /= _scale;	_texcoord1[1] /= _scale;
			_texcoord2[0] /= _scale;	_texcoord2[1] /= _scale;
			_texcoord3[0] /= _scale;	_texcoord3[1] /= _scale;
		}
	var _any_y_over1 = 0;
	if _texcoord1[1] > 1	{_any_y_over1=1;};
	if _texcoord2[1] > 1	{_any_y_over1=1;};
	if _texcoord3[1] > 1	{_any_y_over1=1;};
	if _any_y_over1 > 0
		{
			var _scale = max(_texcoord1[1],_texcoord2[1],_texcoord3[1]);
			_texcoord1[0] /= _scale;	_texcoord1[1] /= _scale;
			_texcoord2[0] /= _scale;	_texcoord2[1] /= _scale;
			_texcoord3[0] /= _scale;	_texcoord3[1] /= _scale;
		}
		
	var _tex_uv_pack = [_texcoord1,_texcoord2,_texcoord3];
	return(_tex_uv_pack);
}