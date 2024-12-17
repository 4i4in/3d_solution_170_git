//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float rotate_vbuff;
uniform float _tm[18];//see exe_rotate_buff_by_mat

void main()
{
	vec4 object_space_pos = vec4(0.);
	if (rotate_vbuff > 0.5)
		{
			float _xpos = -_tm[6] * in_Position.x		-_tm[12] * in_Position.y	-_tm[15] * in_Position.z;
			float _ypos = -_tm[7] * in_Position.x		-_tm[13] * in_Position.y	-_tm[16] * in_Position.z;
			float _zpos = -_tm[8] * in_Position.x		-_tm[14] * in_Position.y	-_tm[17] * in_Position.z;
			_xpos += _tm[0];	_ypos += _tm[1];	_zpos += _tm[2];
			object_space_pos = vec4( _xpos, _ypos, _zpos, 1.0);
		}
	else
		{
			object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
		}
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vTexcoord = in_TextureCoord;
}
