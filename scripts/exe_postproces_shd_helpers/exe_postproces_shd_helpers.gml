function exe_postproces_shd_helpers(_current_cam)
{
	//surface_depth_disable(true);
	surface_set_target(_current_cam.surf_postproces);
	
	shader_set(shd_postproces_helpers);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgh"), 1.0/(dgh/1));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgh"), 1.0/(dgh/1));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_postproces_helpers, "dgh"), 1.0/(dgh/2));		
				break;
		}
	
	texture_set_stage(	shader_get_sampler_index(shd_postproces_helpers,"surf_helpers")	,surface_get_texture(_current_cam.surf_helpers));
	
	if surface_exists(_current_cam.surf_postproces)	{draw_surface_ext(_current_cam.surf_postproces,0,0,1,1,0,-1,1);};
	
	surface_reset_target();
	shader_reset();
	//surface_depth_disable(false);
}