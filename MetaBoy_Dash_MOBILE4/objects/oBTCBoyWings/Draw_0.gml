/// @description Insert description here
// You can write your code in this editor
draw_self();

if(instance_exists(oBTCBoy))
{
image_alpha = oBTCBoy.image_alpha;
if (oBTCBoy.flash > 0)
{
		if (frac(oBTCBoy.flash/4) != 0)
		{
			shader_set(shWhite);
			draw_self();
			shader_reset();
		}
}

if (oBTCBoy.flash == 0 && oBTCBoy.black_shader == 1)
{
	shader_set(shBlack);
	draw_self();
	shader_reset();
}
}



