attribute vec4 position;

uniform mat4 worldViewProj;
uniform float currTime;
uniform float waveHeight;

varying vec3 interpolatedVertexObject;

void main()
{
	// Hello world
	float yOffset = sin((position.x+currTime)) + cos((position.y+currTime));
	if(yOffset < waveHeight){
		yOffset = waveHeight;
	}
	else if(yOffset > waveHeight*2){
		//find case for clamping.
		//Should be based on some input so user can easily change wave height
		yOffset = yOffset - (waveHeight * floor(yOffset/waveHeight));
	}
	vec4 newPos = vec4(position.x, yOffset, position.z, position.w);
	///New pos translates certain vertices, possibly needs a subdivide modifier
	gl_Position = worldViewProj * newPos; // Need to* newPos;
	interpolatedVertexObject = vec3(newPos);
}
