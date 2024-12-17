function exe_return_pad_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 12.,	menu_ysize : 5.3,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 1.5,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 1,	auto_update_time : 1,
			show_pad : 0,
			help : 0,	help_ysize : 4.4,
		};
	return(_struct);
}