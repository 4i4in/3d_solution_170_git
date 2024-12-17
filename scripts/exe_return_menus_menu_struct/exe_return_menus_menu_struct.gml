function exe_return_menus_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 28.,	menu_ysize : 1.,
			xref : 0.5,	
			yref : floor(dgh/control_array.tile_size) - 1.,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 0,	auto_update_time : 1,
		};
	return(_struct);
}