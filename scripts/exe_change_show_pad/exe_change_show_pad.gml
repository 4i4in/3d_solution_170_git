function exe_change_show_pad(_carry)
{
	var _current_pad = menus.pad_menu.show_pad;
	_current_pad += _carry[0];
	if _current_pad < 0 {_current_pad = array_length(pad_struct.pad_array) -1;};
	if _current_pad > array_length(pad_struct.pad_array) -1	{_current_pad = 0;};
	menus.pad_menu.show_pad = _current_pad;
	
	reset_current_menu_array = 1;
}