function exe_arr_mul_arr_epsilon(_arr1,_arr2,_arrEps)
{
	for(var _ii = 0; _ii < array_length(_arr1); _ii++)
		{
			var _out = _arr1[_ii] * _arr2[_ii];
			if abs(_out) < _arrEps[_ii]	{_out = 0};
			_arr1[_ii] = _out;
		}
	return(_arr1);
}