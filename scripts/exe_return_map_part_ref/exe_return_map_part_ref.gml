function exe_return_map_part_ref(_obj)
{
	
	//bring correct values back
	map3d.world_settings.world_sqr_size =	variable_clone(map3d.keep_world_settings.world_sqr_size);
	map3d.world_settings.world_x_start =	variable_clone(map3d.keep_world_settings.world_x_start);
	map3d.world_settings.world_y_start =	variable_clone(map3d.keep_world_settings.world_y_start);
	map3d.world_settings.world_z_start =	variable_clone(map3d.keep_world_settings.world_z_start);
	map3d.world_settings.chunknumber =		variable_clone(map3d.keep_world_settings.chunknumber);
			
	var _sign_off = 0;
	if struct_get(_obj.control_method, "phy_map_part") != undefined
		{
			var _Xpos_part = (_obj.part_vsubmit[0][0] - map3d.world_settings.world_x_start) div (map3d.world_settings.map_part_size/map3d.world_settings.chunknumber_in_map_part);
			var _Ypos_part = (_obj.part_vsubmit[0][1] - map3d.world_settings.world_y_start) div (map3d.world_settings.map_part_size/map3d.world_settings.chunknumber_in_map_part);
			var _Zpos_part = (_obj.part_vsubmit[0][2] - map3d.world_settings.world_z_start) div (map3d.world_settings.map_part_size/map3d.world_settings.chunknumber_in_map_part);
			
			var _map_part_max_num = (map3d.world_settings.world_sqr_size div map3d.world_settings.map_part_size)+1;
			_map_part_max_num *= map3d.world_settings.chunknumber_in_map_part;
			
			var _out_of_range = 0;
			if _Xpos_part < 0	{_out_of_range = 1;};
			if _Xpos_part > _map_part_max_num-1 {_out_of_range = 1;};
			if _Ypos_part < 0	{_out_of_range = 1;};
			if _Ypos_part > _map_part_max_num-1 {_out_of_range = 1;};
			if _Zpos_part < 0	{_out_of_range = 1;};
			if _Zpos_part > _map_part_max_num-1 {_out_of_range = 1;};
			
			if _out_of_range < 1
				{
					_Xpos_part -= floor(map3d.world_settings.chunknumber_in_map_part/2);	_Ypos_part -= floor(map3d.world_settings.chunknumber_in_map_part/2);	_Zpos_part -= floor(map3d.world_settings.chunknumber_in_map_part/2);
					if _Xpos_part < 0	{_Xpos_part = 0;};	if _Ypos_part < 0	{_Ypos_part = 0;};	if _Zpos_part < 0	{_Zpos_part = 0;};
		
					_obj.control_method.phy_map_part = [_Xpos_part,_Ypos_part,_Zpos_part];
		
					map3d.world_settings.world_sqr_size = variable_clone(map3d.world_settings.map_part_size);
					map3d.world_settings.world_x_start = variable_clone(_Xpos_part * map3d.world_settings.chunksize);
					map3d.world_settings.world_y_start = variable_clone(_Ypos_part * map3d.world_settings.chunksize);
					map3d.world_settings.world_z_start = variable_clone(_Zpos_part * map3d.world_settings.chunksize);
					map3d.world_settings.chunknumber =	variable_clone(map3d.world_settings.chunknumber_in_map_part);
					
					map3d.static_colider_arr = map3d.map_part_static_colider_arr[_Xpos_part][_Ypos_part][_Zpos_part];
					
					map3d.world_settings.perform_fast_check = 1;
				}
			else	{_sign_off = 1;};
			
		}
	else	{_sign_off = 1;};
	
	if _sign_off  > 0
		{
			map3d.world_settings.world_sqr_size =	variable_clone(map3d.keep_world_settings.world_sqr_size);
			map3d.world_settings.world_x_start =	variable_clone(map3d.keep_world_settings.world_x_start);
			map3d.world_settings.world_y_start =	variable_clone(map3d.keep_world_settings.world_y_start);
			map3d.world_settings.world_z_start =	variable_clone(map3d.keep_world_settings.world_z_start);
			map3d.world_settings.chunknumber =		variable_clone(map3d.keep_world_settings.chunknumber);
			
			map3d.static_colider_arr = map3d.all_static_colider_arr;
			
			map3d.world_settings.perform_fast_check = 0;
		}
		
	return(_obj);
}