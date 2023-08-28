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
	key_hover = max(keyboard_check(ord("X")),gamepad_button_check(0,gp_shoulderlb));
	key_hover_start = max(keyboard_check_pressed(ord("X")),gamepad_button_check_pressed(0,gp_shoulderlb));
	key_jump_start = max(keyboard_check_pressed(ord("Z")),keyboard_check(ord("Y")),gamepad_button_check_pressed(0,gp_face1));
	key_jump = max(keyboard_check(ord("Z")),keyboard_check(ord("Y")),gamepad_button_check(0,gp_face1));
	key_shot = max(keyboard_check_pressed(vk_down),gamepad_button_check_pressed(0,gp_face3));
	key_shot_charged = max(keyboard_check(vk_down),gamepad_button_check(0,gp_face3));
}
else
{
	key_jump_start = max(keyboard_check_pressed(ord("Z")),keyboard_check(ord("Y")),gamepad_button_check_pressed(0,gp_face1));
	key_jump = max(keyboard_check(ord("Z")),keyboard_check(ord("Y")),gamepad_button_check(0,gp_face1));
}

if(global.UltimateActive == 0){key_ult = max(keyboard_check_pressed(vk_up),gamepad_button_check_pressed(0,gp_face4));}

if(global.uGhost == 1 && global.GhostReadyTimer >= (7*60) && global.gamestart == 1 && global.UltimateActive == 0)
{
	key_ghost = max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0,gp_face2));
	if(key_ghost == 1)
	{global.GhostActive = 1;audio_play_sound(SoundGhost,10,false,10);}
}

if(global.uTimeDistort == 1 && global.TimeDistortUsed == 0 && global.TimeDistortTimer >= (240) && global.gamestart == 1 && global.UltimateActive == 0)
{
	key_timedistort = max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0,gp_face2));
	if(key_timedistort == 1)
	{
		global.TimeDistortActive = 1;
		global.TimeDistortUsed = 1;
		global.wallflash = 28;
		audio_play_sound(SoundTimeDistort,10,false,1);
	}	
}
else{global.wallflash--;if(global.wallflash<0){global.wallflash=0;}}
 
