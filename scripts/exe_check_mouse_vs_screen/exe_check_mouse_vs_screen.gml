function exe_check_mouse_vs_screen()
{
	if  current_restricted < 0
		{
			if	mouse_struct.mlbutt > 0	&&	menus.srf_by_mouse_menu.load_to_screen > 0	&&
				menus.srf_by_mouse_menu.minimised < 1	
				{
					exe_return_pixel_colors_at(mouse_struct.mx,mouse_struct.my);	
					exe_explain_pixel_colors_check();
					reset_current_menu_array = 1;
				};
			if	mouse_struct.mlbutt > 0	&&	menus.obj_editor.load_to_screen > 0	&&
				menus.obj_editor.select_by_mouse
				{
					var _valid = exe_return_pixel_colors_at(mouse_struct.mx,mouse_struct.my);
					if _valid < 0 {exit;};
					menus.obj_editor.obj_hash =	exe_return_from_srf_pixel_color("hash");
					if menus.obj_editor.obj_hash > -1
						{
							var _return_obj_and_array = exe_return_obj_and_array(menus.obj_editor.obj_hash);
							if _return_obj_and_array[0] > -1	&& _return_obj_and_array[1] > -1
								{
									menus.obj_editor.show_page1[0] = _return_obj_and_array[0];
									menus.obj_editor.obj_num = _return_obj_and_array[1];
									menus.obj_editor.show_page2[0] = exe_return_from_srf_pixel_color("part");
								}
						}
					reset_current_menu_array = 1;
				}
		}
}