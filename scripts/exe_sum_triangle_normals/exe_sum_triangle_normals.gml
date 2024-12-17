function exe_sum_triangle_normals(_colisions,_delta)
{
	for(var _ii = 0; _ii < array_length(_colisions); _ii++)
		{
			var _colision_normal = _colisions[_ii][1];
			
			_delta[0] -= _colision_normal[0];
			_delta[1] -= _colision_normal[1];
			_delta[2] -= _colision_normal[2];
		}
	return(_delta);
}