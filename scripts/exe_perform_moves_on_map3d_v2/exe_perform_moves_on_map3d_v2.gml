function exe_perform_moves_on_map3d_v2()
{
	if array_length(map3d.controlable_objects) > 0	&&	keyboard_struct.writing_on < 1
		{
			for(var _ii = 0; _ii < array_length(map3d.controlable_objects); _ii++)
				{
					var _obj = 	map3d.controlable_objects[_ii];
					var _active = exe_return_struct_key_value(_obj.control_method,"active");
					if (_active[0] > 0	&&	game_time mod _active[0] = 0)
						{
							//var _keep_obj_part_posMat = variable_clone(_obj.part_posMat);
							//var _keep_obj_part_vsubmit = variable_clone(_obj.part_vsubmit);
							
							_obj.control_method = exe_return_control_input_v2(_obj.control_method);
							_obj = exe_return_map_part_ref(_obj);
							
							switch(_active[1])
								{
									case "direct":
										_obj = exe_perform_colisions_on_obj(_obj);
										_obj = exe_perform_direct_3dmove(_obj);
										break;
									case "inertial_move":
										_obj = exe_perform_colisions_on_obj(_obj);
										_obj = exe_perform_inertial_move_3dmove(_obj);
										break;
									case "humanoid_sceleton":
										//colision checks inside cycles
										_obj = exe_perform_humanoid_sceleton_move_3dmove(_obj);
										break;
								}
							var _end_of_turn = 0;
							var _colider_real_time = 1;
							if struct_get(_obj.control_method, "anim_stack") != undefined
								{
							
									if _obj.control_method.anim_stack[1] > 0
										{
											var _pose_to = _obj.control_method.anim_stack[0];
											var _pose_step = _obj.control_method.anim_stack[1];
											var _affected = _obj.control_method.anim_stack[2];
											
											_obj = exe_lerp_to_pose_on_obj(_obj,_pose_to,_pose_step,_affected);
										}
									if _obj.control_method.anim_stack[1]  < 1	{	_end_of_turn = 1;	};
								}
								
							_obj = exe_load_part_posMat_by_reference(_obj);
							if _end_of_turn + _colider_real_time > 0
								{		
									var _dont_ignore = [0,0,1];//shader do the rest, coliders are still important
									_obj = exe_rotate_all_vbuffs(_obj,1,_dont_ignore);
								}
							
							
							map3d.controlable_objects[_ii] = _obj;
							
							if _obj.control_method.camera[0] > 0//camera here
								{
									exe_update_cam_on_3d_move(_obj);
								}
						}
				}
		}
}