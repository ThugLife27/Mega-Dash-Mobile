/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
if(image_index < 2 && image_alpha == 1 && sprite_index == sMB_BuywithCoins)
{
	draw_text(x,y+95,cost);
	draw_sprite(sStoreCoins,0,x+65,y+110);
}

draw_set_halign(fa_center);
draw_set_font(Font10);
draw_text(x,490,"3x XP Rate");
draw_text(x,490+50,"Augment Starter\nPack");