function exe_fix_climb_anim_power(_anim_power)
{
	var _fix_anim_power = 0;
	if !is_array(_anim_power){_fix_anim_power = 1;}
	else if array_length(_anim_power) != 4{_fix_anim_power = 1;}	
	if _fix_anim_power > 0 
		{
			_anim_power = ["fwd",0,"hand_R_01",[0,0,1]];
		};
	return(_anim_power);
}