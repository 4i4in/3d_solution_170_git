function exe_explain_pixel_colors_check()
{
	var _str = "";
	var _col = menus.srf_by_mouse_menu.color_pixel[0];
	var _colr256 = floor(_col / 65536.);
	var _colr65536 = _colr256 * 65536.;
	var _colg256 = floor((_col - _colr65536) / 256.);
	var _colb256 = floor(_col - _colr65536 - _colg256 * 256.);
	
	_str += "color pixel pos 0 consist encoded color : "; _str+="\n";
	_str += "r : " + string(_colr256);	_str += " | g : " + string(_colg256);	_str += " | b : " + string(_colb256);	_str+="\n";
	
	
	var _col = menus.srf_by_mouse_menu.color_pixel[1];
	var _colr256 = floor(_col / 65536.);
	var _colr65536 = _colr256 * 65536.;
	var _colg256 = floor((_col - _colr65536) / 256.);
	var _colb256 = floor(_col - _colr65536 - _colg256 * 256.);
	
	_colr256 /= 256.;	_colg256 /= 256.;	_colb256 /= 256.;
	_colr256 -=0.5;	_colg256 -=0.5;	_colb256 -=0.5;
	_colr256 *=2.;	_colg256 *=2.;	_colb256 *=2.;
	
	_str += "color pixel pos 1 consist encoded normal"; _str+="\n";
	_str += "rendered from texture :"; _str+="\n";
	_str += "x : " + string(_colr256);	_str += " | y : " + string(_colg256);	_str += " | z : " + string(_colb256);	_str+="\n";
	
	
	var _col = menus.srf_by_mouse_menu.color_pixel[2];
	_str += "color pixel pos 2 consist NdotL"; _str+="\n";
	_str += "lumination value :"; _str+= string(_col); _str+="\n";
	_str+="=====================================";
	
	menus.srf_by_mouse_menu.color_pixel_translated = _str;

	//menus.srf_by_mouse_menu.normal_pixel = _col;
	//menus.srf_by_mouse_menu.normal_pixel_translated = _str;
	
	var _str = "";
	var _col = menus.srf_by_mouse_menu.float_pixel[0];
	_str += "float pixel pos 0 consist"; _str+="\n";
	_str += "distance from camera : " + string(_col); _str+="\n";
	var _col = menus.srf_by_mouse_menu.float_pixel[1];
	_str += "float pixel pos 1 consist"; _str+="\n";
	_str += "hash id of object : " + string(_col); _str+="\n";
	_str += "float pixel pos 2 consist"; _str+="\n";
	_str += "part num in obj : " + string(_col); _str+="\n";
	_str+="=====================================";
	menus.srf_by_mouse_menu.float_pixel_translated = _str;
	
	var _str = "";
	_str += "float pixel pos 0,1,2 consist"; _str+="\n";
	_str += "world x,y,z position"; _str+="\n";
	_str += "X : " + string(menus.srf_by_mouse_menu.xyz_pixel[0]);
	_str += " | Y : " + string(menus.srf_by_mouse_menu.xyz_pixel[1]);
	_str += " | Z : " + string(menus.srf_by_mouse_menu.xyz_pixel[2]);
	_str+="\n";	_str+="=====================================";
	menus.srf_by_mouse_menu.xyz_pixel_translated = _str;
	
}