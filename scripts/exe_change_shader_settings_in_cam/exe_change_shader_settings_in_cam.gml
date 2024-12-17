function exe_change_shader_settings_in_cam(_carry)
{
	var _current_cam = menus.cam_menu.show_cam;
	var _current_cam_name = "cam"+string(_current_cam);
	
	var _curent_shader = cam_struct[$ _current_cam_name][$ _carry[0]];
	var _pos = _carry[1];
	var _value = _carry[2];
	var _command = _carry[3];
	
	switch(_carry[0])
		{
			case "shader_draw_grid":
				switch(_pos)
					{
						case 0:	_curent_shader[_pos] = !_curent_shader[_pos];	break;
						case 1:	case 2:	case 3:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							mouse_struct.mtime = 3;
							break;
						case 4:	case 5:	case 6:	
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 0.1	{_curent_shader[_pos] = 0.1;};
							mouse_struct.mtime = 3;
							break;
					}
					break;
			case "shader_blur_distance":
				switch(_pos)
					{
						case 0:	case 1: case 5:	_curent_shader[_pos] = !_curent_shader[_pos];	break;
						case 2:	case 8:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							mouse_struct.mtime = 3;
							break;
						case 3:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 16	{_curent_shader[_pos] = 16;};
							mouse_struct.mtime = 3;
							break;
						case 4:	case 11:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							if _curent_shader[_pos] > 8	{_curent_shader[_pos] = 8;};
							mouse_struct.mtime = 3;
							break;
						case 6:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 0.01	{_curent_shader[_pos] = 0.01;};
							if _curent_shader[_pos] > 0.99	{_curent_shader[_pos] = 0.99;};
							mouse_struct.mtime = 3;
							break;
						case 7:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1.01	{_curent_shader[_pos] = 1.01;};
							if _curent_shader[_pos] > 2.	{_curent_shader[_pos] = 2.;};
							mouse_struct.mtime = 3;
							break;
						case 9:	case 10:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 0.01	{_curent_shader[_pos] = 0.01;};
							if _curent_shader[_pos] > 1.	{_curent_shader[_pos] = 1.;};
							mouse_struct.mtime = 3;
							break;
					}
					break;
			case "shader_outlines":
				switch(_pos)
					{
						case 0:	_curent_shader[_pos] = !_curent_shader[_pos];	break;
						case 1:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 16	{_curent_shader[_pos] = 16;};
							mouse_struct.mtime = 3;
							break;
						case 2:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							mouse_struct.mtime = 3;
							break;
						case 3:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < 1	{_curent_shader[_pos] = 1;};
							if _curent_shader[_pos] > 7	{_curent_shader[_pos] = 7;};
							mouse_struct.mtime = 3;
							break;
					}
					break;
			case "shader_sol_pos":
				switch(_pos)
					{
						case 0:	case 1:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < -1.	{_curent_shader[_pos] = 1.;};
							if _curent_shader[_pos] > 1.	{_curent_shader[_pos] = -1.;};
							mouse_struct.mtime = 2;
							break;
						case 2:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < -1.	{_curent_shader[_pos] = -1.;};
							if _curent_shader[_pos] > 1.	{_curent_shader[_pos] = 1.;};
							mouse_struct.mtime = 2;
							break;
					}
					break;
			case "shader_sol_col":
				switch(_pos)
					{
						case 0:	case 1: case 2:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < -2.	{_curent_shader[_pos] = -2.;};
							if _curent_shader[_pos] > 2.	{_curent_shader[_pos] = 2.;};
							mouse_struct.mtime = 2;
							break;
					}
					break;
			case "ambient_NdotL":
				switch(_pos)
					{
						case 0:	case 1:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							if _curent_shader[_pos] < -2.	{_curent_shader[_pos] = -2.;};
							if _curent_shader[_pos] > 2.	{_curent_shader[_pos] = 2.;};
							mouse_struct.mtime = 2;
							break;
					}
					break;
			case "ambient_mul":
				switch(_pos)
					{
						case 0:	case 2: case 3:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							mouse_struct.mtime = 2;
							break;
						case 1: _curent_shader[_pos] = !_curent_shader[_pos];	break;
						
					}
					break;
			case "NdotL_lowpass":
				switch(_pos)
					{
						case 0: _curent_shader[_pos] = !_curent_shader[_pos];	break;
						case 1:	case 2:	case 3:
							_curent_shader[_pos] += _value;	
							if _command == "reset"	{_curent_shader[_pos] = _value};
							mouse_struct.mtime = 2;
							break;
						
					}
					break;
			case "throw_colisions_helpers":
				switch(_pos)
					{
						case 0:	_curent_shader[_pos] = !_curent_shader[_pos];	break;
					}
		}
	
	reset_current_menu_array = 1;
}