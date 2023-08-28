if(global.pause == 0)
{

//Get Player Input
if (controller_lockout == 1)
	{
		key_hover = 0;
		key_hover_start = 0;
		key_jump_start = 0;
		key_jump = 0;
		key_shot = 0;
		key_shot_charged = 0;
	}	
else if (global.UltimateActive == 0)
{
	key_hover = oHoverTap.HoverTap;
	key_hover_start = oHoverTap.HoverTapStart;
	key_jump_start = oJumpTap.JumpTapStart;
	key_jump = oJumpTap.JumpTap;
	key_shot = oShootTap.ShootTapStart;
	key_shot_charged = oShootTap.ShootTap;
}
else
{
	key_hover = oHoverTap.HoverTap;
	key_hover_start = oHoverTap.HoverTapStart;
	key_jump_start = oJumpTap.JumpTapStart;
	key_jump = oJumpTap.JumpTap;
}

if(global.uGhost == 1 && global.GhostReadyTimer >= (7*60) && global.gamestart == 1 && global.UltimateActive == 0)
{
	if(key_ghost == 1)
	{
		global.GhostActive = 1;
		audio_play_sound(SoundGhost,10,false,10);
		oGhostButton.flash = 20;
		time = 50; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
	}
}

if(global.uTimeDistort == 1 && global.TimeDistortUsed == 0 && global.TimeDistortTimer >= (240) && global.gamestart == 1 && global.UltimateActive == 0)
{
	if(key_timedistort == 1)
	{
		global.TimeDistortActive = 1;
		global.TimeDistortUsed = 1;
		global.wallflash = 28;
		audio_play_sound(SoundTimeDistort,10,false,1);
		oTimeDistortButton.flash = 20;
		time = 50; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
	}	
}
else{global.wallflash--;if(global.wallflash<0){global.wallflash=0;}}
 
if(global.uUltimate == 1 && global.UltimateCounter >= 1 && global.gamestart == 1 && global.UltimateComplete == 0 && global.UltimateActive == 0 && key_ult == 1)
{
	global.UltimateStart = 1;
	shoot_lockout = 45;
	oUltButton.flash = 20;
	time = 50; //milliseconds
	amplitude = 100; //255 is the max
	androidVibrate(time,amplitude);
} 
 
 vsp = vsp + grv;
	
	//Ult Laser
	if (global.UltimateActive == 1)
		{
			if(shoot_lockout == 0)
			{
				instance_create_layer(x+100,y+3,"Laser",oUltLaser,
				{sprite_index : sSTXChargedShot});
				audio_play_sound(SoundLaserShot,10,false);
				shoot_lockout = max(30-global.UltimateCounter,5);
			};
			
			if (shoot_lockout > 0) {shoot_lockout--;}
		}
		
	////STX Weapon
	if (key_shot == 1 && shot_lockout == 0)
	{
		time = 30; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
		
		instance_create_layer(x+100,y+3,"Laser",oSTXLaserBasic);

		if(global.uSTXSpreadShot == 1 )
		{
			instance_create_layer(x+100,y+3,"Laser",oSTXLaserBasic,
			{
				move_angle : 5*pi/180,
				image_angle : -5
			});
		
			instance_create_layer(x+100,y+3,"Laser",oSTXLaserBasic,
			{
				move_angle : -5*pi/180,
				image_angle : 5
			});	
		}
		
		audio_play_sound(SoundLaserShot,10,false,.8);
		shot_lockout = 4;
	};

	if (shot_lockout > 0) {shot_lockout = shot_lockout - 1;}

	//STX Weapon Charged
	if (key_shot_charged == 1)
		{
			if (charge_timer == 12)
				{instance_create_layer(x,y-7,"Boss",oSTXCharging);}
			charge_mode = 1;
			charge_timer = charge_timer + 1;
		}	
		
	if (key_shot_charged == 0 && charge_mode == 1 && charge_timer >= 12)
		{
			instance_create_layer(x+100,y+3,"Laser",oSTXLaserCharged);
			audio_play_sound(SoundLaserShot,10,false,2.5);
			instance_destroy(oSTXCharging);
			time = 30; //milliseconds
			amplitude = 140; //255 is the max
			androidVibrate(time,amplitude);
			charge_mode = 0;
			charge_timer = 0;
			shot_lockout = 4;
		}
	
	if (key_shot_charged == 0 && charge_mode == 1 && charge_timer < 12)
		{charge_mode = 0;charge_timer = 0;}
	
	
	//Hover
	//if (key_hover_start == 1 && instance_exists(oSTXWings) && hover_mode == 0 && (!place_meeting(x,y+1,oWall) && !place_meeting(x,y+1,oWallUlt)) && hover_counter < hover_counter_max)
	if (key_hover_start == 1 && instance_exists(oSTXWings) && hover_mode == 0 && hover_counter < hover_counter_max)
	{
		vsp = 0;
		hover_mode = 1;
		hover_counter++;
		jump_counter--;
		if(jump_counter < 0){jump_counter = 0;}
		oSTXWings.image_index = 0;	
		if(audio_is_paused(SoundSTXHover)){audio_resume_sound(SoundSTXHover);}
		else if(!audio_is_playing(SoundSTXHover)){audio_play_sound(SoundSTXHover,10,true);}
	}
	
	if (key_hover == 1 && hover_mode == 1)
	{
		vsp = 0;
		if(audio_is_paused(SoundSTXHover)){audio_resume_sound(SoundSTXHover);}
		else if(!audio_is_playing(SoundSTXHover)){audio_play_sound(SoundSTXHover,10,true);}
	}
	
	if (key_hover == 0)
		{
			hover_mode = 0;
			if(!audio_is_paused(SoundSTXHover))
			{audio_pause_sound(SoundSTXHover);}
		}
		
	//Jump
	if (key_jump_start == 1 && jump_counter < jump_counter_max)
	{ 
		vsp = -31 - 4*global.uDareDevil - 4*global.uNimbleFighter - 4*global.AUG_JumpKickUp;
		jump_counter = jump_counter + 1;
		Fighter_Sound_Pick = irandom(1);
		if (Fighter_Sound_Pick == 0){audio_play_sound(SoundFighterJump1,10,false,.6);}
		else {audio_play_sound(SoundFighterJump3,10,false,.6);}
		time = 50; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
		
		hover_mode = 0;
		if(!audio_is_paused(SoundSTXHover))
		{audio_pause_sound(SoundSTXHover);}
	}
	
	if (vsp < 0 && key_jump == 0)
	{vsp = 0;}

	//Horizontal Collision
if(global.GhostActive == 1 && global.GhostReadyTimer == 0 && !place_meeting(x,y,oWall))
{global.GhostActive = 0;}

if(global.NinjaActive == 1 && global.NinjaTimer == 0 && !place_meeting(x,y,oWall))
{
	global.NinjaActive = 0;
	global.NinjaTimer = 60;	
}

if (place_meeting(x+1,y,oWall) && global.UltimateActive == 0 && global.NinjaActive == 0 && global.GhostActive == 0 && global.player_revive_mode == 0)
	{
	while(place_meeting(x,y,oWall)){x--;}
	hsp = global.hsp_oWall;
	x = x + global.hsp_oWall;
	}
else if (x < 400)
	{
		hsp = 8 + 8*global.uDareDevil;
		x = x + hsp;
		if (x > 400){x = 400; hsp = 0;}
	}
else if (x > 400)
	{
		hsp = -8;
		x = x + hsp;
		if (x < 400){x = 400; hsp = 0;}
	}
	
//Vertical Collision
	if(!((global.GhostActive == 1 || global.player_revive_mode == 1 || global.NinjaActive == 1) && sign(vsp) < 0))
	{
	if (place_meeting(x,y+vsp,oWall) && global.UltimateActive == 0)
	{
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		if(sign(vsp) == 1 || max(global.uDareDevil,global.uNimbleFighter) == 1)
		{
		jump_counter = 0;
		hover_counter = 0;
		}

		if(sign(vsp) == 1){flashy_counter = 0;ken_counter = 0;}
		vsp = 0;
	}
	}
	
	if(!(global.UltimateActive == 1 && sign(vsp) < 0))
	{
	if (place_meeting(x,y+vsp,oWallUlt))
	{
		while(!place_meeting(x,y+sign(vsp),oWallUlt))
		{
			y = y + sign(vsp);
		}
		if(sign(vsp) == 1 || max(global.uDareDevil,global.uNimbleFighter) == 1)
		{
		jump_counter = 0;
		hover_counter = 0;
		}

		vsp = 0;
	}
	}
	
	if (place_meeting(x,y+vsp,oCeil))
	{
		while(!place_meeting(x,y+sign(vsp),oCeil))
		{
			y = y + sign(vsp);
		}
		if(vsp < 0){vsp = 0;}
	}
	y = y + vsp;

	//Animation
	if ((!place_meeting(x,y+1,oWall) && !place_meeting(x,y+1,oWallUlt)) || hover_mode == 1)
	{
		image_speed = 0;
		if (sign(vsp)>0) 
		{image_index = 4;} 
		else 
		{image_index=10;}
	}
	else
	{image_speed = 1;}
	
if(global.AUG_CantFallFloor == 1 || global.UltimateActive == 1)
{
	if(y > 1080)
	{
		y = 1080;
		jump_counter = 0;
		dash_counter = 0;
	}
}

if(global.player_revive_mode == 1)
{
	if(y > 1080){y = 1080;}
	jump_counter = 0;
	dash_counter = 0;
	if(revive_timer == 180){flash = 180;}
	if(revive_timer > 0){revive_timer--;}
	if(revive_timer == 0 && !place_meeting(x,y,oWall)){revive_timer = 180;global.player_revive_mode = 0;}
}

if (y > (1230 + 100*global.AUG_DareDevil1 + (250*max(global.uDareDevil,global.SS4SuperSaiyan)))){global.player_death = 1;}
if (x < (-125 - 100*global.AUG_DareDevil1 - (250*max(global.uDareDevil,global.SS4SuperSaiyan)))){global.player_death = 1;}

if(global.player_death == 1)
{
	i = 0;
	audio_stop_sound(SoundSTXHover);
	audio_play_sound(SoundPlayerDeath,10,false);
	audio_play_sound(SoundPlayerScream,10,false,.6);
	repeat(16)
		{instance_create_layer(x,y,"Player",oPlayerDeath,
			{direction : pi/8*i});
			i++;
		}
	i = 0;
	if(instance_exists(oSTXCharging))
	{instance_destroy(oSTXCharging);}
	instance_destroy(oSTXWings);	
	instance_destroy();
}

if(global.NinjaActive == 1)
{
	global.NinjaTimer--;
	global.NinjaTimer = max(0,global.NinjaTimer);
}
}

