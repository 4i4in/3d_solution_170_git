function exe_return_mouse_keyboard_control()
{
	var _control_struct = {};
	
	struct_set(_control_struct, "active",			[0,"direct","relative"]	);
	struct_set(_control_struct, "input_from",		["keymouse"]	);
	
	struct_set(_control_struct, "strafe_sides",		[["D","A"],[-1,1]]);
	struct_set(_control_struct, "strafe_fb",		[["S","W"],[-1,1]]);
	struct_set(_control_struct, "strafe_up",		[["wUD"],[1]]);			//mouse wheel
	struct_set(_control_struct, "tilt",				[["Q","E"],[-1,1]]);
	struct_set(_control_struct, "yaw",				[["Rscreen","Lscreen"],[-1,1]]);
	struct_set(_control_struct, "pitch",			[["Bscreen","Tscreen"],[-1,1]]);
	
	struct_set(_control_struct, "temporary_values",	{});
	
	return(_control_struct);
}