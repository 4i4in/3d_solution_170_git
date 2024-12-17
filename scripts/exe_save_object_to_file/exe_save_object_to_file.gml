function exe_save_object_to_file(_temp_o)
{
	var _file_name = _temp_o.character_sheet.file_name
	var _file_directory = _temp_o.character_sheet.file_directory
	var _file = file_text_open_write(working_directory + string(_file_directory) + string(_file_name));
	var _temp_parse = json_stringify(_temp_o);
	file_text_write_string(_file, _temp_parse);
	file_text_close(_file);
}