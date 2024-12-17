function exe_calculate_uv_sqr(_p1,_p2,_p3,_mode)
{
	switch(_mode)
		{
			case 0:
				var _texcoord1 = [0,1];
				var _texcoord2 = [1,1];
				var _texcoord3 = [1,0];
				break;
			case 1:
				var _texcoord1 = [0,1];
				var _texcoord2 = [1,0];
				var _texcoord3 = [0,0];
				break;
		}
		
	var _tex_uv_pack = [_texcoord1,_texcoord2,_texcoord3];
	return(_tex_uv_pack);
}