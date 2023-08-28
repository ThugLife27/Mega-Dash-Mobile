/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_ext_transformed(x,y,"View Rank",40,300,image_xscale,image_yscale,0);

draw_text(x,y+120,rank);

draw_set_halign(fa_left);
draw_text(x-180,y+210,"Rank: "+Player_Rank+"\nHighScore: "+Player_Score);