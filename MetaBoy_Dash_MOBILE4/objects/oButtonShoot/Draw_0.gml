/// @description Insert description here
// You can write your code in this editor
draw_self();

if (flash > 0)
{
		flash --;
		if (frac(flash/4) != 0)
		{
			shader_set(shWhite);
			draw_self();
			shader_reset();
		}
}

if(image_alpha == 1)
{
draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font9);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y,"SHOOT");
}