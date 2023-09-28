shader_type spatial;

void vertex(){
	VERTEX.y += sin(TIME * 11.0 + VERTEX.z * 30.0) * 0.5;
	VERTEX.y += sin(TIME * 10.0 + VERTEX.x * 30.0) * 0.5;
}

void fragment(){
	ROUGHNESS = 0.2;
	RIM = 1.0;
	
	vec3 color;
	color.r = sin(TIME * 0.3) + 1.0;
	color.g = sin(TIME * 0.2) + 1.0;
	color.b = sin(TIME * 0.1) + 1.0;
	ALBEDO = color;
}