if(global.uUltimate == 1 && global.UltimateCounter >= 1 && global.gamestart == 1 && global.UltimateComplete == 0 && global.UltimateActive == 0 && key_ult == 1)
{global.UltimateStart = 1;shoot_lockout = 45;} 
 
 vsp = vsp + grv;
	
	//Ult Laser
	if (global.UltimateActive == 1)
		{
			if(shoot_lockout == 0)
			{
				instance_create_layer(x+100,y+3,"Laser",oSTXLaserCharged,
				{sprite_index : sPBTCChargedShot});
				audio_play_sound(SoundLaserShot,10,false);
				shoot_lockout = max(30-global.UltimateCounter,5);
			};
			
			if (shoot_lockout > 0) {shoot_lockout--;}
		}
		
	////STX Weapon
	if (key_shot == 1 && shot_lockout == 0)
	{
		if(shot_location == 0)
		{
			instance_create_layer(x-95,y-81,"Laser",oPBTCLaserBasic)
			
			if(global.uSTXSpreadShot == 1 )
			{
				instance_create_layer(x-95,y-81,"Laser",oPBTCLaserBasic,
				{
					move_angle : 5*pi/180,
					image_angle : -5
				});
		
				instance_create_layer(x-95,y-81,"Laser",oPBTCLaserBasic,
				{
					move_angle : -5*pi/180,
					image_angle : 5
				});	
			}
			
			shot_location = 1;
		}
		else
		{
			instance_create_layer(x-95+153,y-63,"Laser",oPBTCLaserBasic)
			
			if(global.uSTXSpreadShot == 1 )
			{
				instance_create_layer(x-95+153,y-63,"Laser",oPBTCLaserBasic,
				{
					move_angle : 5*pi/180,
					image_angle : -5
				});
		
				instance_create_layer(x-95+153,y-63,"Laser",oPBTCLaserBasic,
				{
					move_angle : -5*pi/180,
					image_angle : 5
				});	
			}	
			shot_location = 0;
		}
				
		audio_play_sound(SoundLaserShot,10,false,.8);
		shot_lockout = 6;
	};

	if (shot_lockout > 0) {shot_lockout = shot_lockout - 1;}

	//STX Weapon Charged
	if (key_shot_charged == 1)
		{
			if(charge_timer == 7)
			{
			current_imageindex = image_index;
			sprite_index = sPBTCRunNoArms;
			image_index = current_imageindex;
			instance_create_layer(x,y,"Laser",oPBTCBoySlashArms);
			}
			
			if(instance_exists(oPBTCBoySlashArms))
			{
			if (oPBTCBoySlashArms.image_index >= 5 && oPBTCBoySlashArms.image_index <= 6 && !instance_exists(oPBTCCharging))
			{instance_create_layer(x,y-7,"Boss",oPBTCCharging);}
			}
			
			charge_mode = 1;
			charge_timer = charge_timer + 1;
		}	
			
	//Hover
	if (key_hover_start == 1 && instance_exists(oPBTCWings) && hover_mode == 0 && hover_counter < hover_counter_max)
	{
		vsp = 0;
		hover_mode = 1;
		hover_counter++;
		jump_counter--;
		if(jump_counter < 0){jump_counter = 0;}
		oPBTCWings.timer = 56;	
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
		vsp = -31 - 4*global.uDareDevil - 4*global.uNimbleFighter - 4*global.uTMNT_Red - 4*global.SS4SuperSaiyan;
		jump_counter = jump_counter + 1;
		Fighter_Sound_Pick = irandom(1);
		if (Fighter_Sound_Pick == 0){audio_play_sound(SoundFighterJump1,10,false,.6);}
		else {audio_play_sound(SoundFighterJump3,10,false,.6);}
		
		hover_mode = 0;
		if(!audio_is_paused(SoundSTXHover))
		{audio_pause_sound(SoundSTXHover);}
	}
	
	if (vsp < 0 && key_jump == 0)
	{vsp = 0;}

	//Horizontal Collision
if(global.GhostActive == 1 && global.GhostReadyTimer == 0 && !place_meeting(x,y,oWall))
{global.GhostActive = 0;}

if (place_meeting(x+1,y,oWall) && global.UltimateActive == 0 && global.GhostActive == 0 && global.player_revive_mode == 0)
	{
	while(place_meeting(x,y,oWall)){x--;}
	hsp = global.hsp_oWall;
	x = x + global.hsp_oWall;
	}
else if (x < 256)
	{
		hsp = 8 + 8*global.uDareDevil;
		x = x + hsp;
		if (x > 256){x = 256; hsp = 0;}
	}
else if (x > 256)
	{
		hsp = -8;
		x = x + hsp;
		if (x < 256){x = 256; hsp = 0;}
	}
	
//Vertical Collision
	if(!((global.GhostActive == 1 || global.player_revive_mode == 1) && sign(vsp) < 0))
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
	if((!place_meeting(x,y+1,oWall) && !place_meeting(x,y+1,oWallUlt)) || hover_mode == 1)
	{
		image_speed = 0;
		if (sign(vsp)>0) 
		{image_index = 4;} 
		else 
		{image_index=10;}
	}
	else
	{image_speed = 1;}

if (y > (1230 + (250*global.uDareDevil))){global.player_death = 1;}
if (x < (-125 - (250*global.uDareDevil))){global.player_death = 1;}

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
	if(instance_exists(oPBTCCharging))
	{instance_destroy(oPBTCCharging);}
	instance_destroy(oPBTCWings);	
	instance_destroy();
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

if(global.UltimateActive == 1)
{
if(y > 1080){y = 1080;}
}

}

//Upgrades
//if(global.STXCounter >= 1 && !instance_exists(oPBTCWings))
//{
//	instance_create_layer(x,y+70,"Laser",oPBTCLightning);
//	flash = 30;
//}