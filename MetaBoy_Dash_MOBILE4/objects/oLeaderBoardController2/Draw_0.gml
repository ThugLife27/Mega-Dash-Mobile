/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font4);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if(LB_Names[0] == " ")
{
	ShowTimer--;
	if (ShowTimer > 0)
	{draw_text(694,300,"LOADING ...");}
	else{draw_text(694,300,"No Data\nAvailable");}
}

else
{
ShowTimer = 120;
for (var i = 0; i < 10; i += 1)
{
	if(LeaderboardShow > 0)
	{
		if(LB_Scores[i+Page*10] != " " && string_length(LB_Scores[i+Page*10]) >= 3)
		{
			draw_text(84,220+81*i,LB_Ranks[i+Page*10]);
			draw_text(365,220+81*i,LB_Names[i+Page*10]);
			draw_text(694,220+81*i,LB_Scores[i+Page*10]);
			
			score_string = LB_Scores[i+Page*10];
			if(string_length(LB_MetaData[i+Page*10]) == 30)
			{
				if(string_char_at(LB_MetaData[i+Page*10],1) == string_char_at(score_string,2)
				&& string_char_at(LB_MetaData[i+Page*10],4) == string_char_at(score_string,3)
				&& string_char_at(LB_MetaData[i+Page*10],2) == string_char_at(LB_MetaData[i+Page*10],15)
				&& string_char_at(LB_MetaData[i+Page*10],3) == string_char_at(LB_MetaData[i+Page*10],16))
				{
					draw_sprite(sUpgradeIcon,real(string_char_at(LB_MetaData[i+Page*10],27)+string_char_at(LB_MetaData[i+Page*10],28)),960,220+81*i);
					draw_sprite(sUpgradeIcon,real(string_char_at(LB_MetaData[i+Page*10],25)+string_char_at(LB_MetaData[i+Page*10],26)),960+77,220+81*i);
					draw_sprite(sUpgradeIcon,real(string_char_at(LB_MetaData[i+Page*10],23)+string_char_at(LB_MetaData[i+Page*10],24)),960+2*77,220+81*i);
	
					if(real(string_char_at(LB_MetaData[i+Page*10],21)+string_char_at(LB_MetaData[i+Page*10],22)) != 99)
					{draw_sprite(sUpgradeIcon,real(string_char_at(LB_MetaData[i+Page*10],21)+string_char_at(LB_MetaData[i+Page*10],22)),960+3*77,220+81*i);}
			
					Fighter_String = string_char_at(LB_MetaData[i+Page*10],29)+string_char_at(LB_MetaData[i+Page*10],30);
					Fighter_Sprite = GetFighterSprite(Fighter_String);
					draw_sprite_stretched(Fighter_Sprite,image_index,835,173+81*i,100,100)
			
					draw_sprite(sLeaderboardAugButtons,0,1310,220+81*i);
					draw_sprite(sLeaderboardAugButtons,0,1310+80,220+81*i);
					draw_sprite(sLeaderboardAugButtons,0,1310+80*2,220+81*i);
					draw_sprite(sLeaderboardAugButtons,0,1310+80*3,220+81*i);
					draw_sprite(sLeaderboardAugButtons,1,1310+80*4,220+81*i);
					draw_sprite(sLeaderboardAugButtons,1,1310+80*5,220+81*i);
					draw_sprite(sLeaderboardAugButtons,1,1310+80*6,220+81*i);
					draw_sprite(sLeaderboardAugButtons,2,1310+80*7,220+81*i);
			
					for(var j = 0; j < 16; j+= 2)
					{
					if(real(string_char_at(LB_MetaData[i+Page*10],19-j)+string_char_at(LB_MetaData[i+Page*10],20-j)) != 99)
					draw_sprite_stretched(sAugmentIcons,real(string_char_at(LB_MetaData[i+Page*10],19-j)+string_char_at(LB_MetaData[i+Page*10],20-j)),1270+80*j/2,180+81*i,79,79);
					}
				}
				else
				{draw_text(1036,220+81*i,"CHEATER");}
			}
			else
			{draw_text(1036,220+81*i,"CHEATER");}
		}
	}
	else
	{
		if(LB_Scores[i+Page*10] != " " && string_length(LB_Scores[i+Page*10]) >= 3)
		{
			draw_text(84,220+81*i,LB_Ranks[i+Page*10]);
			draw_text(365,220+81*i,LB_Names[i+Page*10]);
			draw_text(694,220+81*i,LB_Scores[i+Page*10]);
			
			score_string = LB_Scores[i+Page*10];
			if(string_length(LB_MetaData[i+Page*10]) == 30)
			{
				if(string_char_at(LB_MetaData[i+Page*10],1) == string_char_at(score_string,2)
				&& string_char_at(LB_MetaData[i+Page*10],4) == string_char_at(score_string,3)
				&& string_char_at(LB_MetaData[i+Page*10],2) == string_char_at(LB_MetaData[i+Page*10],15)
				&& string_char_at(LB_MetaData[i+Page*10],3) == string_char_at(LB_MetaData[i+Page*10],16))
				{
			
					draw_text(1036,220+81*i,"N/A");
			
					Fighter_String = string_char_at(LB_MetaData[i+Page*10],29)+string_char_at(LB_MetaData[i+Page*10],30);
					Fighter_Sprite = GetFighterSprite(Fighter_String);
					draw_sprite_stretched(Fighter_Sprite,image_index,835,173+81*i,100,100)
			
					draw_sprite(sLeaderboardAugButtons,0,1310,220+81*i);
					draw_sprite(sLeaderboardAugButtons,0,1310+80,220+81*i);
					draw_sprite(sLeaderboardAugButtons,0,1310+80*2,220+81*i);
					draw_sprite(sLeaderboardAugButtons,0,1310+80*3,220+81*i);
					draw_sprite(sLeaderboardAugButtons,1,1310+80*4,220+81*i);
					draw_sprite(sLeaderboardAugButtons,1,1310+80*5,220+81*i);
					draw_sprite(sLeaderboardAugButtons,1,1310+80*6,220+81*i);
					draw_sprite(sLeaderboardAugButtons,2,1310+80*7,220+81*i);
			
					for(var j = 0; j < 16; j+= 2)
					{
					if(string_char_at(LB_MetaData[i+Page*10],19-j)+string_char_at(LB_MetaData[i+Page*10],20-j) != "99")
					draw_sprite_stretched(sAugmentIcons,real(string_char_at(LB_MetaData[i+Page*10],19-j)+string_char_at(LB_MetaData[i+Page*10],20-j)),1270+80*j/2,180+81*i,79,79);
					}
				}
				else
				{draw_text(1036,220+81*i,"CHEATER");}
			}	
			else
			{draw_text(1036,220+81*i,"CHEATER");}
		}	
	}
}
}

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font4);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

draw_text(38,67,string(LeaderboardTitles[LeaderboardShow]));
