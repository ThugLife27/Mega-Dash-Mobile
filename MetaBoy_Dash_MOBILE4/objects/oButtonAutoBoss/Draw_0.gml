/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(Font9);
draw_text(x,y,"Auto Boss?")

draw_text(732,65,global.PlayerProfile.Coins);
draw_text(1185,65,global.PlayerProfile.BattlePassXP);

if(global.AutoBoss == 0)
{draw_text(x,y+120,"OFF");}
else
{draw_text(x,y+120,"ON");}