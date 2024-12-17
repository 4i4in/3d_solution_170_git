function exe_activity_control(_carry)
{
	var _tac = _carry[0];
	var _ref = _carry[1];
	
	var _cobj = menus.time_control_menu.activity_control[_tac];
	var _hash = _cobj[1];
	
	switch(_ref)
		{
			case 2:
				var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
				var _obj = map3d.controlable_objects[_nn];
				_obj.control_method.active[0] = !_obj.control_method.active[0];
				menus.time_control_menu.activity_control[_tac][2] = _obj.control_method.active[0];
				if menus.time_control_menu.activity_control[_tac][2] = 0	{menus.time_control_menu.activity_control[_tac][3] = 0};
				break;
				
			case 3:
				menus.time_control_menu.activity_control[_tac][3] = !menus.time_control_menu.activity_control[_tac][3];
				if menus.time_control_menu.activity_control[_tac][3] = 0
					{	menus.time_control_menu.activity_control[_tac][2] = 0;	};
				if menus.time_control_menu.activity_control[_tac][3] = 1
					{	menus.time_control_menu.activity_control[_tac][2] = 1;	
						menus.time_control_menu.activity_control[_tac][4] = 0;	
					};
				var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
				var _obj = map3d.controlable_objects[_nn];
				_obj.control_method.active[0] = menus.time_control_menu.activity_control[_tac][2];
				break;
				
			case 4:
				menus.time_control_menu.activity_control[_tac][4] = !menus.time_control_menu.activity_control[_tac][4];
				if menus.time_control_menu.activity_control[_tac][4] = 1	
					{
						menus.time_control_menu.activity_control[_tac][3] = 0;
						menus.time_control_menu.activity_control[_tac][2] = 0;
						var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
						var _obj = map3d.controlable_objects[_nn];
						_obj.control_method.active[0] = menus.time_control_menu.activity_control[_tac][2];
					};
				break;
		}
	reset_current_menu_array = 1;
}