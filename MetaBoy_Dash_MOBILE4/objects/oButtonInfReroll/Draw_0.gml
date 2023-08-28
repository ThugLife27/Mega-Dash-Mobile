/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(Font9);
draw_text(x,y,"Inf Reroll?")

if(global.InfReroll == 0)
{draw_text(x,y+120,"OFF");}
else
{draw_text(x,y+120,"ON");}