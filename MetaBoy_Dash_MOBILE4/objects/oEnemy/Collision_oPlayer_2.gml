/// @description Insert description here
// You can write your code in this editor
if(global.UltimateActive == 0)
{
if (enemy_dead == 0 && global.dash_mode == 1 && oPlayer.hsp >= 0)
{
	audio_play_sound(SoundBigHit,10,false,.5);
	if(sprite_index = sEnemy8)
	{
		if(global.uLuckyDice == 1 || global.uTMNT_Orange == 1)
			{LuckyDice = irandom_range(0,9);
			if(LuckyDice <= 0)
			{
				LuckyDice = 2;
				instance_create_layer(x+50,y-100,"Screens",oDice);
				instance_create_layer(x+100,y-100,"Screens",oDice);	
			}
			else if(LuckyDice >= 1 && LuckyDice <= (3 + global.uTMNT_Orange))
			{
				LuckyDice = 1;
				instance_create_layer(x+75,y-100,"Screens",oDice);	
			}
			else{LuckyDice = 0;}}
		audio_play_sound(SoundRareOG,10,false,1);
		instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{image_index : (((10*LuckyDice)+2*global.multiplier)-1)});
		
		if(200*global.multiplier+(1000*LuckyDice) >= 6000)
		{global.LuckyDiceUnlock = 1;}
		
		global.scorebonus = global.scorebonus + 200*global.multiplier+(1000*LuckyDice);
		global.multiplier = global.multiplier + 2 + global.uOPOGs;
		if(global.multiplier > global.multiplier_max) {global.multiplier = global.multiplier_max;}
		
		
	}
	else
	{
			if(global.uLuckyDice == 1 || global.uTMNT_Orange == 1)
			{LuckyDice = irandom_range(0,9);
			if(LuckyDice <= 0)
			{
				LuckyDice = 2;
				instance_create_layer(x+35,y-100,"Screens",oDice);
				instance_create_layer(x+115,y-100,"Screens",oDice);	
			}
			else if(LuckyDice >= 1 && LuckyDice <= (3 + global.uTMNT_Orange))
			{
				LuckyDice = 1;
				instance_create_layer(x+75,y-100,"Screens",oDice);	
			}
			else{LuckyDice = 0;}}
			instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{image_index : (((10*LuckyDice)+global.multiplier)-1)});
			
			if((100*global.multiplier+(1000*LuckyDice)) >= 6000)
			{global.LuckyDiceUnlock = 1;}
			
			global.scorebonus = global.scorebonus + 100*global.multiplier+(1000*LuckyDice);
			global.multiplier = global.multiplier + 1 + global.uOPOGs;
			if(global.multiplier > global.multiplier_max){global.multiplier = global.multiplier_max;}
			
			
	}
	
	enemy_dead = 1;
	image_speed = 0;
	hsp = 30;
	vsp = -25;
	
	if(global.uOPOGs == 1){global.MulliganCounter = 1;}
	
	if(global.Character == oPlayer && global.multiplier >= 10 && global.FighterSkins[6] == sCharLocked)
	{
		if(oPlayer.sprite_index == sGokuKick || oPlayer.sprite_index == sGokuRun)
		{
			global.SSKickCounter++;
			if(global.SSKickCounter >= 10)
			{
				global.SSKickUnlock = 1;
				instance_create_layer(oPlayer.x,oPlayer.y,"Walls",oGoldAura);
				//sound?
			}
		}
	}
	
	if((global.uSuperSaiyan == 1 || global.uUltimate == 1) && global.multiplier >= 10 && global.UltimateComplete == 0)
	{global.UltimateCounter++;}
	
}

if (enemy_dead == 0 && (global.dash_mode == 0 || oPlayer.hsp < 0) && global.GhostActive == 0 && global.uNimbleFighter == 0 && global.player_revive_mode == 0 && global.uSuperman == 0 && global.SS4SuperSaiyan == 0)
{
	global.player_death = 1;
}
}