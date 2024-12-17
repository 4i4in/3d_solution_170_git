function exe_return_hang_plane_direction(_x,_y)
{
	var _direction_word = "";
	
	if abs(_x) > abs(_y)
		{
			if abs(_x) > 0.3
				{
					switch(sign(_x))
						{
							case 1:		_direction_word += "left";	break;	
							case -1:	_direction_word += "right";	break;	
						}
				}
		}
	else
		{
			if abs(_y) > 0.3
				{
					switch(sign(_y))
						{
							case 1:		_direction_word += "fwd";	break;	
							case -1:	_direction_word += "back";	break;	
						}
				}
		}
	
	return(_direction_word);
}