function exe_wrap_map_by_trigger(_posMat,_wrap_trigger)
{
	_posMat[12] += _wrap_trigger[0] * map3d.world_settings.world_sqr_size;
	_posMat[13] += _wrap_trigger[1] * map3d.world_settings.world_sqr_size;
	_posMat[14] += _wrap_trigger[2] * map3d.world_settings.world_sqr_size;
	
	_posMat = exe_matrix_orthonormalize(_posMat);
	return(_posMat);
}