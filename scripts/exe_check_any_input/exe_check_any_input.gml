function exe_check_any_input(_input_call)
{
	var _sum = 0;
	
	_sum += abs(_input_call.strafe_fb);
	_sum += abs(_input_call.strafe_up);
	_sum += abs(_input_call.strafe_sides);
	_sum += abs(_input_call.tilt);
	_sum += abs(_input_call.pitch);
	_sum += abs(_input_call.yaw);
	
	if _input_call.phy[0] == "inertial"	
		{
			if	abs(_input_call.tilt_speed[0])	+	abs(_input_call.yaw_speed[0])	+	abs(_input_call.pitch_speed[0])	+
				abs(_input_call.forward_speed[0])	+	abs(_input_call.side_speed[0])	+	abs(_input_call.vert_speed[0])
				> 0.	{_sum+=1;};
			
		};
	
	return(_sum);
}