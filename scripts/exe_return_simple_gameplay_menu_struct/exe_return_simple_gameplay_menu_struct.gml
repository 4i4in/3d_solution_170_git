function exe_return_simple_gameplay_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 8,	menu_ysize : 8,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 5,
			minimised : 1,
			load_to_screen : 0,
			auto_update : 1,	auto_update_time : 1,	
			
			activity_control : [],
			obj_list_bar : [0,0,7],
		};
	return(_struct);
}