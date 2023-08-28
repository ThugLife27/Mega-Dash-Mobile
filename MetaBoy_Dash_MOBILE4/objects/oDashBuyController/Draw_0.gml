/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font9);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(732,65,global.PlayerProfile.Coins);

draw_set_valign(fa_top);

	if(reason == 1)
	{draw_text(2025,750,"Getting Battle\nPass Status...");}
	if(reason == 2)
	{draw_text(2025,750,"Could not get\nBattle Pass\nstatus");}
	if(reason == 3)
	{draw_text(2025,750,"Attempting to\npurchase...");}
	if(reason == 4)
	{draw_text(2025,750,"Purchase\nSuccessful!");}
	if(reason == 5)
	{draw_text(2025,750,"Purchase could\nnot be completed");}
	
draw_set_halign(fa_left);
draw_text(1800,219,"Battle Passes are\nthe best bang\nfor your buck!\n\nYou can earn:\n- Characters\n- Levels\n- Coins\n- Augments\n\nAug Starter Pack:\n- 4 Commons\n- 3 Rares\n- 1 Legendary");

draw_set_font(Font11);
draw_set_halign(fa_center);
draw_text_ext(160,136,"Season Zero",40,282);
	