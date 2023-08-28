/// @description Insert description here
// You can write your code in this editor
if(global.gamestart == 1)
{
switch(MeterUpgrade)
{
	case "Alien":
		if(global.AlienTimer < (15*60) && global.AlienUFOActive == 0)
		{
			global.AlienTimer++;
			if(global.AlienUFOActive >= 15*60)
			{
				global.AlienUFOActive = 15*60;
			}
		}
		
		if(global.AlienUFOActive == 1)
		{
			global.AlienTimer = global.AlienTimer - 1.5;
			if(global.AlienTimer < 0)
			{
				global.AlienTimer = 0;
				global.AlienUFOActive = 0;
			}
			AlienSpriteTimer++;
			if(AlienSpriteTimer == 15)
			{
				if(AlienSprite == 2){AlienSprite = 3;}
				else{AlienSprite = 2;}
				AlienSpriteTimer = 0;
			}
		}
	break
	
	case "Ultimate":
		if(global.UltimateActive == 1 && global.UltimateComplete == 0)
		{
			global.UltimateTimer--;
			if(global.UltimateTimer < 0){global.UltimateTimer = 0;global.UltimateComplete = 1;}
			UltimateSpriteTimer++;
			if(UltimateSpriteTimer == 15)
			{
				if(UltimateSprite == 2){UltimateSprite = 3;}
				else{UltimateSprite = 2;}
				UltimateSpriteTimer = 0;
			}
		}

	break
	
	case "Unstoppable":
		if(UnstoppableMeter < 2280){UnstoppableMeter++;}
		if(UnstoppableMeter >= 2280)
		{
			global.PlayerUnstoppable = 1;
			global.multiplier = global.multiplier_max;
			SpriteTimer++
			if(SpriteTimer == 15)
			{
				if(UnstoppableSprite == 0){UnstoppableSprite = 1;}
				else{UnstoppableSprite = 0;}
				
				SpriteTimer = 0;
			}	
		}
	break
	
	case "Ghost":
		if(global.GhostReadyTimer < (7*60) && global.GhostActive == 0){global.GhostReadyTimer = global.GhostReadyTimer+2;if(global.GhostReadyTimer > 7*60){global.GhostReadyTimer = 7*60;}}
		if(global.GhostActive == 1)
		{
			global.GhostReadyTimer = global.GhostReadyTimer - 2;
			if(global.GhostReadyTimer < 0){global.GhostReadyTimer = 0;}
			GhostSpriteTimer++;
			if(GhostSpriteTimer == 15)
			{
				if(GhostSprite == 2){GhostSprite = 3;}
				else{GhostSprite = 2;}
				GhostSpriteTimer = 0;
			}
		}
	break
		
	case "Time Distort":
		if(global.TimeDistortActive == 0 && global.TimeDistortUsed = 0)
		{global.TimeDistortTimer = global.TimeDistortTimer + 1 + 2*global.AUG_TimeDistortEnthusiast;}
		
		if(global.TimeDistortActive == 1)
		{
			global.TimeDistortTimer = global.TimeDistortTimer - 3;
			TDSpriteTimer++;
			if(TDSpriteTimer == 15)
			{
				if(TDSprite == 2){TDSprite = 3;}
				else{TDSprite = 2;}
				TDSpriteTimer = 0;
			}
			if(global.TimeDistortTimer < 0)
			{
				global.TimeDistortTimer = 0;
				global.TimeDistortActive = 0;
				global.TimeDistortUsed = 1;
			}
		}
	break
	
	case "Flashy":
		if(global.FlashyTimer < 180){global.FlashyTimer++;}
		if(global.FlashyActive == 1)
			{
				global.scorebonus = global.scorebonus + (200+50*global.AUG_FlashyPoints)*global.multiplier;
				if(instance_exists(oPlayer))
				{
				instance_create_layer(oPlayer.x,oPlayer.y-150,"Screens",oScoreBonus,{points : (200+50*global.AUG_FlashyPoints)*global.multiplier});
				instance_create_layer(oPlayer.x,oPlayer.y-250,"Screens",oFlashy);
				}
				audio_play_sound(SoundFlashy,10,false,2);
				global.FlashyTimer = 0;
				global.FlashyActive = 0;
			}
}
}