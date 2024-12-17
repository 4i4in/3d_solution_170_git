function exe_return_graphic_control_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 4.,	menu_ysize : 2.5,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 3.,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 0,	auto_update_time : 997,
			show_surf : "surf_single",
			split_screen : "none",
		};
	return(_struct);
}