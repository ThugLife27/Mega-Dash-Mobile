/// @description Insert description here
// You can write your code in this editor

draw_self();

if(success == 0 && redeeming == 0 && failed == 0)
{
	draw_set_color(c_black);
	draw_set_font(Font11);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(187,970,keyboard_string);
}
else if(redeeming == 1)
{
	draw_set_color(c_black);
	draw_set_font(Font11);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(187,970,promocode);
}
else if(success == 1)
{
	draw_set_font(Font11);
	draw_set_halign(fa_left);
	draw_set_color(c_green);
	draw_text(187,970,"SUCCESS!");
}
else if(failed == 1)
{
	draw_set_font(Font11);
	draw_set_halign(fa_left);
	draw_set_color(c_red);
	//Promo Code Invalid
	if(reason == 1)
	{draw_text(187,970,"INVALID CODE!");}
	//Google Play Save Fail
	if(reason == 2)
	{draw_text(187,970,"Network Issue")};
}
	
if(promocode_reward != "" && redeeming == 0)
{
	draw_set_font(Font12);
	draw_set_color(c_yellow);
	draw_set_halign(fa_middle);
	draw_text(540,530,"Reward:");
	draw_set_color(c_white);
	draw_text(540,600,string(promocode_reward)+"!");
}