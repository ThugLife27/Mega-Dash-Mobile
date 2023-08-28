/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font9);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y,"Under 13");

draw_set_font(Font6);
draw_text_ext(x,y-230,"What is your age?\n\n(We have to ask to comply with advertising regulations)",40,1020);