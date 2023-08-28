/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font9);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_ext(x+430,y,"A great intro to Mega Dash!",35,500);

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(666,773,global.Player_Name);

draw_set_font(Font9);
draw_text(732,65,global.PlayerProfile.Coins);
draw_text(1185,65,global.PlayerProfile.BattlePassXP);

draw_set_font(Font6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(32,131,"Season Zero\nComing Soon");