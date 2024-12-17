function exe_play_pause_obj_activity_control()
{
	if	menus.time_control_menu.load_to_screen > 0	&&	menus.time_control_menu.minimised < 1	&&
		array_length(menus.time_control_menu.activity_control) > 0
		{
			switch(menus.time_control_menu.pause)
				{
					case 0: 
						break;	
					case 1:
						for(var _ii = 0; _ii < array_length(menus.time_control_menu.activity_control); _ii++)
							{
								if menus.time_control_menu.activity_control[_ii][3] < 1	//is not always active [3]
									{
										var _hash = menus.time_control_menu.activity_control[_ii][1];
										var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
										var _obj = map3d.controlable_objects[_nn];
										_obj.control_method.active[0] = 0;
										menus.time_control_menu.activity_control[_ii][2] = 0;
									}
							}
						//time calc
						if (game_time-1) == menus.time_control_menu.frame_stamp
							{
								menus.time_control_menu.frame_time -= current_time;
							}
						break;
					case 2:
						for(var _ii = 0; _ii < array_length(menus.time_control_menu.activity_control); _ii++)
							{
								if	menus.time_control_menu.activity_control[_ii][3] < 1	&&	//is not always active [3]
									menus.time_control_menu.activity_control[_ii][4] > 0		//is step active
									{
										var _hash = menus.time_control_menu.activity_control[_ii][1];
										var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
										var _obj = map3d.controlable_objects[_nn];
										_obj.control_method.active[0] = 1;
										menus.time_control_menu.activity_control[_ii][2] = 1;
									}
							}
						menus.time_control_menu.frame_stamp = game_time;
						menus.time_control_menu.frame_time = current_time;
						menus.time_control_menu.pause = 1;
						exe_kill_throw_helpers();
						break;
				}
		}
	else	{exe_kill_throw_helpers();};
}