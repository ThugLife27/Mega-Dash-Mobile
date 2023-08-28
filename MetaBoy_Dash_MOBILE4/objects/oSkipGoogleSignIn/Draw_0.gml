/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(image_alpha == 1)
{
	draw_text_ext(30,y+150,"NOTE: You MUST be signed-in via Google Play Services or you will miss the following features:\n\n-Saving In-Game Items\n-Posting Scores to Leaderboards",42,1020);
}