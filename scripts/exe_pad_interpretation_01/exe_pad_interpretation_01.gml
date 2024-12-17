function exe_pad_interpretation_01()
{
	if array_length(pad_struct.pad_array) > 0
		{
			for(var _pad_num = 0; _pad_num < array_length(pad_struct.pad_array); _pad_num++)
				{
					//example of structure
					//var _key = "dpad_up";
					//var _refarr = pad_struct.pad_maping[_pad_num][$ _key][0];
					//var _refnum = pad_struct.pad_maping[_pad_num][$ _key][1];
					//pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][_refarr][_refnum];
					
					//pad disconected exception
					if array_length(pad_struct.pad_array[_pad_num][0]) + array_length(pad_struct.pad_array[_pad_num][1]) < 1
						{
							var _info_ret = "pad " + string(_pad_num) + " disconected";
							exe_throw_fake_rclick_info([_info_ret,20,100]);
							pad_struct.pad_array[_pad_num] = [ [ 0.00,0.00,0.00,0.00 ],[ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ] ];
						}
						
					var _key = "start";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "select";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					
					var _key = "dpad_up";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "dpad_down";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "dpad_left";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "dpad_right";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					
					
					var _key = "bt_A";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "bt_B";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "bt_X";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "bt_Y";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					
					var _key = "l_bump";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "l_trig";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "r_bump";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "r_trig";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					
					var _key = "leftjoyP";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "rightjoyP";
					pad_struct.pad_result_array[_pad_num][$ _key] = pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					
					var _key = "leftjoyX";
					var _mul = pad_struct.pad_result_array[_pad_num][$ "leftjoy_dir"][1];
					pad_struct.pad_result_array[_pad_num][$ _key] = _mul * pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "leftjoyY";
					var _mul = pad_struct.pad_result_array[_pad_num][$ "leftjoy_dir"][2];
					pad_struct.pad_result_array[_pad_num][$ _key] = _mul * pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					
					var _key = "rightjoyX";
					var _mul = pad_struct.pad_result_array[_pad_num][$ "rightjoy_dir"][1];
					pad_struct.pad_result_array[_pad_num][$ _key] = _mul * pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					var _key = "rightjoyY";
					var _mul = pad_struct.pad_result_array[_pad_num][$ "rightjoy_dir"][2];
					pad_struct.pad_result_array[_pad_num][$ _key] = _mul * pad_struct.pad_array[_pad_num][pad_struct.pad_maping[_pad_num][$ _key][0]][pad_struct.pad_maping[_pad_num][$ _key][1]];
					
					var _key = "leftjoy_dir";
					pad_struct.pad_result_array[_pad_num][$ _key][0] =  point_direction(0,0,pad_struct.pad_result_array[_pad_num][$ "leftjoyX"],pad_struct.pad_result_array[_pad_num][$ "leftjoyY"]);
					var _key = "leftjoy_l";
					pad_struct.pad_result_array[_pad_num][$ _key] =  point_distance(0,0,pad_struct.pad_result_array[_pad_num][$ "leftjoyX"],pad_struct.pad_result_array[_pad_num][$ "leftjoyY"]);
					
					var _key = "rightjoy_dir";
					pad_struct.pad_result_array[_pad_num][$ _key][0] =  point_direction(0,0,pad_struct.pad_result_array[_pad_num][$ "rightjoyX"],pad_struct.pad_result_array[_pad_num][$ "rightjoyY"]);
					var _key = "rightjoy_l";
					pad_struct.pad_result_array[_pad_num][$ _key] =  point_distance(0,0,pad_struct.pad_result_array[_pad_num][$ "rightjoyX"],pad_struct.pad_result_array[_pad_num][$ "rightjoyY"]);
					
					var _dead_zone = pad_struct.pad_result_array[_pad_num][$ "left_dz"];
					var _key = "leftjoy_l";
					if pad_struct.pad_result_array[_pad_num][$ _key] < _dead_zone
						{
							pad_struct.pad_result_array[_pad_num][$ "leftjoy_l"] = 0.;
							pad_struct.pad_result_array[_pad_num][$ "leftjoy_dir"][0] = 0.;
							pad_struct.pad_result_array[_pad_num][$ "leftjoyX"] = 0.;
							pad_struct.pad_result_array[_pad_num][$ "leftjoyY"] = 0.;
						}
						
					var _dead_zone = pad_struct.pad_result_array[_pad_num][$ "right_dz"];
					var _key = "rightjoy_l";
					if pad_struct.pad_result_array[_pad_num][$ _key] < _dead_zone
						{
							pad_struct.pad_result_array[_pad_num][$ "rightjoy_l"] = 0.;
							pad_struct.pad_result_array[_pad_num][$ "rightjoy_dir"][0] = 0.;
							pad_struct.pad_result_array[_pad_num][$ "rightjoyX"] = 0.;
							pad_struct.pad_result_array[_pad_num][$ "rightjoyY"] = 0.;
						}
				}
		}
}