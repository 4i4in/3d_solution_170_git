function exe_typing_by_keyboard()
{
	if keyboard_struct.writing_on > 0	&& keyboard_struct.ktime < 0
		{
			var _start_txt = keyboard_struct.text_input;
			
			var _sign = exe_return_sign(keyboard_struct.SHIFT,keyboard_struct.CAPSLOCK);
			//check if string legal
			if _sign != ""	
				{
					keyboard_struct.ktime = 5;
					_start_txt += _sign;	keyboard_struct.text_input = _start_txt;
				}
			else
				{
					if keyboard_struct.DEL > 0	{_start_txt = "";	keyboard_struct.text_input = _start_txt;	keyboard_struct.ktime = 5;};
					if keyboard_struct.BACKSPACE > 0	
						{		
							_start_txt = string_delete(_start_txt,string_length(_start_txt),1);
							keyboard_struct.text_input = _start_txt;	keyboard_struct.ktime = 5;
						};
					if keyboard_struct.ENTER > 0	||	keyboard_struct.ESC > 0//check and return
						{
							if keyboard_struct.ESC > 0	{_start_txt = "";};
							
							if _start_txt = ""	{_start_txt = keyboard_struct.write_default};
							if keyboard_struct.write_extension != ""
								{
									_start_txt += string(keyboard_struct.write_extension);
								}
							
							switch(keyboard_struct.writing_to[0])
								{
									case "obj_editor_S1_S2":
										var _selected_object_type = menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]];
										var _obj = map3d[$ _selected_object_type][menus.obj_editor.obj_num];
										_obj[$ keyboard_struct.writing_to[1]][$ keyboard_struct.writing_to[2]] = _start_txt;
										break;
									case "obj_editor_S1_show_page2":
										var _selected_object_type = menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]];
										var _obj = map3d[$ _selected_object_type][menus.obj_editor.obj_num];
										_obj[$ keyboard_struct.writing_to[1]][menus.obj_editor.show_page2[0]] = _start_txt;
										break;	
										
								}
							keyboard_struct.write_default = "";
							keyboard_struct.writing_to = -1;
							keyboard_struct.writing_on = 0;
							keyboard_struct.illegal_sign = [];
							keyboard_struct.text_input = "";
							keyboard_struct.write_extension = "";
							
						}
				}
			control_array.current_menu_array = [];
		}
}