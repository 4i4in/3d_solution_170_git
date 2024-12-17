function exe_change_in_cam_in_object(_carry)
{
	var _selected_object_type = _carry[0];
	var _selected_object_num =	_carry[1];
	
	var _obj = map3d[$ _selected_object_type][_selected_object_num];
	
	switch(_carry[2])
		{
			case 0:
				_obj.control_method.camera[0] = !_obj.control_method.camera[0];
				break;
			case 1:
				switch(_obj.control_method.camera[1])
					{
						case "cam1":	_obj.control_method.camera[1] = "cam2"; break;
						case "cam2":	_obj.control_method.camera[1] = "cam1"; break;
					}
				break;
			case 2:
				//TBD
				break;
			case 3:
				switch(_obj.control_method.camera[3])
					{
						case "hard":		_obj.control_method.camera[3] = "lerp"; break;
						case "lerp":		_obj.control_method.camera[3] = "rot_lerp"; break;
						case "rot_lerp":	_obj.control_method.camera[3] = "hard"; break;
					}
				break;
		}
	//TBD general operator to switch off same cams in other objects;
	
	
	map3d[$ _selected_object_type][_selected_object_num] = _obj;

	reset_current_menu_array = 1;
}