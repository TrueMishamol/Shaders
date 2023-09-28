shader_type spatial;

void fragment(){
	vec3 color;
	vec3 white = vec3(1,1,1);
	vec3 blue = vec3(0,0,1);
	vec3 red = vec3(1,0,0);

	float divisions = 5.0;
	float speed = 0.1;
	float w = UV.y - speed * TIME;
	
	if (floor(mod(w * divisions, 3)) < 1.0) {
		color = white;
	}
	if (floor(mod(w * divisions, 3)) == 1.0) {
		color = blue;
	}
	if (floor(mod(w * divisions, 3)) > 1.0) {
		color = red;
	}
	
	ALBEDO = color;
}