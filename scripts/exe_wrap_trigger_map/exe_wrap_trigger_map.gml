function exe_wrap_trigger_map(_posMat,_wrap_trigger)
{
	if _posMat[12] < map3d.world_settings.world_x_start	{_wrap_trigger[0] =	1;};
	if _posMat[13] < map3d.world_settings.world_y_start	{_wrap_trigger[1] =	1;};
	if _posMat[14] < map3d.world_settings.world_z_start	{_wrap_trigger[2] =	1;};
	
	if _posMat[12] > map3d.world_settings.world_x_start + map3d.world_settings.world_sqr_size	
		{_wrap_trigger[0] =	-1;};
	if _posMat[13] > map3d.world_settings.world_y_start	+ map3d.world_settings.world_sqr_size
		{_wrap_trigger[1] =	-1;};
	if _posMat[14] > map3d.world_settings.world_z_start	+ map3d.world_settings.world_sqr_size
		{_wrap_trigger[2] =	-1;};
		
	return(_wrap_trigger);
}