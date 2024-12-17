function exe_return_texture_id(_name)
{
	var _id_found = -1;
	switch(_name)
		{
			case "tex_terrain":					_id_found = sprite_get_texture(tex_terrain,0);	break;
			case "tex_terrain_grassland":		_id_found = sprite_get_texture(tex_terrain_grassland,0);	break;
			case "tex_normal_z":				_id_found = sprite_get_texture(tex_normal_z,0);	break;
			case "tex_helpers":					_id_found = sprite_get_texture(tex_helpers,0);	break;
			
			case "tex_body_01_nomaterial":		_id_found = sprite_get_texture(tex_body_01_nomaterial,0);	break;
			
			case "noise_text_stones_01":		_id_found = sprite_get_texture(noise_text_stones_01,0);	break;
			case "noise_text_stones_02":		_id_found = sprite_get_texture(noise_text_stones_02,0);	break;
			case "noise_text_stones_03":		_id_found = sprite_get_texture(noise_text_stones_03,0);	break;
			case "noise_text_stones_04":		_id_found = sprite_get_texture(noise_text_stones_04,0);	break;
			case "noise_text_stones_05":		_id_found = sprite_get_texture(noise_text_stones_05,0);	break;//brics
			case "noise_text_stones_06":		_id_found = sprite_get_texture(noise_text_stones_06,0);	break;
			case "noise_text_stones_07":		_id_found = sprite_get_texture(noise_text_stones_07,0);	break;
			case "noise_text_stones_08":		_id_found = sprite_get_texture(noise_text_stones_08,0);	break;//good grass
			case "noise_text_stones_09":		_id_found = sprite_get_texture(noise_text_stones_09,0);	break;
		}
		
	return(_id_found);
}