shader_type spatial;

void vertex(){
	VERTEX.y += sin(TIME * 1.0 + VERTEX.z * 10.0) * 0.08;
	VERTEX.y += sin(TIME * 0.9 + VERTEX.x * 10.0) * 0.08;
}

void fragment(){
	ROUGHNESS = 0.2;
	RIM = 1.0;
	
	vec3 color;
	color.r = sin(TIME + 10.0 + VERTEX.x * 2.0) + 1.0;
	color.g = sin(TIME + 5.0 + VERTEX.x * 1.0) + 1.0;
	color.b = sin(TIME + 0.5 + VERTEX.x * 0.5) + 1.0;
	ALBEDO = color;
}