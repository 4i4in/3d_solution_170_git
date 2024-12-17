function exe_check_for_colision(_xpos,_ypos,_zpos)
{
	var _colide = [0,-1];
	for(var _ii = 0; _ii < array_length(objects_3d_list); _ii++)
		{
			var _obj3d = objects_3d_list[_ii];
			switch(_obj3d.colision_type[0])
				{
					case "solid":
						switch(_obj3d.colision_type[1])
							{
								case "AaBb":
									if _xpos < _obj3d.xpos + _obj3d.colision_type[2]	&&	_xpos > _obj3d.xpos - _obj3d.colision_type[2]
										{
											if _ypos < _obj3d.ypos + _obj3d.colision_type[2]	&&	_ypos > _obj3d.ypos - _obj3d.colision_type[2]
												{
													if _zpos < _obj3d.zpos + _obj3d.colision_type[2]	&&	_zpos > _obj3d.zpos - _obj3d.colision_type[2]
														{
															_colide[0] = 1;
															_colide[1] = _ii; 
															break;
														}
												}
										}
									break;
							}
						break;
				}
		}
	return(_colide);
}