/// @description Insert description here
// You can write your code in this editor

draw_self();

if (flash > 0)
{
		flash --;
		if (frac(flash/3) != 0)
		{
			shader_set(shWhite);
			draw_self();
			shader_reset();
		}
}

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font10);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y+68,"SHOP");





