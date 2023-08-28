/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
if(global.controlsetting == 0)
{
	draw_text(x+250,y+10,"LEFT TAP - JUMP \nRIGHT TAP - KICK");
}
else
{
	draw_text(x+250,y+10,"LEFT TAP - KICK \nRIGHT TAP - JUMP");
}



