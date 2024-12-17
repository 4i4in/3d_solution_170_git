function exe_scale_buff_by_code(_vbuff_source,_code)
{
	if string_starts_with(_code,"N")	{}
	else
		{
			var _scale = real(_code);
			_vbuff_source = exe_scale_buff_by_value(_vbuff_source,_scale);
		}
	

	return(_vbuff_source);
}