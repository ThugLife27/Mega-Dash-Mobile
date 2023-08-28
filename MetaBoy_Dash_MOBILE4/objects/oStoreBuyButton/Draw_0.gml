/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_right);
draw_set_valign(fa_center);
if(image_index < 2)
{draw_text(x,y+6,cost);}

draw_set_halign(fa_center);

if(owned == 1)
{draw_text(x+7,y,"Owned!");}
else if(all_owned == 1)
{draw_text(x+7,y,"All owned!");}

draw_set_valign(fa_top);
draw_text_ext(x+1,y-480,asset,40,350);

if(draw_augment_count == 1 && oStoreController.Purchase == 1)
{draw_text(x,y-110,"Owned: " + string(augments_owned));}
	