/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font10);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x+90,y+27,"LEADERBOARD");
draw_text(x+25,y+80,"RANK: " + string(Player_Rank));
draw_text(x+25,y+135,"HIGH\nSCORE: " + string(Player_Score));





