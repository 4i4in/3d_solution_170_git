function exe_wrap_map(_posMat)
{
	if _posMat[12] < map3d.world_settings.world_x_start	{_posMat[12] += map3d.world_settings.world_sqr_size;};
	if _posMat[13] < map3d.world_settings.world_y_start	{_posMat[13] += map3d.world_settings.world_sqr_size;};
	if _posMat[14] < map3d.world_settings.world_z_start	{_posMat[14] += map3d.world_settings.world_sqr_size;};
	
	if _posMat[12] > map3d.world_settings.world_x_start + map3d.world_settings.world_sqr_size	
		{_posMat[12] -= map3d.world_settings.world_sqr_size;};
	if _posMat[13] > map3d.world_settings.world_y_start	+ map3d.world_settings.world_sqr_size
		{_posMat[13] -= map3d.world_settings.world_sqr_size;};
	if _posMat[14] > map3d.world_settings.world_z_start	+ map3d.world_settings.world_sqr_size
		{_posMat[14] -= map3d.world_settings.world_sqr_size;};
	
	
	_posMat = exe_matrix_orthonormalize(_posMat);
	return(_posMat);
}