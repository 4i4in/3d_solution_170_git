function quaternion_to_euler(_q)
{
    var t0 = +2.0 * (_q._w * _q._x + _q._y * _q._z);
    var t1 = +1.0 - 2.0 * (_q._x * _q._x + _q._y * _q._y);
    var t2 = +2.0 * (_q._w * _q._y - _q._z * _q._x);
    var t3 = +2.0 * (_q._w * _q._z + _q._x * _q._y);
    var t4 = +1.0 - 2.0 * (_q._y * _q._y + _q._z * _q._z);
	var t5 = +2.0 * (_q._x * _q._z + _q._w * _q._y);
	var t6 = +2.0 * (_q._y * _q._z - _q._w * _q._x);
	var t7 = +1.0 - 2.0 * (_q._x * _q._x + _q._y * _q._y);

	t2 = clamp(t2, -1.0, 1.0);
	t5 = clamp(t5, -1.0, 1.0);
	t6 = clamp(t6, -1.0, 1.0);
	
	/*
	// XXX (Roll-Roll-Roll)
	var yaw = radtodeg(arctan2(t0, t1));
	var pitch = radtodeg(arctan2(t2, t3));
	var tilt = radtodeg(arctan2(t4, t5));

	// YYY (Pitch-Pitch-Pitch)
	var yaw = radtodeg(arctan2(t6, t7));
	var pitch = radtodeg(arctan2(t0, t1));
	var tilt = radtodeg(arctan2(t2, t3));

	// ZZZ (Yaw-Yaw-Yaw)
	var yaw = radtodeg(arctan2(t4, t5));
	var pitch = radtodeg(arctan2(t6, t7));
	var tilt = radtodeg(arctan2(t2, t3));

	// XYY (Roll-Pitch-Pitch)
	var yaw = radtodeg(arctan2(t2, t3));
	var pitch = radtodeg(arctan2(t4, t5));
	var tilt = radtodeg(arctan2(t6, t7));

	// YYX (Pitch-Pitch-Roll)
	var yaw = radtodeg(arctan2(t6, t7));
	var pitch = radtodeg(arctan2(t0, t1));
	var tilt = radtodeg(arctan2(t2, t3));

	// ZZX (Yaw-Yaw-Roll)
	var yaw = radtodeg(arctan2(t6, t7));
	var pitch = radtodeg(arctan2(t2, t3));
	var tilt = radtodeg(arctan2(t4, t5));

	// XYX (Roll-Yaw-Roll)
	var yaw = radtodeg(arctan2(t0, t1));
	var pitch = radtodeg(arctan2(t2, t3));
	var tilt = radtodeg(arctan2(t4, t5));

	// YZY (Pitch-Zaw-Pitch)
	var yaw = radtodeg(arctan2(t4, t5));
	var pitch = radtodeg(arctan2(t6, t7));
	var tilt = radtodeg(arctan2(t2, t3));

	// ZXZ (Yaw-Xaw-Yaw)
	var yaw = radtodeg(arctan2(t2, t3));
	var pitch = radtodeg(arctan2(t0, t1));
	var tilt = radtodeg(arctan2(t6, t7));

	// XZY (Roll-Zaw-Yaw)
	var yaw = radtodeg(arctan2(t6, t7));
	var pitch = radtodeg(arctan2(t2, t3));
	var tilt = radtodeg(arctan2(t4, t5));

	// YXZ (Pitch-Roll-Zaw)
	var yaw = radtodeg(arctan2(t6, t7));
	var pitch = radtodeg(arctan2(t4, t5));
	var tilt = radtodeg(arctan2(t0, t1));

	// ZYZ (Yaw-Pitch-Zaw)
	var yaw = radtodeg(arctan2(t0, t1));
	var pitch = radtodeg(arctan2(t6, t7));
	var tilt = radtodeg(arctan2(t2, t3));
	*/
	
	
	// Yaw-Pitch-Roll (ZYX)
	var yaw = radtodeg(arctan2(t4, t5));
	var pitch = radtodeg(arctan2(t0, t1));
	//var pitch = radtodeg(arcsin(t6));
	var tilt = radtodeg(arctan2(t2, t3));

	var _return = [yaw, pitch, tilt]
    return(_return);
}