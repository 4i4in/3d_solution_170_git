function exe_min_max_menu_by_click(_carry)
{
	var _target_menu = string(_carry[0]);
	if string_starts_with(_target_menu,"menus.")
		{
			_target_menu = string_delete(_target_menu,1,6);
			menus[$ _target_menu][$ "minimised"] = !menus[$ _target_menu][$ "minimised"];
		}
	reset_current_menu_array = 1;
}