function exe_return_part_vbuff_by_reference(_temp_o,_dest,_part)//part can be used if only one vbuff is to be changed fast
{
	var _part_vbuff_pack = [];
	switch(_dest)
		{
			case "visible":		var _vbuff_list = _temp_o.part_vbuff_load_reference;			break;
			case "helper":		var _vbuff_list = _temp_o.part_vbuff_helper_load_reference;		break;
			case "colider":		var _vbuff_list = _temp_o.part_vbuff_colider_load_reference;	break;
		}
	if _part != undefined
		{
			var _ii = _part;
			//rest same as below but for one part only
			var _vbuff_source =		variable_clone(	exe_return_vbuff_by_reference(_vbuff_list[_ii][0])	);
			var _vbuff_scale =		_vbuff_list[_ii][1];
			var _vbuff_transform =	_vbuff_list[_ii][2];

			//exception for simplicity helper dir arrow
			if _vbuff_source == "vbuff_dir_arrow"	{	_vbuff_source =		exe_vbuff_dir_arrow_return_scalable(real(_vbuff_scale));};
			else	{	_vbuff_source = exe_scale_buff_by_code(_vbuff_source, _vbuff_scale);	};
			
			switch(_dest)
				{
					case "visible":		if _temp_o.part_show_source[_part] != undefined	{vertex_delete_buffer(_temp_o.part_show_source[_part])};
										_temp_o.part_show_source[_part] =		variable_clone(_vbuff_source);
										break;
								
					case "helper":		if _temp_o.part_helpers_source[_part] != undefined	{vertex_delete_buffer(_temp_o.part_helpers_source[_part])};
										_temp_o.part_helpers_source[_part] =	variable_clone(_vbuff_source);
										break;
								
					case "colider":		if _temp_o.part_colisions_source[_part] != undefined	{vertex_delete_buffer(_temp_o.part_colisions_source[_part])};
										_temp_o.part_colisions_source[_part] =	variable_clone(_vbuff_source);
										break;
				}
		}
	else
		{
			for(var _ii = 0; _ii < array_length(_vbuff_list); _ii++)
				{
					var _vbuff_source =		variable_clone(	exe_return_vbuff_by_reference(_vbuff_list[_ii][0])	);
					var _vbuff_scale =		_vbuff_list[_ii][1];
					var _vbuff_transform =	_vbuff_list[_ii][2];

					//exception for simplicity helper dir arrow
					if _vbuff_source == "vbuff_dir_arrow"	{	_vbuff_source =		exe_vbuff_dir_arrow_return_scalable(real(_vbuff_scale));};
					else	{	_vbuff_source = exe_scale_buff_by_code(_vbuff_source, _vbuff_scale);	};
			
					array_push(_part_vbuff_pack,_vbuff_source);
				}

			switch(_dest)
				{
					case "visible":		_temp_o.part_show_source =		variable_clone(_part_vbuff_pack);
										break;
								
					case "helper":		_temp_o.part_helpers_source =	variable_clone(_part_vbuff_pack);
										break;
								
					case "colider":		_temp_o.part_colisions_source =	variable_clone(_part_vbuff_pack);
										break;
				}
		}
	return(_temp_o);
}