////Upgrades
//if(global.STXCounter >= global.STXThreshold)
//{
//	instance_create_layer(x,y+70,"Laser",oSTXLightning);
//	flash = 30;
//	global.STXUpgradeCount++;
	
//	if(frac(global.STXUpgradeCount/8) == 0)
//	{UpgradePick = irandom(array_length(global.STXUpgradeArraySpecial));}
//	else if(global.STXUpgradeCount >= 6 && global.STXChargeShotUpgrade == 0)
//	{UpgradePick = 3;}
//	else if(global.STXUpgradeCount >= 6 && global.STXSpreadWide == 0)
//	{UpgradePick = 4;}
//	else{UpgradePick = irandom(array_length(global.STXUpgradeArray));}
	
//	switch(UpgradePick) 
//	{
//	    //Jump Upgrade
//		case 0:
//	        global.STXJumpUpgrade++;
//			if(global.STXJumpUpgrade >= 5)
//			{
//				for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 0)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//			}
//			if(global.STXJumpUpgrade >= 2)
//			{array_push(global.STXUpgradeArray,6)};
//	    break;
		
//		//Shot Distance
//		case 1:
//			global.STXBasicShotDistance++;   
//			if(global.STXBasicShotDistance >= 7)
//			{
//				for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 1)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//			}
//	    break;
		
