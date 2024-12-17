function exe_calculate_change_speeds_rotations(_struct)
{
	if abs(_struct.tilt) > 0
		{
			//current					grow_rate
			_struct.tilt_speed[0] +=	_struct.tilt_speed[2] * abs(_struct.tilt);
			//current					max
			if _struct.tilt_speed[0] > _struct.tilt_speed[1]	
				{_struct.tilt_speed[0] = variable_clone(_struct.tilt_speed[1]);};
		}
	else
		{
			//current					grow_rate
			_struct.tilt_speed[0] -=	_struct.tilt_speed[3];
			//current					max
			if _struct.tilt_speed[0] < 0. {_struct.tilt_speed[0] = 0.;};
		}
		
		
	if abs(_struct.yaw) > 0
		{
			//current					grow_rate
			_struct.yaw_speed[0] +=	_struct.yaw_speed[2] * abs(_struct.yaw);
			//current					max
			if _struct.yaw_speed[0] > _struct.yaw_speed[1]	
				{_struct.yaw_speed[0] = variable_clone(_struct.yaw_speed[1]);};
		}
	else
		{
			//current					grow_rate
			_struct.yaw_speed[0] -=	_struct.yaw_speed[3];
			//current					max
			if _struct.yaw_speed[0] < 0. {_struct.yaw_speed[0] = 0.;};
		}
		
		
		
	if abs(_struct.pitch) > 0
		{
			//current					grow_rate
			_struct.pitch_speed[0] +=	_struct.pitch_speed[2] * abs(_struct.pitch);
			//current					max
			if _struct.pitch_speed[0] > _struct.pitch_speed[1]	
				{_struct.pitch_speed[0] = variable_clone(_struct.pitch_speed[1]);};
		}
	else
		{
			//current					grow_rate
			_struct.pitch_speed[0] -=	_struct.pitch_speed[3];
			//current					max
			if _struct.pitch_speed[0] < 0. {_struct.pitch_speed[0] = 0.;};
		}
		
	return(_struct)
}