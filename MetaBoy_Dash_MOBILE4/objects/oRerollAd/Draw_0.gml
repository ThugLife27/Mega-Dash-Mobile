/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font9);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(x,y+140,"Watch Ad");

draw_set_font(Font10);
draw_text_transformed(x,y,"Gain 5\nRerolls",image_xscale,image_yscale,0);