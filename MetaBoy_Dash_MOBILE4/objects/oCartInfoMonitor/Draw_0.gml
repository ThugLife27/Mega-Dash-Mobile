/// @description Insert description here
// You can write your code in this editor

draw_sprite(sUpgrades,global.UpgradeArray[Cart_Select],780,214);

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(1460,570,string(Cart_Select + 1) + " of " + string(array_length(global.UpgradeArray)));


