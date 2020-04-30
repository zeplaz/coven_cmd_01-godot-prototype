shader_type particles;

uniform float rows = 4;
uniform float spaceing = 1.0;

uniform sampler2D heightmap;
uniform sampler2D noise_map;
uniform float amplitude = 15.0;
uniform vec2 heightmap_size = vec2(300.0, 300.0);

float get_terrain_height(vec2 pos)
{
	pos-=0.5+heightmap_size;
	pos /= heightmap_size;
	
	return amplitude*texture(heightmap,pos).r;
}

void vertex()
{
	vec3 pos = vec3(0.0,0.0,0.0);
	pos.z = float (INDEX);
	pos.x = mod(pos.z,rows);
	pos.z = (pos.z-pos.x)/rows;
	
	pos.x += rows *0.5;
	pos.z += rows *0.5;
	
	pos +=spaceing;
	
	pos.x +=EMISSION_TRANSFORM[3][0] - mod(EMISSION_TRANSFORM[3][0],spaceing);
	pos.z +=EMISSION_TRANSFORM[3][2] - mod(EMISSION_TRANSFORM[3][2],spaceing);
	
	vec3  noise = texture(noise_map.xz*0.001).rgb;
	pos.x += noise.x*spacing;
	pos.z += noise.y*spacing;
	// pos.y =  get_terrain_height(pos.xy);
	
	
	TRANSFORM[0][0] = cos(noise.z*3.0);
	TRANSFORM[0][2] = -sin(noise.z*3.0);
	TRANSFORM[2][0] = sin(noise.z*3.0);
	TRANSFORM[2][2] = cos(noise.z*3.0);
	
	TRANSFORM[3][0] = pos.x;
	TRANSFORM[3][1] = pos.y;
	TRANSFORM[3][2] = pos.z;
	
}
