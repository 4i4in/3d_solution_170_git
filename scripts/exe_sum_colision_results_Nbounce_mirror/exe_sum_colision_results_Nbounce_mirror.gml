function exe_sum_colision_results_Nbounce_mirror(_colisions,_delta_in)
{
	var _delta_flat_shift = variable_clone(_delta_in);
	var _speed_multipler = 1.;
	//var _col_points_arr =[];
	for(var _ii = 0; _ii < array_length(_colisions); _ii++)
		{
			switch(_colisions[_ii][6])
				{
					case "solid_collision":
						var _colision_normal = _colisions[_ii][1];
			
						_delta_flat_shift[0] -=	_colision_normal[0];
						_delta_flat_shift[1] -=	_colision_normal[1];
						_delta_flat_shift[2] -=	_colision_normal[2];
						break;
					case "slow_099":	_speed_multipler *= 0.99;	break;
				}
		}
	
	var _delta_pack = [_delta_flat_shift,_speed_multipler];
	return(_delta_pack);
}