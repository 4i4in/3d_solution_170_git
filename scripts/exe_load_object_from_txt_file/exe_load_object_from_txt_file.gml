function exe_load_object_from_txt_file(_file_directory,_file_name)
{
	//var _loaded_file = file_text_open_read(working_directory + string(_file_directory) + string(_file_name));
	var _loaded_file = file_text_open_read(game_save_id + string(_file_directory) + string(_file_name));
	if _loaded_file < 0
		{
			_loaded_file = file_text_open_read(working_directory + string(_file_directory) + string(_file_name));
		}
	
	show_debug_message("_loaded_file id : " + string(_loaded_file));
	var _temp_o = "";
	while (!file_text_eof(_loaded_file)) {_temp_o += file_text_read_string(_loaded_file);};
	file_text_close(_loaded_file);
	
	_temp_o = json_parse(_temp_o);
	
	_temp_o = exe_fix_loaded_object(_temp_o);
	
	//clipboard_set_text(string(_temp_o));
	return(_temp_o);
}