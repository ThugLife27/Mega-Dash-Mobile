/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(Font9);
draw_text(1185,65,global.PlayerProfile.BattlePassXP);

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(Font11);
draw_text(180,167,"Tier: " + string(PassType));