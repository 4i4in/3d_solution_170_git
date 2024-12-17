function exe_update_cam_from_object_v2(_followMat,_cam,_method)
{
	switch(_method)
		{
			case "lerp":
				var _lerp_val = 1/game_speed;
				for(var _li = 0; _li < array_length(cam_struct[$ _cam][$ "CamMat"]); _li++)
					{
						cam_struct[$ _cam][$ "CamMat"][_li] = lerp(cam_struct[$ _cam][$ "CamMat"][_li],	_followMat[_li],	_lerp_val);
					}
				cam_struct[$ _cam][$ "CamMat"] = exe_matrix_orthonormalize(cam_struct[$ _cam][$ "CamMat"]);
				break;
				
			case "rot_lerp":
				var _lerp_val = 4/game_speed //magic number - meybe from controls
				for(var _li = 0; _li < array_length(cam_struct[$ _cam][$ "CamMat"]); _li++)
					{
						cam_struct[$ _cam][$ "CamMat"][_li] = lerp(cam_struct[$ _cam][$ "CamMat"][_li],	_followMat[_li],	_lerp_val);
						/*
						switch(_li)
							{
								case 0:	case 1:	case 2:		case 12:	case 13:	case 14:
									cam_struct[$ _cam][$ "CamMat"][_li] = lerp(cam_struct[$ _cam][$ "CamMat"][_li],	_followMat[_li],	_lerp_val*5);
									break
								case 3:	case 4:	case 5:	case 6:	case 7:	case 8:	case 9:	case 10:	case 11:
								case 15:
									cam_struct[$ _cam][$ "CamMat"][_li] = lerp(cam_struct[$ _cam][$ "CamMat"][_li],	_followMat[_li],	_lerp_val);
									break	
							}
						*/
						
					}
				cam_struct[$ _cam][$ "CamMat"] = exe_matrix_orthonormalize(cam_struct[$ _cam][$ "CamMat"]);
				break;
				
				
			case "hard":
				cam_struct[$ _cam][$ "CamMat"] = variable_clone(_followMat);
				break
		}
	var _vsub = exe_return_v_submit(cam_struct[$ _cam][$ "CamMat"],cam_struct[$ _cam][$ "cam_lookat_dist"]);
	
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