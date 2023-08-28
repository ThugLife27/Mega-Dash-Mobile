/// @description Insert description here
// You can write your code in this editor

if(global.gamestart == 0)
{
	global.room_create_count = global.room_create_count + global.roomspeed;
}

if(global.gamestart == 1)
{

//Update Score while Player is alive
if(global.player_death == 0)
	{
		if(global.BossBattleActive == 0 && global.UltimateActive == 0)
		{global.score = global.score + 1;}
		
		if(global.score/60 >= 30){GoLongMult = 6;}
		else if(global.score/60 >= 45) {GoLongMult = 9;}
		else if(global.score/60 >= 60) {GoLongMult = 11;}
		else if(global.score/60 >= 75) {GoLongMult = 19;}
		
		GoLongPoints = GoLongPoints + GoLongMult*global.uGoLong;
		
		global.scoretimepassage = global.scoretimepassage + GoLongMult*global.uGoLong + 6*global.uHardMode  + 2*global.uBaseFighter + 3*global.AUG_PassageofTime + 1*global.BossBattleActive + 1*global.UltimateActive;
		global.scoretotal = global.scorebonus + global.score + global.scoretimepassage;
		
		if(global.uHyperDrive == 1)
		{
			global.roomspeed = floor((9+14*global.uHyperDrive + floor(global.score/(1000)) + (global.dash_mode*global.roomspeed*.4))*(4/(4+global.TimeDistortActive))*(1-.2*global.BossBattleActive));
		}
		if(global.uHyperDrive == 0)
		{
		global.roomspeed = floor((9 + floor(global.score/(250+100*global.uSlowandSteady+60*global.AUG_SlowSteady1+120*global.AUG_SlowSteady2)) + (global.dash_mode*global.roomspeed*.4))*(4/(4+global.TimeDistortActive))*(1-.2*global.BossBattleActive));
		}
		global.room_create_count = global.room_create_count + global.roomspeed;
		if(global.player_revive_mode == 1){if(global.multiplier<global.multiplier_max){global.multiplier = global.multiplier_max;}}
	}
}

if(global.player_death == 0 && global.BossBattleStart == 1)
{
	global.BossBattleActive = 1;
	global.BossSelect = oThugLife;
	instance_create_layer(1050,175,"Screens",oBossBattleWarning,
	{image_alpha : 0});
	audio_pause_sound(StartMusic);
	audio_play_sound(SoundBossBattleTrigger,10,false,1);
	global.BossBattleStart = 0;
}

if(global.player_death == 0 && global.UltimateStart == 1)
{
	instance_create_layer(0,0,"UltWhite",oUltWhite);
	instance_create_layer(0,0,"Screens",oDashUltMonitor);
		
	audio_play_sound(SoundUltEnter,10,false);
	
	global.UltimateActive = 1;
	global.UltimateStart = 0;
	global.UltimateTimerMax = 240 + global.UltimateCounter*20;
	global.UltimateTimer = 240 + global.UltimateCounter*20;
}

if(global.player_death == 0 && global.UltimateActive == 1 && global.UltimateComplete == 1)
{
	global.UltimateActive = 0;
	global.UltimateNumber++;
	instance_create_layer(0,0,"UltWhite",oUltWhite);	
	audio_play_sound(SoundUltExit,10,false);
	global.player_revive_mode = 1;
}

//PLAYER DEATH
if(global.player_death == 1)
{
		death_timer--;
		if(death_timer == 0)
		{
			instance_create_layer(256,200,"Player",oPlayerTutorial);
			global.player_death = 0;
			death_timer = 30;
			global.player_revive_mode = 1;
			if(instance_exists(oPlayerTutorial))
			{oPlayerTutorial.flash = 180;}
		}
}
