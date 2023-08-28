/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text_ext(x+1,y-480,asset,40,350);
if(all_owned == 0)
{draw_text(x+2,y-110,"Owned: " + string(augments_owned));}
else
{draw_text(x+3,y-110,"All Owned!");}

draw_sprite(sStoreAugmentIcons,sprite,x,y-285);