/// @description Insert description here
// You can write your code in this editor
draw_self();

if(AugmentIndex != -1)
{
draw_sprite_ext(sAugmentIcons,AugmentIndex,x,y,2,2,0,c_white,1);
}

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font9);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_ext(891,520,Augment+"\n\n\n\n"+description,40,547)