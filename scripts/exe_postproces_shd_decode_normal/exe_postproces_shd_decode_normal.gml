function exe_postproces_shd_decode_normal(_current_cam)
{
	surface_set_target(_current_cam.surf_postproces_normals);
	
	shader_set(shd_decode_normal);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_decode_normal, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_decode_normal, "dgh"), 1.0/(dgh/1));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_decode_normal, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_decode_normal, "dgh"), 1.0/(dgh/1));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_decode_normal, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_decode_normal, "dgh"), 1.0/(dgh/2));		
				break;
		}
	
	texture_set_stage(	shader_get_sampler_index(shd_decode_normal,"surf_color")	,surface_get_texture(_current_cam.surf_color));
	//texture_set_stage(	shader_get_sampler_index(shd_blur_distance_01,"surf_normals")	,surface_get_texture(_current_cam.surf_normals));
	//texture_set_stage(	shader_get_sampler_index(shd_blur_distance_01,"surf_depth")	,surface_get_texture(_current_cam.surf_depth));

	if surface_exists(_current_cam.surf_postproces_normals)	{draw_surface_ext(_current_cam.surf_postproces_normals,0,0,1,1,0,-1,1);};
	
	surface_reset_target();
	shader_reset();
}