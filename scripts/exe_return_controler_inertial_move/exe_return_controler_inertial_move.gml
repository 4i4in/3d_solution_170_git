function exe_return_controler_inertial_move(_control_struct,_phy_settings)
{
	//additional values
	_control_struct.active[1] = 	"inertial_move";
	if array_length(_phy_settings) > 1
		{
			var phs = _phy_settings;
			struct_set(_control_struct, "intertia_translation",			[[0.,0.,0.],[phs[1][0],phs[1][0],phs[1][0]],	[phs[1][1],phs[1][1],phs[1][1]],	[phs[1][2],phs[1][2],phs[1][2]]]	);//current,min, max, "mass"multipler
		}
	else
		{
			struct_set(_control_struct, "intertia_translation",			[[0.,0.,0.],[0.01,0.01,0.01],[10.,10.,10.],[0.05,0.05,0.05]]	);//current,min, max, "mass"multipler
		}
	struct_set(_control_struct, "slow",			[["SHIFT"],[2]]);
	
	
	return(_control_struct);
}