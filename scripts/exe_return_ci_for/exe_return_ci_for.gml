function exe_return_ci_for(_struct,_pad_struct,_key)
{
	var _result = 0;
	
			for(var _ii = 0; _ii < array_length(_struct[$ _key][0]);_ii++)
				{
					var _key_here = _struct[$ _key][0][_ii];
					var _mul_here = _struct[$ _key][1][_ii];
					if struct_exists(_pad_struct,_key_here)
						{
							_result += _pad_struct[$ _key_here] * _mul_here;
						}
				}
	return(_result);
}