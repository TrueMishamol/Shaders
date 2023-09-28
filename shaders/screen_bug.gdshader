shader_type spatial;

void vertex(){
	VERTEX.y += sin(TIME * 30.0 + VERTEX.x * 100.0) * 0.10;
	VERTEX.x += sin(TIME * 30.0 + VERTEX.y * 100.0) * 0.10;
	VERTEX.z += sin(TIME * 30.0 + VERTEX.x * 100.0) * 0.10;
}

void fragment(){
	ROUGHNESS = 0.2;
	RIM = 1.0;

	vec3 color;
	color.r = sin(TIME + 10.0 + VERTEX.x * 20.0);
	color.g = sin(TIME + 5.0 + VERTEX.x * 10.0);
	color.b = sin(TIME + 0.5 + VERTEX.x * 5.0);
	ALBEDO = color;
}