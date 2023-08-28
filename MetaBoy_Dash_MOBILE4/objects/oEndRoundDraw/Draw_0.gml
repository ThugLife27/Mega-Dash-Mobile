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

if (global.Round1_Score > 0)
{draw_text(1428,204,string(global.Round1_Score));}

if (global.Round2_Score > 0)
{draw_text(1428,344,string(global.Round2_Score));}

if (global.Round3_Score > 0)
{draw_text(1428,480,string(global.Round3_Score));}

draw_text(1168,645,string(global.RoundAll_Score));

if(global.difficulty > 0)
{
for (i = 0; i < global.round_number; i+=1)
{draw_sprite_stretched(sUpgradeIcon,global.UpgradeChoiceArray[i],1684,136+i*136,150,150);}
}

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(32,131,string(difficulty));

draw_set_halign(fa_right);
draw_set_font(Font2);
if(global.round_number < 3)
{draw_text(2267,780,"ROUND " + string(global.round_number+1) + " NEXT");}
else
{draw_text(2267,780,"BONUS ROUND NEXT");}



