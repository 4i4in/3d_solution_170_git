function exe_return_part_texture(_temp_o,_dest)
{
	var _part_texture_pack = [];
	switch(_dest)
		{
			case "visible":		var _tex_list = _temp_o.part_texture_load_reference;		break;
			case "helper":		var _tex_list = _temp_o.part_texture_helper_load_reference;	break;
		}
		
	for(var _ii = 0; _ii < array_length(_tex_list); _ii++)
		{
			var _part_pack = [];
			var _tex_pack = _tex_list[_ii];
			for(var _kk = 0; _kk < array_length(_tex_pack); _kk++)
				{
					var _tex_id = exe_return_texture_id(_tex_pack[_kk]);
					array_push(_part_pack,_tex_id);
				}
			array_push(_part_texture_pack,_part_pack);	
		}
		
	switch(_dest)
		{
			case "visible":		_temp_o.part_texture =		variable_clone(_part_texture_pack);	break;
			case "helper":		_temp_o.helper_texture =	variable_clone(_part_texture_pack);	break;
		}
	
	return(_temp_o);
}