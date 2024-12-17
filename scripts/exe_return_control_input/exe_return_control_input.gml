function exe_return_control_input(_struct)
{
	var _output = {};
	//this pass anyway in all cases
		var _key = "input_mode";
		struct_set(_output, _key,	_struct.input_mode);
		var _key = "link_to";
		struct_set(_output, _key,	_struct.link_to);
		var _key = "link_to_shift";
		struct_set(_output, _key,	_struct.link_to_shift);
			
		var _key = "collisions";
		struct_set(_output, _key,	_struct.collisions);
			
		var _key = "position_wrap";
		struct_set(_output, _key,	_struct.position_wrap);
		
		var _key = "phy";
		struct_set(_output, _key,	_struct.phy);
		var _key = "collision_takes";
		struct_set(_output, _key,	_struct.collision_takes);
		var _key = "collision_deals";
		struct_set(_output, _key,	_struct.collision_deals);
	//===============================
	//phy values:
		var _key = "tilt_speed";
		struct_set(_output, _key,	_struct.tilt_speed);
		var _key = "yaw_speed";
		struct_set(_output, _key,	_struct.yaw_speed);
		var _key = "pitch_speed";
		struct_set(_output, _key,	_struct.pitch_speed);
	
		var _key = "forward_speed";
		struct_set(_output, _key,	_struct.forward_speed);
		var _key = "side_speed";
		struct_set(_output, _key,	_struct.side_speed);
		var _key = "vert_speed";
		struct_set(_output, _key,	_struct.vert_speed);
	//===============================
	
	
	if _struct.input_from[0] == "pad_struct.pad_result_array"
		{
			var _pad_struct = pad_struct.pad_result_array[_struct.input_from[1]];

			var _key = "strafe_fb";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "strafe_up";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "strafe_sides";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "tilt";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "pitch";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "yaw";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
		}
	
	
	if _struct.input_from[0] == "keymouse"
		{
			var _pad_struct =
				{
					Lscreen : mouse_struct.Lscreen,	Rscreen : mouse_struct.Rscreen,
					Tscreen : mouse_struct.Tscreen,	Bscreen : mouse_struct.Bscreen,
					wUD : mouse_struct.wUD,
					
					Q : keyboard_struct.Q,	E : keyboard_struct.E,
					A : keyboard_struct.A,	D : keyboard_struct.D,	
					W : keyboard_struct.W,	S : keyboard_struct.S,	
				}
			
			var _key = "strafe_fb";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "strafe_up";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "strafe_sides";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "tilt";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "pitch";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "yaw";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
		}
	
	return(_output)
}