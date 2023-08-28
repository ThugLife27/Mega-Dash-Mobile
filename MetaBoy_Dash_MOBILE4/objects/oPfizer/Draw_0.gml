/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font10);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

if(global.difficulty == 0)
{
draw_sprite(sMeter,0,1694,35);
draw_text(1691,35+40,"APEBUYNFT");
draw_sprite_stretched(sMeterReady,0,1694,35-21,(max(hp,0)/max_hp)*146,34);
}
else
{
draw_sprite(sMeter,0,1694,104);
draw_text(1691,104+40,"APEBUYNFT");
draw_sprite_stretched(sMeterReady,0,1694,104-21,(max(hp,0)/max_hp)*146,34);
}

image_alpha = alpha_slider/180;

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





