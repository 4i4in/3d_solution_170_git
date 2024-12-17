function exe_inertial_translation_add_delta(_inertial_translation,_delta)
{
	_inertial_translation[0][0] -= _delta[0];
	_inertial_translation[0][1] -= _delta[1];
	_inertial_translation[0][2] -= _delta[2];
	return(_inertial_translation);
}