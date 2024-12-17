function exe_pad_reaction_01()
{
	var _gamepad_count = gamepad_get_device_count();
	var _gpad_conected = 0;
	for(var _gc = 0; _gc < _gamepad_count; _gc++)
		{
			if gamepad_is_connected(_gc){_gpad_conected++};
		};
	var _gamepad_arr = array_create(_gpad_conected);
	
	for(var _gc = 0; _gc < array_length(_gamepad_arr); _gc++)
		{
			var _axis_count = gamepad_axis_count(_gc);
			var _raw_input_ax_arr = array_create(_axis_count);
			for(var _ria = 0; _ria < array_length(_raw_input_ax_arr); _ria++)
				{
					var _val = gamepad_axis_value(_gc,_ria);
					array_set(_raw_input_ax_arr,_ria,_val);
				};
			var _button_count = gamepad_button_count(_gc);
			var _raw_input_bt_arr = array_create(_button_count);
			for(var _ria = 0; _ria < array_length(_raw_input_bt_arr); _ria++)
				{
					var _val = gamepad_button_value(_gc,_ria);
					array_set(_raw_input_bt_arr,_ria,_val);
				};
			var _this_par_arr = [_raw_input_ax_arr,_raw_input_bt_arr];
			array_set(_gamepad_arr,_gc,_this_par_arr);
		};
		
	pad_struct.pad_array = _gamepad_arr;
}