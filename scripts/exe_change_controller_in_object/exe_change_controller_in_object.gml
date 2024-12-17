function exe_change_controller_in_object(_carry)
{
	var _selected_object_type = _carry[0];
	var _selected_object_num =	_carry[1];
	var _new_controller = _carry[2];
	
	var _obj = map3d[$ _selected_object_type][_selected_object_num];
	
	var _keep_active = variable_clone(_obj.control_method.active);
	
	_obj.character_sheet.load_controler = _new_controller;
	_obj.control_method = exe_return_controller(_obj.character_sheet.load_controler);
	_obj.control_method = exe_add_phy(_obj.control_method,_obj.character_sheet.load_phy);
	_obj.control_method = exe_add_cam(_obj.control_method,_obj.character_sheet.load_camera);
	
	_obj.control_method.active = _keep_active;
	
	map3d[$ _selected_object_type][_selected_object_num] = _obj;
	
	reset_current_menu_array = 1;
}