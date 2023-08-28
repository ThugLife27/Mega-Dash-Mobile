/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(global.CharacterRunSkin,image_index,320,440,2,2,0,c_white,1);

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(320,440+253,global.Player_Name);

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(Font9);
if(global.GuestMode == 0)
{
draw_sprite(sXPGained,0,2076,424);
draw_text(1185,65,global.PlayerProfile.BattlePassXP);
draw_text(2153,425,"+"+string(xp_gained));
draw_text(2070,497,"Rate: "+string(earn_rate)+"X");
}

draw_set_font(Font2);
{draw_text(908,204,"ROUND 1");}
{draw_text(908,344,"ROUND 2");}
{draw_text(908,480,"ROUND 3");}
draw_text(1428,204,string(global.Round1_Score));
draw_text(1428,344,string(global.Round2_Score));
draw_text(1428,480,string(global.Round3_Score));

if(global.uBonusRound == 1 || global.AUG_4thRound == 1)
{
	draw_sprite(sScoreBoardBoxBlue,0,908,616);
	draw_sprite(sScoreBoardBoxBlue,0,1428,616);
	draw_sprite(sScoreBoardBoxPink,0,1168,776);
	draw_text(908,616,"BONUS ROUND");
	draw_text(1428,616,string(global.Round4_Score));
	draw_text(1165,776,string(global.RoundAll_Score));
	draw_set_font(Font9);
	if(global.uBonusRound == 1)
	draw_text(1165,776+120,"Lowest Score Dropped");
}
else
{
	draw_sprite(sScoreBoardBoxPink,0,1168,640);
	draw_text(1168,640,string(global.RoundAll_Score));
}

if(global.difficulty > 0)
{
for (i = 0; i < global.round_number; i+=1)
{draw_sprite_stretched(sUpgradeIcon,global.UpgradeChoiceArray[i],1684,136+i*136,150,150);}
}
	
//if(global.uBonusRound == 1)
//{
//draw_sprite_stretched(sUpgradeIcon,global.UpgradeChoiceArray[array_length(global.UpgradeChoiceArray)-1],1684,155+3*134,150,150);
//}
	
draw_set_font(Font6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(32,131,string(difficulty));

draw_set_font(Font2);
draw_set_halign(fa_right);
draw_text(2267,780,"GAME OVER");