function exe_switch_split_screen(_carry)
{
	switch(menus.graphic_control.split_screen)
		{
			case "none":
				menus.graphic_control.split_screen = "vertical";
				var _current_cam = cam_struct.cam1;	exe_destroy_cam_surf(_current_cam);
				_current_cam.aspect = 0.5*dgw/dgh;	exe_set_cam("cam1");
				var _current_cam = cam_struct.cam2;	exe_destroy_cam_surf(_current_cam);
				_current_cam.aspect = 0.5*dgw/dgh;	exe_set_cam("cam2");
				break;
			case "vertical":
				menus.graphic_control.split_screen = "horizontal";
				var _current_cam = cam_struct.cam1;	exe_destroy_cam_surf(_current_cam);
				_current_cam.aspect = 2*dgw/dgh;	exe_set_cam("cam1");
				var _current_cam = cam_struct.cam2;	exe_destroy_cam_surf(_current_cam);
				_current_cam.aspect = 2*dgw/dgh;	exe_set_cam("cam2");
				break;
			case "horizontal":
				menus.graphic_control.split_screen = "none";
				var _current_cam = cam_struct.cam1;	exe_destroy_cam_surf(_current_cam);
				_current_cam.aspect = dgw/dgh;	exe_set_cam("cam1");
				var _current_cam = cam_struct.cam2;	exe_destroy_cam_surf(_current_cam);
				_current_cam.aspect = dgw/dgh;	exe_set_cam("cam2");
				break;
		}
	
	reset_current_menu_array = 1;
}