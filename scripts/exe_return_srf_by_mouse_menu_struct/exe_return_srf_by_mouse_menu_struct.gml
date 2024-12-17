function exe_return_srf_by_mouse_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 6.,	menu_ysize : 10.,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 4.,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 1,	auto_update_time : 1,
			
			color_pixel : -1,	normal_pixel : -1,	float_pixel : -1,	xyz_pixel : -1,
			color_pixel_translated : "left click on terrain",	normal_pixel_translated : "",
			float_pixel_translated : "",	xyz_pixel_translated : "",
		};
	return(_struct);
}