/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font9);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text_ext(x+1,y-480,Augment,40,350);

draw_set_font(Font6);
if(reason == 1)
{draw_text(x,y,"Redeem Failed");}
else if(reason == 2)
{draw_text(x,y,"Success!")}

draw_sprite_ext(sAugmentIcons,sprite,x,y-220,2,2,0,c_white,1);