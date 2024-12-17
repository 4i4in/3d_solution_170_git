function exe_return_pixel_colors_at(_qx,_qy)
{
	var _color_pack = -1;
	switch(menus.graphic_control.split_screen)
		{
			case "none":
				var _col = surface_getpixel_ext(cam_struct.cam1.surf_color, floor(_qx/2),floor(_qy/2));
				//menus.srf_by_mouse_menu.color_pixel  = [_col,"R"+string(colour_get_red(_col)),"G"+string(colour_get_green(_col)),"B"+string(colour_get_blue(_col))];
				menus.srf_by_mouse_menu.color_pixel = _col;
				
				var _col = surface_getpixel_ext(cam_struct.cam1.surf_normals, floor(_qx/2),floor(_qy/2));
				//menus.srf_by_mouse_menu.normal_pixel = [_col,"X"+string(	(colour_get_red(_col)*2)-255	),"Y"+string(	(colour_get_green(_col)*2)-255	),"Z"+string(	(colour_get_blue(_col)*2)-255	)];
				menus.srf_by_mouse_menu.normal_pixel = _col;
				
				 var _col = surface_getpixel_ext(cam_struct.cam1.surf_depth, floor(_qx/2),floor(_qy/2));
				 menus.srf_by_mouse_menu.float_pixel = _col;
				 
				 var _col = surface_getpixel_ext(cam_struct.cam1.surf_xyz, floor(_qx/2),floor(_qy/2));
				 menus.srf_by_mouse_menu.xyz_pixel = _col;
				 
				 _color_pack = 1;
				break;
			case "vertical":
				break;
			case "horizontal":
				break;
		}
	return(_color_pack);
}