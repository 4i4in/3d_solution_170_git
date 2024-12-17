function exe_switch_anim_pack_anim_cycles_in_obj(_carry)
{
	var _obj = _carry[0];
	
	if struct_get(_obj.character_sheet, "anim_pack") != undefined	&&	struct_get(_obj.character_sheet, "anim_cycles") != undefined
		{
			_obj = exe_push_anim_cycle_on_obj([-1,-1,"noone_cycle"],_obj);
			_obj = exe_push_anim_stack_on_obj([-1,-1,"basic_pose",1,[0,1,1]],_obj);
			
		switch(_obj.character_sheet.anim_pack)
			{
				case "humanoid_sceleton_anim_pack_01":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_02";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_02";
					}
					break;
				case "humanoid_sceleton_anim_pack_02":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_03";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_03";
					}
					break;
				case "humanoid_sceleton_anim_pack_03":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_04";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_04";
					}
					break;
				case "humanoid_sceleton_anim_pack_04":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_05";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_05";
					}
					break;
					
				case "humanoid_sceleton_anim_pack_05":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_06";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_06";
					}
					break;
					
				case "humanoid_sceleton_anim_pack_06":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_07";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_07";
					}
					break;
					
				case "humanoid_sceleton_anim_pack_07":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_08";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_08";
					}
					break;
					
				case "humanoid_sceleton_anim_pack_08":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_09";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_09";
					}
					break;
					
				case "humanoid_sceleton_anim_pack_09":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_10";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_10";
					}
					break;
					
				case "humanoid_sceleton_anim_pack_10":
					{
						_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_01";
						_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_01";
					}
					break;
			}
			
			var _hash = _obj.character_sheet.hash;
			var _nn =  exe_find_arr_num_by_hash("controlable_objects",_hash);
			if _nn > -1		{	map3d.controlable_objects[_nn] = _obj;	};
		}
	
	reset_current_menu_array = 1;
}