function exe_preset_pad_mapping()
{
	var _maping_arr = array_create(max_pads);
	for(var _ii = 0; _ii < array_length(_maping_arr); _ii++)
		{
			var _pad_map_struct = exe_return_logitech_F310();
			array_set(_maping_arr,_ii,_pad_map_struct);
		};
	return(_maping_arr);
}