if(global.pause == 0)
{

//Get Player Input
if (controller_lockout == 1)
	{
		key_hover = 0;
		key_thrust = 0;
	}	
else
{
	key_hover = max(keyboard_check(ord("X")),gamepad_button_check(0,gp_face3));
	key_thrust= max(keyboard_check(ord("Z")),keyboard_check(ord("Y")),gamepad_button_check(0,gp_face1));
}

key_missile = max(keyboard_check_pressed(vk_down),gamepad_button_check_pressed(0,gp_shoulderrb),gamepad_button_check_pressed(0,gp_shoulderlb));

if(global.UltimateActive == 0)
{key_ult = max(keyboard_check_pressed(vk_up),gamepad_button_check_pressed(0,gp_face3));}

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
{global.UltimateStart = 1; shoot_lockout = 30;} 
 
 vsp = vsp + grv
	
//Ult Missile
	if (global.UltimateActive == 1)
		{
			if(shoot_lockout == 0 || shoot_lockout == 6)
			{
				instance_create_layer(x+50,y-7,"Player",oMissile);
				audio_play_sound(SoundMissile,10,false,.5);
				if(shoot_lockout == 0){shoot_lockout = 12;}
			}
			else if(shoot_lockout == 3)
			{instance_create_layer(x+50,y-7+100,"Player",oMissile);audio_play_sound(SoundMissile,10,false,.5);}
			else if(shoot_lockout == 9)	
			{instance_create_layer(x+50,y-7-100,"Player",oMissile); audio_play_sound(SoundMissile,10,false,.5);
			};
			
			if (shoot_lockout > 0) {shoot_lockout--;}
		}

	
//Missile	
	if (key_missile == 1 && missile_shoot_lockout == 0 && shoot_cap < 5)
	{
		instance_create_layer(x+50,y-7,"Player",oMissile)
		audio_play_sound(SoundMissile,10,false,.5);
		missile_shoot_lockout = 4;
		shoot_cap++;
		shoot_cap_timer1 = 10;
			if (shoot_cap == 7){shoot_cap_timer2 = 15};
	};

	if (missile_shoot_lockout > 0) {missile_shoot_lockout = missile_shoot_lockout - 1;}
	if (shoot_cap_timer1 > 0){shoot_cap_timer1--;}
	if (shoot_cap_timer1 == 0){shoot_cap = 0;}
	if (shoot_cap_timer2 > 0)
	{
		shoot_cap_timer2 = shoot_cap_timer2--;
		if (shoot_cap_timer2 == 0){shoot_cap = 0};
	}
		
	//Jump
	if (key_thrust == 1)
	{ 		
		vsp = vsp - 2.4 - .7*global.uDareDevil - .7*global.uNimbleFighter - .7*global.uTMNT_Red;
		vsp = min(vsp,7);
		if(audio_is_paused(SoundJetJump)){audio_resume_sound(SoundJetJump);}
		else if(!audio_is_playing(SoundJetJump)){audio_play_sound(SoundJetJump,10,true);}
		global.Overheat--;
		if(global.Overheat <= 0){global.Overheat = 0;controller_lockout = 1;}
	}
	
	if (vsp < -7 && key_thrust == 0)
	{vsp = -7;}
	
	if (key_thrust == 0 && audio_is_playing(SoundJetJump)){audio_pause_sound(SoundJetJump);}
	
	//Hover
	if (key_hover == 1 && (!place_meeting(x,y+1,oWall) && !place_meeting(x,y+1,oWallUlt)))
	{
		vsp = 0;
		if(audio_is_paused(SoundJetJump)){audio_resume_sound(SoundJetJump);}
		else if(!audio_is_playing(SoundJetJump)){audio_play_sound(SoundJetJump,10,true);}
		global.Overheat--;
		if(global.Overheat <= 0){global.Overheat = 0;controller_lockout = 1;}
	}
			
	if(global.UltimateActive == 1){global.Overheat = global.OverheatMax;}
	
	//Horizontal Collision
if(global.GhostActive == 1 && global.GhostReadyTimer == 0 && !place_meeting(x,y,oWall))
{global.GhostActive = 0;}

if (place_meeting(x+1,y,oWall) && global.UltimateActive == 0 && (global.uDemolisher == 0 || global.dash_mode == 0 || hsp < 0) && global.GhostActive == 0 && global.player_revive_mode == 0)
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
		global.Overheat = global.Overheat + 10;
		controller_lockout = 0;
		if(global.Overheat >= global.OverheatMax){global.Overheat = global.OverheatMax;}
		
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}

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
	if (!place_meeting(x,y+1,oWall) && !place_meeting(x,y+1,oWallUlt) && global.dash_mode == 0)
	{
		if (sign(vsp)>0) 
		{
			sprite_index = sJetRun;
			image_angle = 0;
			image_index = 2;
			image_speed = 0;
			if(!audio_is_paused(SoundJetJump))
			{audio_pause_sound(SoundJetJump);}
		} 
		else if (vsp == 0 && key_hover == 1)
		{
			sprite_index = sJetFall;
			image_angle = 0;
			image_speed = 1;
		}
		else 
		{
			sprite_index = sJetJump;
			image_angle = 0;
			image_speed = 1;
		}
	}
	else
	{
		sprite_index = sJetRun;
		image_angle = 0;
		image_speed = 1;
	}
		

if (y > (1230 + (250*global.uDareDevil))){global.player_death = 1;}
if (x < (-125 - (250*global.uDareDevil))){global.player_death = 1;}

if(global.player_death == 1)
{
	i = 0;
	audio_stop_sound(SoundJetJump);
	audio_play_sound(SoundPlayerDeath,10,false);
	audio_play_sound(SoundPlayerScream,10,false);
	repeat(16)
		{instance_create_layer(x,y,"Player",oPlayerDeath,
			{direction : pi/8*i});
			i++;
		}
	i = 0;

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