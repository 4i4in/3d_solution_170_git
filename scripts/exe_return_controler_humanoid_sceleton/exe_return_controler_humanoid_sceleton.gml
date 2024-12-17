function exe_return_controler_humanoid_sceleton(_control_struct,_phy_settings)
{
	//additional values
	
	_control_struct.active[1] = 	"humanoid_sceleton";

	struct_set(_control_struct, "behaviour_cycle",	"faling_cycle");	//faling_cycle
	struct_set(_control_struct, "anchor",	[]);
	struct_set(_control_struct, "ground_state",	"faling");	//grounded, flying
	struct_set(_control_struct, "behaviour_timers",	[0,0]);
	
	struct_set(_control_struct, "intertia_translation",			[[0.,0.,0.],[0.01,0.01,0.01],[2000.,2000.,2000.],[0.1,0.1,0.1]]	);//current,min, max, "mass"multipler
	
	struct_set(_control_struct, "phy_map_part",	[0,0,0]);
	
	if _control_struct.input_from[0] == "keymouse"
		{
			struct_set(_control_struct, "jump",			[["SPACE"],[1]]);
			struct_set(_control_struct, "action",		[["LCTRL"],[1]]);
			struct_set(_control_struct, "action1",		[["LALT"],[1]]);
		}
	else
		{
			struct_set(_control_struct, "jump",			[["l_bump"],[1]]);
			struct_set(_control_struct, "action",		[["r_bump"],[1]]);
			struct_set(_control_struct, "action1",		[["leftjoyP"],[1]]);
		}
		
	
	struct_set(_control_struct, "gravity",			variable_clone(map3d.general_gravity));
	
	return(_control_struct);
}