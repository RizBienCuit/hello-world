shader_type canvas_item;
uniform float speed=10.0;
uniform vec2 uv;
void vertex()
{
}
void fragment()
{
	COLOR=texture(TEXTURE,UV);
	//COLOR.w-=texture();
}

