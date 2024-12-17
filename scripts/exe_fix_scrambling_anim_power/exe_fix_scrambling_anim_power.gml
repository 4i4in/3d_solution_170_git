function exe_fix_scrambling_anim_power(_anim_power)
{
	var _fix_anim_power = 0;
	if !is_array(_anim_power){_fix_anim_power = 1;}
	else if !is_string(_anim_power[0]){_fix_anim_power = 1;}
	if _fix_anim_power > 0 
		{
			_anim_power = ["fwd"];
		};
	return(_anim_power);
}