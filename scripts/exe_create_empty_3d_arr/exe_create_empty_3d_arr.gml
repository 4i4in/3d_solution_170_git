function exe_create_empty_3d_arr(_size)
{
	var _arr = array_create(_size);
	for(var _xx = 0; _xx < array_length(_arr); _xx++)
		{
			_arr[_xx] = array_create(_size);
		}
	for(var _xx = 0; _xx < array_length(_arr); _xx++)
		{
			for(var _yy = 0; _yy < array_length(_arr[_xx]); _yy++)
				{
					_arr[_xx][_yy] = array_create(_size);
				}
		}
	for(var _xx = 0; _xx < array_length(_arr); _xx++)
		{
			for(var _yy = 0; _yy < array_length(_arr[_xx]); _yy++)
				{
					for(var _zz = 0; _zz < array_length(_arr[_yy]); _zz++)
						{
							_arr[_xx][_yy][_zz] = [];
						}
				}
		}	
	return(_arr);
}