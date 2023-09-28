shader_type spatial;

void vertex(){
	VERTEX.y += sin(TIME * 250.0) * 0.02;
}