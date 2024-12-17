function exe_draw_3d_helpers(_current_cam)
{
	
	draw_3d_helpers_array = exe_prepare_3d_helpers_to_draw(_current_cam);
	
	
	shader_set(shd_helpers_01);
	surface_set_target_ext(0, _current_cam.surf_helpers);
	
	var camera1 = camera_get_active();
	camera_set_view_mat(camera1, _current_cam.CamMatLookat);
	camera_set_proj_mat(camera1, _current_cam.ProjCamMat);
	camera_apply(camera1);
	
	for(var _ii = 0; _ii < array_length(draw_3d_helpers_array); _ii++)
		{
			var _hash = draw_3d_helpers_array[_ii][1];
			if menus.obj_editor.obj_hash > -1
				{
					if menus.obj_editor.obj_hash == _hash	
						{
							shader_set_uniform_f(	shader_get_uniform(shd_helpers_01, "_hash_alpha"), 1.);	
							if is_real(draw_3d_helpers_array[_ii][5])
								{
									shader_set_uniform_f(	shader_get_uniform(shd_helpers_01, "rotate_vbuff"), 0.);
									exe_submit_to_world(draw_3d_helpers_array[_ii][3],draw_3d_helpers_array[_ii][4],draw_3d_helpers_array[_ii][5],draw_3d_helpers_array[_ii][6],draw_3d_helpers_array[_ii][7]);
								}
							else
								{
									shader_set_uniform_f(	shader_get_uniform(shd_helpers_01, "rotate_vbuff"), 1.);
									shader_set_uniform_f_array(	shader_get_uniform(shd_helpers_01, "_tm"), draw_3d_helpers_array[_ii][5]);
					
									exe_submit_to_world(draw_3d_helpers_array[_ii][3],draw_3d_helpers_array[_ii][4],0,0,0);
								}
						}
				}
			else	
				{	
					shader_set_uniform_f(	shader_get_uniform(shd_helpers_01, "_hash_alpha"), 1.);	
					if is_real(draw_3d_helpers_array[_ii][5])
						{
							shader_set_uniform_f(	shader_get_uniform(shd_helpers_01, "rotate_vbuff"), 0.);
							exe_submit_to_world(draw_3d_helpers_array[_ii][3],draw_3d_helpers_array[_ii][4],draw_3d_helpers_array[_ii][5],draw_3d_helpers_array[_ii][6],draw_3d_helpers_array[_ii][7]);
						}
					else
						{
							shader_set_uniform_f(	shader_get_uniform(shd_helpers_01, "rotate_vbuff"), 1.);
							shader_set_uniform_f_array(	shader_get_uniform(shd_helpers_01, "_tm"), draw_3d_helpers_array[_ii][5]);
					
							exe_submit_to_world(draw_3d_helpers_array[_ii][3],draw_3d_helpers_array[_ii][4],0,0,0);
						}
					//exe_submit_to_world(draw_3d_helpers_array[_ii][3],draw_3d_helpers_array[_ii][4],draw_3d_helpers_array[_ii][5],draw_3d_helpers_array[_ii][6],draw_3d_helpers_array[_ii][7]);
				};
				
			
		}
		
	surface_reset_target();
	shader_reset();
	matrix_set(matrix_world, matrix_build_identity());
	
}