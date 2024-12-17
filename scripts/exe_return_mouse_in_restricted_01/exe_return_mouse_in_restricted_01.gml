function exe_return_mouse_in_restricted_01()
{
	var _in_restricted = -1;
	for(var _ii = 0; _ii < array_length(click_restricted); _ii++)
		{
			var _this_restricted = click_restricted[_ii];
			var _xx1 = _this_restricted[0];
			var _yy1 = _this_restricted[1];
			var _xx2 = _this_restricted[2];
			var _yy2 = _this_restricted[3];
					
			if point_in_rectangle(mouse_struct.mx,mouse_struct.my,_xx1,_yy1,_xx2,_yy2)
				{
					_in_restricted = _ii;
				}
		}
	return(_in_restricted);
}