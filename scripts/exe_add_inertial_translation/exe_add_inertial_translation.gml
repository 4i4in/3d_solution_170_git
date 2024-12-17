function exe_add_inertial_translation(_inertial_translation,_posMat)
{
	_posMat[12] += _inertial_translation[0][0];
	_posMat[13] += _inertial_translation[0][1];
	_posMat[14] += _inertial_translation[0][2];
	_posMat = exe_matrix_orthonormalize(_posMat);
	return(_posMat);
}