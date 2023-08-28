/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(891,292,global.AugmentTier);

draw_set_valign(fa_top);
if(!instance_exists(oAugmentButton2) && Page == 0 && Update == 0)
{draw_text(1770,212,"You do not own any more\n" + global.AugmentTier + " Augments\n\nGet a Battle Pass\nor visit the store\nto acquire more augments!");}


