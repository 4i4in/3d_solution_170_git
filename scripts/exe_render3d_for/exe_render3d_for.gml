function exe_render3d_for(_current_cam)
{
	exe_prepare_surfaces_3d(_current_cam);
	
	if _current_cam.show.helpers > 0	{exe_draw_3d_helpers(_current_cam);};
	
	shader_set(shd_3d_02);
	surface_set_target_ext(0, _current_cam.surf_color);
	surface_set_target_ext(1, _current_cam.surf_normals);
	surface_set_target_ext(2, _current_cam.surf_depth);
	surface_set_target_ext(3, _current_cam.surf_xyz);
	
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "game_time"), game_time);	
	
	//curently unused
	//shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_mod"), _current_cam.perspective_mod);
	//shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_range"), _current_cam.perspective_range + (_current_cam.camz - map3d.world_settings.world_z_start));
	
	//grid in shader
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "draw_grid"), _current_cam.shader_draw_grid[0]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridSpacingX"), _current_cam.shader_draw_grid[1]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridSpacingY"), _current_cam.shader_draw_grid[2]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridSpacingZ"), _current_cam.shader_draw_grid[3]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridXtreshold"), _current_cam.shader_draw_grid[4]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridYtreshold"), _current_cam.shader_draw_grid[5]);
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "gridZtreshold"), _current_cam.shader_draw_grid[6]);
	
	shader_set_uniform_f_array(	shader_get_uniform(shd_3d_02, "_sol_vec"), _current_cam.shader_sol_pos);
	shader_set_uniform_f_array(	shader_get_uniform(shd_3d_02, "_sol_col"), _current_cam.shader_sol_col);
	shader_set_uniform_f_array(	shader_get_uniform(shd_3d_02, "_NdotL_min_max"), _current_cam.ambient_NdotL);
	shader_set_uniform_f_array(	shader_get_uniform(shd_3d_02, "_NdotL_mul"), _current_cam.ambient_mul);
	
	shader_set_uniform_f_array(	shader_get_uniform(shd_3d_02, "_NdotL_lowpass"), _current_cam.NdotL_lowpass);
	
	if menus.obj_editor.load_to_screen > 0	&&	menus.obj_editor.selection_overlay > 0	{	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "chosen_obj_hash"), menus.obj_editor.obj_hash);	};
	else																				{	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "chosen_obj_hash"), -1.);	};
	
	//==================
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgh"), 1.0/(dgh/2));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgw"), 1.0/(dgw/4));
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgh"), 1.0/(dgh/2));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgh"), 1.0/(dgh/4));		
				break;
		}
	var camera1 = camera_get_active();
	camera_set_view_mat(camera1, _current_cam.CamMatLookat);
	camera_set_proj_mat(camera1, _current_cam.ProjCamMat);
	//camera_set_proj_mat(camera1, matrix_build_projection_ortho(dgw, dgh, 0., 10000.0));
	camera_apply(camera1);
	

	for(var _ii = 0; _ii < array_length(draw_3d_array); _ii++)
		{
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "cartoon_on"), draw_3d_array[_ii][0]);
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "obj_hash"), draw_3d_array[_ii][1]);
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "obj_part_num"), draw_3d_array[_ii][9]);
			texture_set_stage(shader_get_sampler_index(shd_3d_02,"noise_normal_texture"),draw_3d_array[_ii][2]);
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "is_material"), draw_3d_array[_ii][8]);
			if is_real(draw_3d_array[_ii][5])
				{
					shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "rotate_vbuff"), 0.);
					exe_submit_to_world(draw_3d_array[_ii][3],draw_3d_array[_ii][4],draw_3d_array[_ii][5],draw_3d_array[_ii][6],draw_3d_array[_ii][7]);
				}
			else
				{
					shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "rotate_vbuff"), 1.);
					shader_set_uniform_f_array(	shader_get_uniform(shd_3d_02, "_tm"), draw_3d_array[_ii][5]);
					
					exe_submit_to_world(draw_3d_array[_ii][3],draw_3d_array[_ii][4],0,0,0);
				}
		}
		
	surface_reset_target();
	shader_reset();
	matrix_set(matrix_world, matrix_build_identity());
}