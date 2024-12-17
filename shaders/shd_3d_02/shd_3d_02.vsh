
attribute vec3 in_Position;                  // (x,y,z)
attribute vec3 in_Normal;					 // (x,y,z)     
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
//varying highp float v_DistanceToCamera;
varying float v_DistanceToCamera;
varying vec3 v_Normal;

varying vec3 v_WorldPosition;

uniform float perspective_mod;
uniform float perspective_range;

uniform float rotate_vbuff;
uniform float _tm[18];//see exe_rotate_buff_by_mat
void main()
{
	vec4 object_space_pos = vec4(0.);
	vec3 _new_normal = in_Normal;
	if (rotate_vbuff > 0.5)
		{
			float _xpos = -_tm[6] * in_Position.x		-_tm[12] * in_Position.y	-_tm[15] * in_Position.z;
			float _ypos = -_tm[7] * in_Position.x		-_tm[13] * in_Position.y	-_tm[16] * in_Position.z;
			float _zpos = -_tm[8] * in_Position.x		-_tm[14] * in_Position.y	-_tm[17] * in_Position.z;
			_xpos += _tm[0];	_ypos += _tm[1];	_zpos += _tm[2];
			object_space_pos = vec4( _xpos, _ypos, _zpos, 1.0);
			
			float _xnormal = -_tm[6] * in_Normal.x		-_tm[12] * in_Normal.y	-_tm[15] * in_Normal.z;
			float _ynormal = -_tm[7] * in_Normal.x		-_tm[13] * in_Normal.y	-_tm[16] * in_Normal.z;
			float _znormal = -_tm[8] * in_Normal.x		-_tm[14] * in_Normal.y	-_tm[17] * in_Normal.z;
			
			_new_normal = vec3(_xnormal,_ynormal,_znormal);
			_new_normal = normalize(_new_normal);
		}
	else
		{
			object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
		}
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;

	v_DistanceToCamera = gl_Position.z;
	
	v_Normal = normalize(gm_Matrices[MATRIX_WORLD] * vec4(_new_normal.xyz,0.)).xyz;

	v_vTexcoord = in_TextureCoord;	
	
	v_WorldPosition = (gm_Matrices[MATRIX_WORLD] * object_space_pos).xyz;
}
