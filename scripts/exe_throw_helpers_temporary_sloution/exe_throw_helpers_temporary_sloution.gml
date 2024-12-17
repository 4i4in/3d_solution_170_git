function exe_throw_helpers_temporary_sloution(_obj)
{
	if struct_exists(_obj,"part_detector_lines_results")
		{
			if array_length(_obj.part_detector_lines_results) > 0
				{
					for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
						{
							if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
								{
									var _sublist = _obj.part_detector_lines_results[_thlprs][2];
								
									for(var _sbl = 0; _sbl < array_length(_sublist); _sbl++)
										{
											var _xyz0 = _sublist[_sbl][0];
											var _xyz1 = _sublist[_sbl][1];
											var _col_tex = sprite_get_texture(tex_helpers_red,0);
										}
								}
							else
								{
									var _xyz0 = _obj.part_detector_lines_results[_thlprs][0];
									var _xyz1 = _obj.part_detector_lines_results[_thlprs][1];
									var _col_tex = sprite_get_texture(tex_helpers_green,0);
								}
							var _temp_line_vbuff = exe_throw_temp_line_buff(_xyz0,_xyz1);
							var _pack = [0,0,0,_temp_line_vbuff,_col_tex,sprite_get_texture(tex_normal_z,0),_obj.character_sheet.hash];
							array_push(map3d.temporary_helpers,_pack);
						}
				}
		}
}