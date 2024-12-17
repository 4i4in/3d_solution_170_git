function exe_obj_editor_01_switch(_carry)
{
	switch(array_length(_carry))
		{
			case 1:	menus.obj_editor[$ _carry[0]] = !menus.obj_editor[$ _carry[0]];	break;
			case 2:	menus.obj_editor[$ _carry[0]][_carry[1]] = !menus.obj_editor[$ _carry[0]][_carry[1]];	break;
		}
		
	reset_current_menu_array = 1;
}