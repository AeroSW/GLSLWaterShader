uniform sampler2D diffuseMap;

varying vec2 oUV0;
const vec4 SEA_WATER_COLOR = vec4(0.4,0.4,0.9,1.0);
void main ()
{
   gl_FragColor = SEA_WATER_COLOR;
}
