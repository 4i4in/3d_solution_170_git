function exe_return_cam_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 6.5,	menu_ysize : 10.5,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 2.,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 1,	auto_update_time : 11,
			show_cam : 1,	show_page1 : [0,6],
		};
	return(_struct);
}