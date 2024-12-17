//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
uniform float _hash_alpha;
void main()
{
    vec4 _base_color = texture2D(gm_BaseTexture, v_vTexcoord);
	gl_FragData[0] = vec4(_base_color.r,_base_color.g,_base_color.b,_hash_alpha);
}
