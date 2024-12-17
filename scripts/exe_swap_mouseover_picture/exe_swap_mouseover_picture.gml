function exe_swap_mouseover_picture(_mx,_my)
{
	for(var _ii = 0; _ii < array_length(control_array.current_menu_array); _ii++)
		{
			if point_in_rectangle(_mx,_my,
									control_array.current_menu_array[_ii][0],
									control_array.current_menu_array[_ii][1],
									control_array.current_menu_array[_ii][2],
									control_array.current_menu_array[_ii][3]
								)
					{	control_array.current_menu_array[_ii][6] = 1;	}
			else	{	control_array.current_menu_array[_ii][6] = 0;	}
		}
}