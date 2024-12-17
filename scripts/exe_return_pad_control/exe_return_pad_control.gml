function exe_return_pad_control(_pad_num)
{
	var _control_struct = {};
	
	struct_set(_control_struct, "active",			[0,"direct","relative"]	);
	struct_set(_control_struct, "input_from",		["pad_struct.pad_result_array",_pad_num]	);
	
	struct_set(_control_struct, "strafe_sides", [["leftjoyX","dpad_left","dpad_right"],[-1,1,-1]]);
	struct_set(_control_struct, "strafe_fb",	[["leftjoyY"],[-1]]);
	struct_set(_control_struct, "strafe_up",	[["dpad_up","dpad_down"],[1,-1]]);
	struct_set(_control_struct, "tilt",			[["l_trig","r_trig"],[-1,1]]);
	struct_set(_control_struct, "yaw",			[["rightjoyX"],[-1]]);
	struct_set(_control_struct, "pitch",		[["rightjoyY"],[1]]);
	
	struct_set(_control_struct, "temporary_values",	{});
	
	return(_control_struct);
}