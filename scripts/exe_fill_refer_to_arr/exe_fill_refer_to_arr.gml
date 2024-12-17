function exe_fill_refer_to_arr(_refer_to_arr)
{
	for(var _rta = 0; _rta < array_length(_refer_to_arr)-1; _rta++)
		{
			var _xref1 = _refer_to_arr[_rta][0];
			var _yref1 = _refer_to_arr[_rta][1];
			var _zref1 = _refer_to_arr[_rta][2];
			
			var _xref2 = _refer_to_arr[_rta+1][0];
			var _yref2 = _refer_to_arr[_rta+1][1];
			var _zref2 = _refer_to_arr[_rta+1][2];
			
			var _xstart = min(_xref1,_xref2);	var _xend = max(_xref1,_xref2)+1;
			var _ystart = min(_yref1,_yref2);	var _yend = max(_yref1,_yref2)+1;
			var _zstart = min(_zref1,_zref2);	var _zend = max(_zref1,_zref2)+1;
			
			if _xend - _xstart < 3	&&	_yend - _ystart < 3	&&	_zend - _zstart < 3
				{
					for(var _xx = _xstart; _xx < _xend; _xx++)
						{
							for(var _yy = _ystart; _yy < _yend; _yy++)
								{
									for(var _zz = _zstart; _zz < _zend; _zz++)
										{
											_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,[_xx,_yy,_zz]);
										}
								}
						}
				}
		}

	return(_refer_to_arr);
}