//		//Fire Rate
//		case 2:
//	        global.STXBasicShotFireRate++;
//			if(global.STXBasicShotFireRate >= 4)
//			{
//				for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 2)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//			}
//	    break;
		
//		//Charged Shot
//		case 3:
//			global.STXChargeShotUpgrade++;
//			for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 3)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//	    break;
		
//		//Spread Shot
//		case 4:
//			global.STXSpreadWide++;
//			if(global.STXSpreadWide >= 5)
//			{
//				for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 4)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//			}
//	    break;
		
//		//Charge Rate
//		case 5:
//	      global.STXChargeRate++;
//		  	if(global.STXChargeRate >= 3)
//			{
//				for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 5)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//			}
//	    break;
		
//		//DareDevil
//		case 6:
//	       global.STXDareDevil++;
//		  	if(global.STXDareDevil >= 3)
//			{
//				for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 6)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//			}
//	    break;
		
//		//Shoot through Walls
//		case 7:
//			global.STXBasicShotWall++;
//			for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 7)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//	    break;
		
//		//Double Shot
//		case 8:
//			global.STXChargeDoubleShot++;
//			for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 8)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//	    break;
		
//		//Wall Break
//		case 9:
//	       	global.STXChargeWallBreak++;
//			for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 9)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//	    break;

//		//Charged Spread
//		case 10:
//	       	global.STXChargedSpread++;
//			for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 10)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//	    break;
		
//		//Overshield
//		case 11:
//	       	global.STXChargedSpread++;
//			for (i = 0; i < array_length(global.STXUpgradeArray); i++)
//				{
//					if (global.STXUpgradeArray[i] == 11)
//					{array_delete(global.STXUpgradeArray,i,1);}
//				}
//	    break;
//	}
	
//	global.STXThreshold = global.STXThreshold + 10;

	
	
	
//}	