function exe_time_control_menu_click_speed(_carry)
{
	menus.time_control_menu.click_speed += _carry[0];
	if menus.time_control_menu.click_speed < 1	{menus.time_control_menu.click_speed = 1;};
	if menus.time_control_menu.click_speed > 15	{menus.time_control_menu.click_speed = 15;};
	
	mouse_struct.mtime = 5;
	
	reset_current_menu_array = 1;
}