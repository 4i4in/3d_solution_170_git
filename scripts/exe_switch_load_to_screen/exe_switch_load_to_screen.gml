function exe_switch_load_to_screen(_carry)
{
	menus[$ _carry[0]][$ _carry[1]] = !menus[$ _carry[0]][$ _carry[1]];
	reset_current_menu_array = 1;
}