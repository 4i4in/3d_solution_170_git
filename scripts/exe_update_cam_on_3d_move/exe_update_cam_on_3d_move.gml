function exe_update_cam_on_3d_move(_obj)
{
	var _cam_control = _obj.control_method.camera;
	
	var _cam = _cam_control[1];
	var _conected_to = _cam_control[2];
	var _method = _cam_control[3];
	
	var _cam_id = -1;
	for(var _ii = 0; _ii < array_length(_obj.part_naming); _ii++)
		{
			if _cam_id > -1	{break;};
			if _obj.part_naming[_ii] == _conected_to	{_cam_id = _ii;};
		}
	var _followMat = _obj.part_posMat[_cam_id];	
	exe_update_cam_from_object_v2(_followMat,_cam,_method);
}