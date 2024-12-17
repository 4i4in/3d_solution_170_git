function exe_set_cam(_cam)
{
	cam_struct[$ _cam][$ "CamMat"] = matrix_build(0, 0, 0, 0, 0, 0, 1, 1, 1);
	
	cam_struct[$ _cam][$ "CamMatLookat"] = matrix_build_lookat(	
					cam_struct[$ _cam][$ "camx"],cam_struct[$ _cam][$ "camy"],cam_struct[$ _cam][$ "camz"],
					cam_struct[$ _cam][$ "camtox"],cam_struct[$ _cam][$ "camtoy"],cam_struct[$ _cam][$ "camtoz"],
					cam_struct[$ _cam][$ "camxup"],cam_struct[$ _cam][$ "camyup"],cam_struct[$ _cam][$ "camzup"]
																);
	cam_struct[$ _cam][$ "ProjCamMat"] = matrix_build_projection_perspective_fov(
					cam_struct[$ _cam][$ "fov"],cam_struct[$ _cam][$ "aspect"],			
					cam_struct[$ _cam][$ "znear"],cam_struct[$ _cam][$ "zfar"]
																				);
																				
}