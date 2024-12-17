function exe_return_no_control()
{
	var _control_struct = {};
	struct_set(_control_struct, "active",			[0,"direct","relative"]	);
	struct_set(_control_struct, "input_from",		["noone"]	);
	return(_control_struct);
}