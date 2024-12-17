function exe_change_page_in_menu(_carry)
{
	var _current_menu = menus[$ _carry[0]][$ _carry[1]];
	var _page_curent = menus[$ _carry[0]][$ _carry[1]][0];
	var _page_max = menus[$ _carry[0]][$ _carry[1]][1];
	
	_page_curent += _carry[2];
	if _page_curent > _page_max	{_page_curent = 0;};
	if _page_curent < 0	{_page_curent = _page_max;};
	menus[$ _carry[0]][$ _carry[1]][0] = _page_curent;
	
	if array_length(_carry) > 3
		{
			if _carry[3] != undefined	{	if 	_carry[3] == "fast"	{mouse_struct.mtime = 3;};	}
		}
		
	reset_current_menu_array = 1;
}