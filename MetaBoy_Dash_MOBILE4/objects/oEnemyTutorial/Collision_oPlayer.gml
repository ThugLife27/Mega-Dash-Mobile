/// @description Insert description here
// You can write your code in this editor
if(global.UltimateActive == 0)
{
if (enemy_dead == 0 && global.dash_mode == 1 && oPlayer.hsp >= 0)
{
	audio_play_sound(SoundBigHit,10,false,.5);
	if(global.AUG_Ninja == 1){global.NinjaActive = 1;}
	
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
		instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{points : (100*global.AUG_TripleBlessed+400*global.AUG_GigaBlessed+200)*global.multiplier+(1000*LuckyDice)});
		
		if(200*global.multiplier+(1000*LuckyDice) >= 6000)
		{global.LuckyDiceUnlock = 1;}
		
		global.scorebonus = global.scorebonus + (100*global.AUG_TripleBlessed+400*global.AUG_GigaBlessed+200)*global.multiplier+(1000*LuckyDice);
		
		if(global.AUG_GigaBlessed == 1)
		{global.multiplier_max = min(50,global.multiplier_max + 1);}
		
		global.multiplier = global.multiplier + 2 + global.uOPOGs + global.AUG_OPOGs;
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
			instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{points : 100*global.multiplier+(1000*LuckyDice)});
			
			if((100*global.multiplier+(1000*LuckyDice)) >= 6000)
			{global.LuckyDiceUnlock = 1;}
			
			global.scorebonus = global.scorebonus + 100*global.multiplier+(1000*LuckyDice);
			global.multiplier = global.multiplier + 1 + global.uOPOGs + global.AUG_OPOGs;
			if(global.multiplier > global.multiplier_max){global.multiplier = global.multiplier_max;}
			
			
	}
	
	enemy_dead = 1;
	image_speed = 0;
	hsp = 30;
	vsp = -25;
	
	if(global.uOPOGs == 1 || global.AUG_Mulligan == 1){global.MulliganCounter = 1;}
		
	if((global.uSuperSaiyan == 1 || global.uUltimate == 1) && global.multiplier >= 10 && global.UltimateComplete == 0)
	{global.UltimateCounter++;}
	
}

if (enemy_dead == 0 && (global.dash_mode == 0 || oPlayer.hsp < 0) && global.GhostActive == 0 && global.uNimbleFighter == 0 && global.player_revive_mode == 0 && global.uSuperman == 0 && global.SS4SuperSaiyan == 0 && global.difficulty > 0 && global.AUG_EnemyPassthru == 0 && global.NinjaActive == 0 && instance_exists(oPlayerOvershield))
{
	oPlayerOvershield.damaged = 1;
	oPlayerOvershield.flash = 20;
	enemy_dead = 1;
	lasered = 1;
	flash = 20;
	audio_play_sound(SoundOvershieldBurst,10,false,.7);
}
else if (enemy_dead == 0 && (global.dash_mode == 0 || oPlayer.hsp < 0) && global.GhostActive == 0 && global.uNimbleFighter == 0 && global.player_revive_mode == 0 && global.uSuperman == 0 && global.SS4SuperSaiyan == 0 && global.difficulty > 0 && global.AUG_EnemyPassthru == 0 && global.NinjaActive == 0)
{
	global.player_death = 1;
	if(oGaiaTextBox.fail == 0)
	{
		oGaiaTextBox.fail = 1;
		oGaiaTextBox.text_show = irandom(3);
		oGaiaTextBox.text_timer = 24;
		oGaiaTextBox.text_pause_timer = 0;
	}
}
}