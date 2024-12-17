function exe_calculate_change_speeds(_struct)
{
	_struct.forward_speed[0] +=	_struct.forward_speed[2] * _struct.strafe_fb;
	if abs(_struct.strafe_fb) < _struct.forward_speed[2]	&&	abs(_struct.forward_speed[0]) > _struct.forward_speed[2]	{	_struct.forward_speed[0] -= _struct.forward_speed[2]* sign(_struct.forward_speed[0]);}
	else if	abs(_struct.strafe_fb) < _struct.forward_speed[2]	&&		abs(_struct.forward_speed[0]) <= _struct.forward_speed[2]	{_struct.forward_speed[0] = 0.};
	if _struct.forward_speed[0] > _struct.forward_speed[1]
		{_struct.forward_speed[0] = variable_clone(_struct.forward_speed[1]);};
	if _struct.forward_speed[0] < -_struct.forward_speed[1]
		{_struct.forward_speed[0] = -variable_clone(_struct.forward_speed[1]);};	
		
	_struct.side_speed[0] +=	_struct.side_speed[2] * _struct.strafe_sides;
	if abs(_struct.strafe_sides) < _struct.side_speed[2]	&&	abs(_struct.side_speed[0]) > _struct.side_speed[2]		{	_struct.side_speed[0] -= _struct.side_speed[2]* sign(_struct.side_speed[0]);}
	else if	abs(_struct.strafe_sides) < _struct.side_speed[2]	&&	abs(_struct.side_speed[0]) <= _struct.side_speed[2]	{_struct.side_speed[0] = 0.};
	if _struct.side_speed[0] > _struct.side_speed[1]
		{_struct.side_speed[0] = variable_clone(_struct.side_speed[1]);};
	if _struct.side_speed[0] < -_struct.side_speed[1]
		{_struct.side_speed[0] = -variable_clone(_struct.side_speed[1]);};	
	
	_struct.vert_speed[0] +=	_struct.vert_speed[2] * _struct.strafe_up;
	if abs(_struct.strafe_up) < 2* _struct.vert_speed[2]	&&	abs(_struct.vert_speed[0]) > _struct.vert_speed[2]		{	_struct.vert_speed[0] -= _struct.vert_speed[2]* sign(_struct.vert_speed[0]);}
	else if	abs(_struct.strafe_up) < 2* _struct.vert_speed[2]	&&		abs(_struct.vert_speed[0]) <= _struct.vert_speed[2]	{_struct.vert_speed[0] = 0.};
	if _struct.vert_speed[0] > _struct.vert_speed[1]
		{_struct.vert_speed[0] = variable_clone(_struct.vert_speed[1]);};
	if _struct.vert_speed[0] < -_struct.vert_speed[1]
		{_struct.vert_speed[0] = -variable_clone(_struct.vert_speed[1]);};	
			
	
	return(_struct)
}