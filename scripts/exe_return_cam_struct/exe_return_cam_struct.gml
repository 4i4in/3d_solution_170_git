function exe_return_cam_struct()
{
	var _struct = 
		{
			cam1 :
				{
					surf_color : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_normals : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_depth : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_xyz : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_postproces : surface_create(dgw,dgh),
					surf_postproces_normals : surface_create(dgw/2,dgh/2),
					surf_helpers : surface_create(dgw/4,dgh/4),
					camx : 0,	camy : 0,	camz : 0,
					camtox : 0,	camtoy : 0,	camtoz : 0,
					camxup : 0,	camyup : 0,	camzup : 0,
					pitch : 0,	yaw : 0,	tilt : 0,
					camxF : 0,	camyF : 0,	camzF : 0,
					camxR : 0,	camyR : 0,	camzR : 0,
					cam_lookat_dist : 100.,
					CamMat : -1,
					CamMatLookat : -1,
					ProjCamMat : -1,
					fov : 60,
					aspect : dgw/dgh,
					znear : 1.,	zfar : 10000.,
					show : {	
								geometry : 1,
								coliders : 0,
								helpers : 0,
								world_wrap : 1.,
							},
					perspective_mod : 1.,	perspective_range : 0.,	
					in_chunk : {_x :-1, _y :-1,_z :-1},
					shader_sol_pos : [0.4,0.6,-0.65], shader_sol_col : [1.,1.,1.], ambient_NdotL : [-1.,1.], NdotL_lowpass : [1.,-.3,.3,0.5],
					ambient_mul : [1.,0.,0.,1.],//ambient mul, ambient reverse triger true false, reverse condition (night vission), new multipler
					shader_draw_grid : [0.,100.,100.,100.,1.,1.,0.5],
					shader_blur_distance : [1.,1.,100.,1024.,8.,	1.,0.8,1.2,256.,0.25,0.75,3.],
					shader_outlines : [1.,1024.,32.,4.],
					throw_colisions_helpers : [0],
				},
			cam2 :
				{
					surf_color : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_normals : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_depth : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_xyz : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_postproces : surface_create(dgw,dgh),
					surf_postproces_normals : surface_create(dgw/2,dgh/2),
					surf_helpers : surface_create(dgw/4,dgh/4),
					camx : 0,	camy : 0,	camz : 0,
					camtox : 0,	camtoy : 0,	camtoz : 0,
					camxup : 0,	camyup : 0,	camzup : 0,
					pitch : 0,	yaw : 0,	tilt : 0,
					camxF : 0,	camyF : 0,	camzF : 0,
					camxR : 0,	camyR : 0,	camzR : 0,
					cam_lookat_dist : 100.,
					CamMat : -1,
					CamMatLookat : -1,
					ProjCamMat : -1,
					fov : 60,
					aspect : dgw/dgh,
					znear : 1.,	zfar : 10000.,
					show : {	
								geometry : 1,
								coliders : 0,
								helpers : 0,
								world_wrap : 1.,
							},
					perspective_mod : 1.,	perspective_range : 0.,	
					in_chunk : {_x :-1, _y :-1,_z :-1},
					shader_sol_pos : [0.4,0.6,-0.65], shader_sol_col : [1.,1.,1.], ambient_NdotL : [-1.,1.], NdotL_lowpass : [1.,-.3,.3,0.5],
					ambient_mul : [1.,0.,0.,1.],//ambient mul, ambient reverse triger true false, reverse condition (night vission), new multipler
					shader_draw_grid : [0.,100.,100.,100.,1.,1.,0.5],
					shader_blur_distance : [1.,1.,100.,1024.,8.,	1.,0.8,1.2,256.,0.25,0.75,3.],
					shader_outlines : [1.,1024.,32.,4.],
					throw_colisions_helpers : [0],
				}
		};
	return(_struct);
}