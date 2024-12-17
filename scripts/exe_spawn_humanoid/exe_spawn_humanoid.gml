function exe_spawn_humanoid(_input)
{
	var _temp_o = {};
	
	var _push_pos = [_input.respawn_point[0],_input.respawn_point[1],_input.respawn_point[2],	180,0,0,	1,1,1];
	var _posMat = exe_return_initial_posMat(_push_pos);
	
	_temp_o.character_sheet = {		name: _input.name, hash: exe_return_hash(	string_join("|",current_time,date_current_datetime(),map3d)	),
									file_name : _input.name +  string(".txt"), file_directory : _input.directory,
									load_controler : _input.controler, load_phy : ["no_phy"], load_camera : [0,"cam2","main_part","hard"],
									respawn_point : _input.respawn_point,
									//atributes : {},	
								};
	if struct_exists(_input, "items_swaps")		{	struct_set(_temp_o.character_sheet, "items_swaps",				variable_clone(_input.items_swaps)	);};
	if struct_exists(_input, "anim_pack")		{	struct_set(_temp_o.character_sheet, "anim_pack",				variable_clone(_input.anim_pack)	);
													var _anim_cycles_str = string_replace_all(_input.anim_pack,"_pack_","_cycle_");
													struct_set(_temp_o.character_sheet, "anim_cycles",				variable_clone(_anim_cycles_str)	);		};
													
	if struct_exists(_input, "detector_pack")	{	struct_set(_temp_o.character_sheet, "detector_pack",			variable_clone(_input.detector_pack)	);};
	if struct_exists(_input, "load_phy")		{	struct_set(_temp_o.character_sheet, "load_phy",					variable_clone(_input.load_phy)	);};
	
	_temp_o.control_method = exe_return_controller(_temp_o.character_sheet.load_controler);
	_temp_o.control_method = exe_add_phy(_temp_o.control_method,_temp_o.character_sheet.load_phy);
	_temp_o.control_method = exe_add_cam(_temp_o.control_method,_temp_o.character_sheet.load_camera);
	
	var _template = reference_struct.humanoid_sceleton_scale_1_part_set;
	
	_temp_o.part_naming = variable_clone(_template.part_naming);
	_temp_o.part_dependency =					[];//arrays of dependecy
	_temp_o.part_posMat =	[_posMat];
	_temp_o.part_vsubmit =	[	exe_return_v_submit(_posMat,1)];
	
	for(var _ii = 1; _ii < array_length(_template.part_naming); _ii++)
		{
			array_push(_temp_o.part_posMat,"set_me");
			array_push(_temp_o.part_vsubmit,"set_me");
		}
	var _vbuff_set = _template.vbuffs_basic;
	var _vbuff_colider_set = _template.vbuffs_coliders;
	
	_temp_o.part_texture_load_reference =  [];
	for(var _ii = 0; _ii < array_length(_template.part_naming); _ii++)
		{
			array_push(_temp_o.part_texture_load_reference,variable_clone(_input.texture));
		}
		
	_temp_o.part_vbuff_load_reference =  variable_clone(_vbuff_set);
	for(var _ii = 0; _ii < array_length(_temp_o.part_vbuff_load_reference); _ii++)
		{
			_temp_o.part_vbuff_load_reference[_ii][1] = string(_input.scale);
		}
	
	_temp_o.part_texture_shader_setings = [];
	for(var _ii = 0; _ii < array_length(_template.part_naming); _ii++)
		{
			array_push(_temp_o.part_texture_shader_setings,[0.]);
		}
	_temp_o.part_vbuff_colider_load_reference = variable_clone(_vbuff_colider_set);
	for(var _ii = 0; _ii < array_length(_temp_o.part_vbuff_colider_load_reference); _ii++)
		{
			_temp_o.part_vbuff_colider_load_reference[_ii][1] = string(_input.scale);
		}
	
	_temp_o.part_texture_helper_load_reference =[];
	for(var _ii = 0; _ii < array_length(_template.part_naming); _ii++)
		{
			array_push(_temp_o.part_texture_helper_load_reference,["tex_helpers","tex_normal_z"]);
		}
	_temp_o.part_vbuff_helper_load_reference =	[];
	for(var _ii = 0; _ii < array_length(_template.part_naming); _ii++)
		{
			array_push(_temp_o.part_vbuff_helper_load_reference,["vbuff_dir_arrow","2","N"]);
		}
	_temp_o.part_vbuff_helper_load_reference[0][1]	= string(_input.scale);

	_temp_o.part_dependency_load_reference = variable_clone(_template.dependency);
	for(var _ii = 0; _ii < array_length(_temp_o.part_dependency_load_reference); _ii++)
		{
			var _part_tm_list = _temp_o.part_dependency_load_reference[_ii][1];
			for(var _kk = 0; _kk < array_length(_part_tm_list);_kk++)
				{
					_part_tm_list[_kk][3] *= _input.scale;
					_part_tm_list[_kk][4] *= _input.scale;
					_part_tm_list[_kk][5] *= _input.scale;
				}
		}
	_temp_o.part_detector_lines_load_reference = [];
	_temp_o.part_detector_lines_results = [];
	
	_temp_o.part_colision_method = [];
	for(var _ii = 0; _ii < array_length(_template.part_naming); _ii++)
		{
			array_push(_temp_o.part_colision_method,"solid");
		}
		
	if struct_exists(_input, "camera")	{_temp_o = exe_add_camera_in_object(_temp_o,_input);};
	if struct_exists(_template, "detector_naming")	{	_temp_o = exe_add_detectors_in_object(_temp_o,_input,_template);	};

	
	return(_temp_o);
}