function exe_switch_show_surf(_carry)
{
	switch(menus.graphic_control.show_surf)
		{
			case "surf_separate":
				menus.graphic_control.show_surf = "surf_single";
				break;
			case "surf_single":
				menus.graphic_control.show_surf = "surf_separate";
				break;
		}
	
	reset_current_menu_array = 1;
}