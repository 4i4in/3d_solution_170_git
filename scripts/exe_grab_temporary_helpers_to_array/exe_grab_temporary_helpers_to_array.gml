function exe_grab_temporary_helpers_to_array(_current_cam,_draw_3d_array)
{
	for(var _ii = 0; _ii < array_length(map3d.temporary_helpers); _ii++)
		{
			var _x =					map3d.temporary_helpers[_ii][0];
			var _y =					map3d.temporary_helpers[_ii][1];
			var _z =					map3d.temporary_helpers[_ii][2];
			
			var _buff_here =			map3d.temporary_helpers[_ii][3];
			var _tex_here =				map3d.temporary_helpers[_ii][4];
			var _tex_normal_here =		map3d.temporary_helpers[_ii][5];
			var _hash =					map3d.temporary_helpers[_ii][6];
			var _cartoon =				0.0;
			var _material =				0.0;
			
			var _draw_pack = [	_cartoon,	_hash,	_tex_normal_here,	_buff_here,	_tex_here,	_x,_y,_z,	_material	,-1		];
			array_push(_draw_3d_array,_draw_pack);
		}
		
	return(_draw_3d_array);
}