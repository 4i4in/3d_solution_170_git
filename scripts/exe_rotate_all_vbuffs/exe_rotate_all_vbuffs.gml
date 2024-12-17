function exe_rotate_all_vbuffs(_temp_o,_delete,dont_ignore)//show, helper, colider
{
	if dont_ignore = undefined	{	dont_ignore = [1,1,1];	};
	
	for(var _ii = 0; _ii < array_length(_temp_o.part_vsubmit); _ii++)
		{
			if _delete > 0//rotating out of creation process
				{
					if dont_ignore[0]	{	vertex_delete_buffer(_temp_o.part_show_curent[_ii]);	};
					if dont_ignore[1]	{	vertex_delete_buffer(_temp_o.part_helpers_curent[_ii]);	};
					if dont_ignore[2]	{	vertex_delete_buffer(_temp_o.part_colisions_curent[_ii]);	};
				}
				
			if dont_ignore[0]	{	_temp_o.part_show_curent[_ii] =			exe_rotate_buff_by_mat(_temp_o.part_show_source[_ii],		_temp_o.part_vsubmit[_ii]);	};
			if dont_ignore[1]	{	_temp_o.part_helpers_curent[_ii] =		exe_rotate_buff_by_mat(_temp_o.part_helpers_source[_ii],	_temp_o.part_vsubmit[_ii]);	};
			if dont_ignore[2]	{	_temp_o.part_colisions_curent[_ii] =	exe_rotate_buff_by_mat(_temp_o.part_colisions_source[_ii],	_temp_o.part_vsubmit[_ii]);	};

		}
	return(_temp_o);
}