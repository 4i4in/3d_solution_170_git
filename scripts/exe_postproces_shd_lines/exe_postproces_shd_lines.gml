function exe_postproces_shd_lines(_current_cam)
{
	surface_set_target(_current_cam.surf_postproces);
	
	shader_set(shd_lines_01);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "dgh"), 1.0/(dgh/1));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "dgh"), 1.0/(dgh/1));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "dgw"), 1.0/(dgw/1));
			shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "dgh"), 1.0/(dgh/2));		
				break;
		}
	
	
	shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "_check_distance_limit"), _current_cam.shader_outlines[1]);
	shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "_treshold_dist1"), _current_cam.shader_outlines[2]);
	shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "_line_thicknes_max"), _current_cam.shader_outlines[3]);
	
	if menus.obj_editor.load_to_screen > 0	{	
												shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "_mark_hash"), menus.obj_editor.obj_hash);	
												shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "_mark_part"), menus.obj_editor.show_page2[0]);	
											}
	else									{	
												shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "_mark_hash"), -1.);	
												shader_set_uniform_f(	shader_get_uniform(shd_lines_01, "_mark_part"), -1.);
											}
	
	
	texture_set_stage(	shader_get_sampler_index(shd_lines_01,"surf_color")	,surface_get_texture(_current_cam.surf_color));
	texture_set_stage(	shader_get_sampler_index(shd_lines_01,"surf_normals")	,surface_get_texture(_current_cam.surf_postproces_normals));
	texture_set_stage(	shader_get_sampler_index(shd_lines_01,"surf_depth")	,surface_get_texture(_current_cam.surf_depth));
	texture_set_stage(	shader_get_sampler_index(shd_lines_01,"surf_xyz")	,surface_get_texture(_current_cam.surf_xyz));
	
	if surface_exists(_current_cam.surf_postproces)	{draw_surface_ext(_current_cam.surf_postproces,0,0,1,1,0,-1,1);};
	
	surface_reset_target();
	shader_reset();
}