/// @description Insert description here
// You can write your code in this editor

if(global.gamestart == 0)
{
	global.room_create_count = global.room_create_count + global.roomspeed;
	game_start_timer++;
	if(game_start_timer == 30){instance_create_layer(830,450,"Screens",oCantStop)}
	if(game_start_timer == 90){instance_create_layer(1270,450,"Screens",oWontStop)}
	if(game_start_timer == 180){instance_create_layer(1050,450,"Screens",oRoundStart,{image_index : global.round_number-1});}
	if(game_start_timer == 260){instance_create_layer(1050,450,"Screens",oLFG)};
	if(game_start_timer == 320){global.gamestart = 1; game_start_timer = 0;global.roomspeed = 9+14*global.uHyperDrive;}
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
		
		oBrowserScaling.scoretotal_new = global.scoretotal;
		
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
	
if(global.player_death == 0 && global.BossBattleStart == 1)
{
	instance_create_layer(1050,175,"Screens",oBossBattleWarning);
	global.BossBattleActive = 1;
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
	if (global.uGuardianAngelAvail >= 1 && !instance_exists(oGuardAngelMenu))
	{
		instance_create_layer(1050,450,"Screens",oGuardAngelMenu);
		global.revive_roomspeed = max(9,global.roomspeed*.7);
		global.roomspeed = 0;
	}
		
	if (death_timer == 0 && global.uGuardianAngelAvail == 0)
		{
			if(audio_is_playing(SoundBossMusic))
			{audio_stop_sound(SoundBossMusic);}
			if(audio_is_playing(SoundBossMusicSatoshi))
			{audio_stop_sound(SoundBossMusicSatoshi);}
			if(audio_is_paused(StartMusic))
			{audio_resume_sound(StartMusic);}
			if(audio_is_playing(SoundMedusaRage))
			{audio_stop_sound(SoundMedusaRage);}
			if(audio_is_playing(SoundBTCCharge))
			{audio_stop_sound(SoundBTCCharge)};
			
			if(global.UltScore >= 12500){global.UltimateUnlock = 1;}
			if(global.uHardMode == 1 && global.scoretotal >= 30000){global.HardModeUnlock = 1;}
			
			switch (global.round_number)
			{
			case 1:
			global.Round1_Score = global.scoretotal + floor(global.scoretotal*.33*global.AUG_HotStart);
			oBrowserScaling.R1Score = global.scoretotal + floor(global.scoretotal*.33*global.AUG_HotStart);
			room_goto(EndRound);
			break
			
			case 2:
			global.Round2_Score = global.scoretotal;
			oBrowserScaling.R2Score = global.scoretotal;
			room_goto(EndRound);
			break
			
			case 3:
			global.Round3_Score = global.scoretotal;
			oBrowserScaling.R3Score = global.scoretotal;
			if(global.uBonusRound == 0 && global.AUG_4thRound == 0)
			{
			global.RoundAll_Score = global.Round1_Score + global.Round2_Score + global.Round3_Score;
			//NextRoom = CheckforUnlocks();
			room_goto(EndGame)
			};
			else{room_goto(EndRound);}
			break
			
			case 4:
			global.Round4_Score = global.scoretotal;
			oBrowserScaling.R4Score = global.scoretotal;
			if(global.AUG_4thRound == 1)
			{global.RoundAll_Score = global.Round1_Score + global.Round2_Score + global.Round3_Score + global.Round4_Score;}
			else
			{global.RoundAll_Score = max(global.Round1_Score + global.Round2_Score + global.Round3_Score,global.Round1_Score + global.Round2_Score + global.Round4_Score,global.Round2_Score + global.Round3_Score + global.Round4_Score,global.Round1_Score + global.Round3_Score + global.Round4_Score);}
			//NextRoom = CheckforUnlocks();
			room_goto(EndGame);
			break
			}
		}
	
	if(global.uGuardianAngelAvail == 0)
	{death_timer--;}
}
}