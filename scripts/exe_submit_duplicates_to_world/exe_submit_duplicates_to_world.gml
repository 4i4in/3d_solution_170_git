function exe_submit_duplicates_to_world(_buff_here,_tex_here,_x,_y,_z)
{
	exe_submit_to_world(_buff_here,_tex_here,_x + map3d.world_settings.world_sqr_size, _y, _z);
	exe_submit_to_world(_buff_here,_tex_here,_x - map3d.world_settings.world_sqr_size, _y, _z);
											
	exe_submit_to_world(_buff_here,_tex_here,_x, _y + map3d.world_settings.world_sqr_size, _z);
	exe_submit_to_world(_buff_here,_tex_here,_x, _y - map3d.world_settings.world_sqr_size, _z);
											
	exe_submit_to_world(_buff_here,_tex_here,_x + map3d.world_settings.world_sqr_size, _y + map3d.world_settings.world_sqr_size, _z);
	exe_submit_to_world(_buff_here,_tex_here,_x - map3d.world_settings.world_sqr_size, _y - map3d.world_settings.world_sqr_size, _z);
											
	exe_submit_to_world(_buff_here,_tex_here,_x - map3d.world_settings.world_sqr_size, _y + map3d.world_settings.world_sqr_size, _z);
	exe_submit_to_world(_buff_here,_tex_here,_x + map3d.world_settings.world_sqr_size, _y - map3d.world_settings.world_sqr_size, _z);
}