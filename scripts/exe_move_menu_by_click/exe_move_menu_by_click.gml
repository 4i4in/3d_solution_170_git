function exe_move_menu_by_click(_carry)
{
	var _target_menu = string(_carry[2]);
	if string_starts_with(_target_menu,"menus.")
		{
			_target_menu = string_delete(_target_menu,1,6);
			menus[$ _target_menu][$ "xref"] += (mouse_struct.mx - _carry[0])/control_array.tile_size;
			menus[$ _target_menu][$ "yref"] += (mouse_struct.my - _carry[1])/control_array.tile_size;
			mouse_struct.func_carry = ["move_menu_by_click",variable_clone(game_time),mouse_struct.mx,mouse_struct.my,variable_clone(_carry[2])];
		};
	mouse_struct.mtime = -1;
	reset_current_menu_array = 1;
}