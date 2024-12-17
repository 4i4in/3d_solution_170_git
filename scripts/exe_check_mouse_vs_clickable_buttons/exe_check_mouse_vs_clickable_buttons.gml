function exe_check_mouse_vs_clickable_buttons()
{
	current_restricted = exe_return_mouse_in_restricted_01();
	if  current_restricted > -1
		{
			exe_swap_mouseover_picture(mouse_struct.mx,mouse_struct.my);
			if mouse_struct.mlbutt	{	exe_left_click_icon(mouse_struct.mx,mouse_struct.my);	};
			if mouse_struct.mrbutt	{	exe_right_click_icon(mouse_struct.mx,mouse_struct.my);	};
		}
	else
		{
			exe_force_mouseover_false();
		}
}