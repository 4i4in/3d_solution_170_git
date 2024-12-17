function exe_update_cam_from_object(_cam,_posMat,_followMat,_shift,_wrap_trigger)
{
	if	abs(_shift[0][0]) + abs(_shift[0][1]) + abs(_shift[0][2]) + 
		abs(_shift[0][3]) + abs(_shift[0][4]) + abs(_shift[0][5]) < 0.1
		{
			cam_struct[$ _cam][$ "CamMat"] = variable_clone(_posMat);
			var _vsub = exe_return_v_submit(_posMat,cam_struct[$ _cam][$ "cam_lookat_dist"]);
		}
	else
		{
			var _CamMat = variable_clone(cam_struct[$ _cam][$ "CamMat"]);
			_CamMat = exe_wrap_map_by_trigger(_CamMat,_wrap_trigger);
			for(var _ici = 0; _ici < 16; _ici++)
				{
					_CamMat[_ici] = lerp(_CamMat[_ici],_followMat[_ici],_shift[1][0]);
				}
			//_CamMat = exe_matrix_orthonormalize(_CamMat);
			cam_struct[$ _cam][$ "CamMat"] = variable_clone(_CamMat);
			var _vsub = exe_return_v_submit(_CamMat,cam_struct[$ _cam][$ "cam_lookat_dist"]);
		}
		
	cam_struct[$ _cam][$ "camx"] =	_vsub[0];
	cam_struct[$ _cam][$ "camy"] =	_vsub[1];
	cam_struct[$ _cam][$ "camz"] =	_vsub[2];
	cam_struct[$ _cam][$ "camtox"] = _vsub[3];
	cam_struct[$ _cam][$ "camtoy"] = _vsub[4];
	cam_struct[$ _cam][$ "camtoz"] = _vsub[5];
	cam_struct[$ _cam][$ "camxup"] = _vsub[6];
	cam_struct[$ _cam][$ "camyup"] = _vsub[7];
	cam_struct[$ _cam][$ "camzup"] = _vsub[8];
	
	cam_struct[$ _cam][$ "tilt"] =	_vsub[9];
	cam_struct[$ _cam][$ "pitch"] =	_vsub[10];
	cam_struct[$ _cam][$ "yaw"] =	_vsub[11];
	
	cam_struct[$ _cam][$ "camxF"] = _vsub[12];
	cam_struct[$ _cam][$ "camyF"] = _vsub[13];
	cam_struct[$ _cam][$ "camzF"] = _vsub[14];
	
	cam_struct[$ _cam][$ "camxR"] = _vsub[15];
	cam_struct[$ _cam][$ "camyR"] = _vsub[16];
	cam_struct[$ _cam][$ "camzR"] = _vsub[17];
	
	//var _chunk_adress = exe_return_point_in_chunk(map3d.world_settings.chunknumber,	map3d.world_settings.chunksize,	[_vsub[0],_vsub[1],_vsub[2]]);
	//cam_struct[$ _cam][$ "in_chunk"][$ "_x"] = _chunk_adress[0];
	//cam_struct[$ _cam][$ "in_chunk"][$ "_y"] = _chunk_adress[1];
	//cam_struct[$ _cam][$ "in_chunk"][$ "_z"] = _chunk_adress[2];
	
	cam_struct[$ _cam][$ "CamMatLookat"] = matrix_build_lookat(	_vsub[0],_vsub[1],_vsub[2],
																_vsub[3],_vsub[4],_vsub[5],
																_vsub[6],_vsub[7],_vsub[8]);
}