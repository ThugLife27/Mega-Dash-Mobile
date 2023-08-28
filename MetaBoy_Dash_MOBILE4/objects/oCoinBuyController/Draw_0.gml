/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font9);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(732,65,global.PlayerProfile.Coins);

if(global.IAP_Enabled == false)
{
	if(reason == 0)
	{draw_text(2025,670,"Attempting to\nconnect to\n store...");}
	if(reason == 1)
	{draw_text(2025,670,"Store not connected\nattempting reconnect\nin " + string(floor(reconnect_timer/60)));}
}

	if(reason == 2)
	{draw_text(2025,670,"Could not complete\npurchase, please\ntry again");}
	if(reason == 3)
	{draw_text(2025,670,"Purchase successful!");}
	if(reason == 4)
	{draw_text(2025,670,"Payment received but\ncould not save\nplayer data\n\nCheck internet and\nrefresh app to see\ncoin balance updated");}
	if(reason == 5)
	{draw_text(2025,670,"Purchasing...");}
	if(reason == 6)
	{draw_text(2025,670,"Purchases are pending\nCheck back later");}
	
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(1800,219,"Meta Coins are\nused to buy:\n\n- Battle Passes\n- Characters\n- Levels\n- Augments\n\nand more!");