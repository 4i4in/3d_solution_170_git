function exe_sum_colision_results(_delta,_colisions,_mul)
{
	var _speed_multipler = 1.;
	for(var _ii = 0; _ii < array_length(_colisions); _ii++)
		{
			switch(_colisions[_ii][6])
				{
					case "solid_collision":
						var _colision_normal = _colisions[_ii][1];
						_delta[0] -= _colision_normal[0]*_mul;
						_delta[1] -= _colision_normal[1]*_mul;
						_delta[2] -= _colision_normal[2]*_mul;
						break;
					case "slow_099":	_speed_multipler *= 0.99;	break;
				}
		}
	var _delta_pack = [_delta,_speed_multipler];
	return(_delta_pack);
}