/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y-110,"1500 Coins");

if(price != "")
{
draw_set_font(Font6);
draw_text(x,y+110,string(price));
}