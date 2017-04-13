attribute vec4 position;
attribute vec2 uv0;

uniform mat4 worldViewProj;

const vec3 SEA_WATER_COLOR = vec3(0.8,0.9,0.6);
void main()
{
   gl_Position = worldViewProj * position;
}
