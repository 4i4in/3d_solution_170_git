function exe_add_cam(_controler_struct,_cam_settings)
{
	struct_set(_controler_struct, "camera",			_cam_settings	);

	return(_controler_struct);
}