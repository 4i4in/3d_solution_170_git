function exe_return_sign(_shift,_capslock)
{
	var _sign = "";
	var _upper_case = _shift;
	if _capslock > 0	{_upper_case = !_upper_case;};

	if keyboard_struct.Q > 0	{switch(_upper_case){ case 0: _sign = "q";break;	case 1: _sign = "Q";break;	};};
	if keyboard_struct.W > 0	{switch(_upper_case){ case 0: _sign = "w";break;	case 1: _sign = "W";break;	};};
	if keyboard_struct.E > 0	{switch(_upper_case){ case 0: _sign = "e";break;	case 1: _sign = "E";break;	};};
	if keyboard_struct.R > 0	{switch(_upper_case){ case 0: _sign = "r";break;	case 1: _sign = "R";break;	};};
	if keyboard_struct.T > 0	{switch(_upper_case){ case 0: _sign = "t";break;	case 1: _sign = "T";break;	};};
	if keyboard_struct.Y > 0	{switch(_upper_case){ case 0: _sign = "y";break;	case 1: _sign = "Y";break;	};};
	if keyboard_struct.U > 0	{switch(_upper_case){ case 0: _sign = "u";break;	case 1: _sign = "U";break;	};};
	if keyboard_struct.I > 0	{switch(_upper_case){ case 0: _sign = "i";break;	case 1: _sign = "I";break;	};};
	if keyboard_struct.O > 0	{switch(_upper_case){ case 0: _sign = "o";break;	case 1: _sign = "O";break;	};};
	if keyboard_struct.P > 0	{switch(_upper_case){ case 0: _sign = "p";break;	case 1: _sign = "P";break;	};};
	if keyboard_struct.A > 0	{switch(_upper_case){ case 0: _sign = "a";break;	case 1: _sign = "A";break;	};};
	if keyboard_struct.S > 0	{switch(_upper_case){ case 0: _sign = "s";break;	case 1: _sign = "S";break;	};};
	if keyboard_struct.D > 0	{switch(_upper_case){ case 0: _sign = "d";break;	case 1: _sign = "D";break;	};};
	if keyboard_struct.F > 0	{switch(_upper_case){ case 0: _sign = "f";break;	case 1: _sign = "F";break;	};};
	if keyboard_struct.G > 0	{switch(_upper_case){ case 0: _sign = "g";break;	case 1: _sign = "G";break;	};};
	if keyboard_struct.H > 0	{switch(_upper_case){ case 0: _sign = "h";break;	case 1: _sign = "H";break;	};};
	if keyboard_struct.J > 0	{switch(_upper_case){ case 0: _sign = "j";break;	case 1: _sign = "J";break;	};};
	if keyboard_struct.K > 0	{switch(_upper_case){ case 0: _sign = "k";break;	case 1: _sign = "K";break;	};};
	if keyboard_struct.L > 0	{switch(_upper_case){ case 0: _sign = "l";break;	case 1: _sign = "L";break;	};};
	if keyboard_struct.Z > 0	{switch(_upper_case){ case 0: _sign = "z";break;	case 1: _sign = "Z";break;	};};
	if keyboard_struct.X > 0	{switch(_upper_case){ case 0: _sign = "x";break;	case 1: _sign = "X";break;	};};
	if keyboard_struct.C > 0	{switch(_upper_case){ case 0: _sign = "c";break;	case 1: _sign = "C";break;	};};
	if keyboard_struct.V > 0	{switch(_upper_case){ case 0: _sign = "v";break;	case 1: _sign = "V";break;	};};
	if keyboard_struct.B > 0	{switch(_upper_case){ case 0: _sign = "b";break;	case 1: _sign = "B";break;	};};
	if keyboard_struct.N > 0	{switch(_upper_case){ case 0: _sign = "n";break;	case 1: _sign = "N";break;	};};
	if keyboard_struct.M > 0	{switch(_upper_case){ case 0: _sign = "m";break;	case 1: _sign = "M";break;	};};
	if keyboard_struct._189 > 0	{switch(_upper_case){ case 0: _sign = "" ;break;	case 1: _sign = "_";break;	};};
	if keyboard_struct._1 > 0	{switch(_upper_case){ case 0: _sign = "1";break;	case 1: _sign = "";break;	};};
	if keyboard_struct._2 > 0	{switch(_upper_case){ case 0: _sign = "2";break;	case 1: _sign = "";break;	};};
	if keyboard_struct._3 > 0	{switch(_upper_case){ case 0: _sign = "3";break;	case 1: _sign = "";break;	};};
	if keyboard_struct._4 > 0	{switch(_upper_case){ case 0: _sign = "4";break;	case 1: _sign = "";break;	};};
	if keyboard_struct._5 > 0	{switch(_upper_case){ case 0: _sign = "5";break;	case 1: _sign = "";break;	};};
	if keyboard_struct._6 > 0	{switch(_upper_case){ case 0: _sign = "6";break;	case 1: _sign = "";break;	};};
	if keyboard_struct._7 > 0	{switch(_upper_case){ case 0: _sign = "7";break;	case 1: _sign = "";break;	};};
	if keyboard_struct._8 > 0	{switch(_upper_case){ case 0: _sign = "8";break;	case 1: _sign = "";break;	};};
	if keyboard_struct._9 > 0	{switch(_upper_case){ case 0: _sign = "9";break;	case 1: _sign = "";break;	};};
	if keyboard_struct._0 > 0	{switch(_upper_case){ case 0: _sign = "0";break;	case 1: _sign = "";break;	};};
	
	return(_sign);
}