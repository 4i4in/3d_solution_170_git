function exe_swich_help_in_menu(_carry)
{
	var _target_menu = string(_carry[0]);
	if string_starts_with(_target_menu,"menus.")
		{
			_target_menu = string_delete(_target_menu,1,6);
			if menus[$ _target_menu][$ "help"] > 0
				{
					menus[$ _target_menu][$ "menu_ysize"] -= menus[$ _target_menu][$ "help_ysize"];
				}
			else
				{
					menus[$ _target_menu][$ "menu_ysize"] += menus[$ _target_menu][$ "help_ysize"];
				}
			menus[$ _target_menu][$ "help"] = ! menus[$ _target_menu][$ "help"];
			
		}
	
	reset_current_menu_array = 1;
}