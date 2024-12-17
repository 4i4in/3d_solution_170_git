function exe_return_climb_plane_direction(_x,_y)
{
	var _direction_word = "";
	
	if abs(_x) > 0.3
		{
			switch(sign(_x))
				{
					case 1:		_direction_word += "left";	break;	
					case -1:	_direction_word += "right";	break;	
				}
		}
	if abs(_y) > 0.3
		{
			switch(sign(_y))
				{
					case 1:		_direction_word += "up";	break;	
					case -1:	_direction_word += "down";	break;	
				}
		}
	
	return(_direction_word);
}