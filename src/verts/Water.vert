attribute vec4 position;

uniform mat4 worldViewProj;

void main()
{
	// Hello world
	vec4 newPos = vec4(position.x, sin(position.x) + cos(position.z), position.z, position.w);
	gl_Position = worldViewProj * position;
}
