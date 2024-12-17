function exe_obj_editor_change_anim_lerp_timer(_carry)
{
	switch(_carry[1])
		{
			case "add" : 
				menus.obj_editor.anim_lerp_timer += _carry[0];
				break;
			case "set" : 
				menus.obj_editor.anim_lerp_timer = _carry[0];
				break;
		}
	mouse_struct.mtime = 3;
	reset_current_menu_array = 1;
}