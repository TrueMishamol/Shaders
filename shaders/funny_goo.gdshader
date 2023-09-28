shader_type spatial;

void vertex(){
	VERTEX.y += sin(TIME * 25.0 + VERTEX.x * 6.0) * 0.02;
}

void fragment(){
	ALBEDO = vec3(0,0,0);
	ROUGHNESS = 1.2;
	RIM = 0.0;
}