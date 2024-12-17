function exe_time_control_pause(_carry)
{
	menus.time_control_menu.pause = _carry[0];
	if _carry[0] = 2	{mouse_struct.mtime = menus.time_control_menu.click_speed;};
	reset_current_menu_array = 1;
}