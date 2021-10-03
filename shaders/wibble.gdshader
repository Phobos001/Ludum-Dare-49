shader_type canvas_item;

uniform float wave_scale = 0.1;
uniform float wave_frequency = 0.1;
uniform float wave_amplitude = 0.01;

void vertex() {
	// _/o.o\_
}

void fragment() {
	vec2 new_uv1 = (UV * wave_scale + TIME * wave_frequency) * 3.141592;
	vec2 new_uv2 = UV + vec2(sin(new_uv1.x), sin(new_uv1.y)) * wave_amplitude;
	COLOR = texture(TEXTURE, new_uv2);
}