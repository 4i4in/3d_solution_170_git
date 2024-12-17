function exe_mouse_reaction_01()
{
	mouse_struct.mx = window_mouse_get_x();//mouse_x;
	mouse_struct.my = window_mouse_get_y();//mouse_y;
	if mouse_struct.mtime < 0
		{
			if mouse_check_button(mb_left)	&& !mouse_check_button(mb_right)	&& !mouse_check_button(mb_middle)
				{	
					mouse_struct.mlbutt = 1;	
					mouse_struct.mtime	=	mouse_struct.mcool;
				};
				
			if mouse_check_button(mb_right)		&& !mouse_check_button(mb_left)		&& !mouse_check_button(mb_middle)
				{	
					mouse_struct.mrbutt = 1;
					mouse_struct.mtime	=	mouse_struct.mcool;
				};
			if mouse_check_button(mb_middle)	&& !mouse_check_button(mb_left)	&& !mouse_check_button(mb_right)
				{	
					mouse_struct.midbutt = 1;
					mouse_struct.mtime	=	mouse_struct.mcool;
				};
		}
	else
		{
			mouse_struct.mlbutt = 0;
			mouse_struct.mrbutt = 0;
			mouse_struct.midbutt = 0;
		};
	
	if mouse_struct.mx < mouse_struct.screenEdge	{mouse_struct.Lscreen = 1;} else	{mouse_struct.Lscreen = 0;};
	if mouse_struct.mx > (dgw - mouse_struct.screenEdge)	{mouse_struct.Rscreen = 1;} else	{mouse_struct.Rscreen = 0;};
	if mouse_struct.my < mouse_struct.screenEdge	{mouse_struct.Tscreen = 1;} else	{mouse_struct.Tscreen = 0;};
	if mouse_struct.my > (dgh - mouse_struct.screenEdge)	{mouse_struct.Bscreen = 1;} else	{mouse_struct.Bscreen = 0;};
	
	if mouse_wheel_up()	{mouse_struct.wUD = 1;}
	else if mouse_wheel_down()	{mouse_struct.wUD = -1;}
	else {mouse_struct.wUD = -0;}
	
	mouse_struct.function_executed = 0;
	mouse_struct.mtime--;
	if mouse_struct.mtime < -30	{	mouse_struct.mtime = -1;	};
}