function exe_check_form_menu_with_auto_update()
{
	if array_length(control_array.current_menu_array) > 0
		{
			var _reset = 0;
			var _menus = struct_get_names(menus);
			for(var _ii = 0; _ii < array_length(_menus); _ii++)
				{
					var _menu_name = _menus[_ii];
					if	menus[$ _menu_name][$ "load_to_screen"] > 0	&&
						menus[$ _menu_name][$ "minimised"] < 1	&&
						menus[$ _menu_name][$ "auto_update"] > 0
						{
							if game_time mod menus[$ _menu_name][$ "auto_update_time"] == 0	{_reset=1;break;};
						}
				}
			if _reset > 0 {control_array.current_menu_array = [];};
		}
}