function exe_start_typing_and_return(_carry)
{
	keyboard_struct.write_default = variable_clone(_carry[3]);
	keyboard_struct.writing_to = _carry[0];
	keyboard_struct.writing_on = 1;
	keyboard_struct.illegal_sign = _carry[1];
	keyboard_struct.text_input = variable_clone(_carry[3]);
	keyboard_struct.write_extension = string(_carry[2]);
	
	if keyboard_struct.write_extension != ""
		{
			var _string = keyboard_struct.text_input;
			var _ext = keyboard_struct.write_extension;
			if string_ends_with(_string, _ext)
				{
					var _ext_L = string_length(_ext);
					_string = string_delete(_string,string_length(_string)-_ext_L+1,_ext_L);
					keyboard_struct.text_input = variable_clone(_string);
					keyboard_struct.write_default = variable_clone(_string);
				}
		}
		
	reset_current_menu_array = 1;
}