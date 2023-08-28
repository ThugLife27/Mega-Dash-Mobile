/// @description Insert description here
// You can write your code in this editor

draw_self();

if (wallflash > 0)
{
		wallflash--;
		if (frac(wallflash/4) != 0)
		{
			shader_set(shWhite);
			draw_self();
			shader_reset();
		}
}

if (black_shader == 1)
{
	shader_set(shBlack);
	draw_self();
	shader_reset();
}

