/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(Font11);
draw_text(x,y-410,"LEVEL " + string(level));
draw_text(x,y+90,string(xp_cost) + " XP");

if(free == 1 && xp_cost <= 10000)
{
	draw_set_colour(c_lime);
	draw_set_font(Font10);
	draw_text(x,y-357,"FREE!");
	draw_set_colour(c_white);
	draw_set_font(Font11);
}

if(type == "Level")
{
	draw_sprite_ext(sMapIcons,details,x,y-290,.4,.4,0,c_white,1);
}
else if(type == "Coins")
{
	draw_sprite_ext(sStoreCoins2,0,x,y-220,1,1,0,c_white,1);
	draw_set_font(Font6);
	draw_text(x,y-115,string(details)+" Coins");
}
else if(type == "Augment")
{
	draw_sprite_ext(sStoreAugmentIcons,details,x,y-190,1,1,0,c_white,1);	
}

if(claimed == 1)
{draw_sprite(sCheckMark,0,x,y);}

draw_set_valign(fa_center);
draw_set_font(Font6);
if(reason == 1)
{draw_text(x,y,"Claim\nFailed");}
else if(reason == 2)
{draw_text(x,y,"Success!")}