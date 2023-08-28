if(global.pause == 0)
{

//Get Player Input
	key_dash_start = max(keyboard_check_pressed(ord("X")),gamepad_button_check_pressed(0,gp_face3),gamepad_button_check_pressed(0,gp_shoulderlb));
	key_jump_start = max(keyboard_check_pressed(ord("Z")),gamepad_button_check_pressed(0,gp_face1));
	key_jump = max(keyboard_check(ord("Z")),gamepad_button_check(0,gp_face1));
	key_transform = max(keyboard_check_pressed(vk_up),gamepad_button_check_pressed(0,gp_face4));

if(global.dash_mode == 1 && global.uNimbleFighter == 1)
{
	key_jump_start = max(keyboard_check_pressed(ord("Z")),gamepad_button_check_pressed(0,gp_face1));
	key_jump = max(keyboard_check(ord("Z")),gamepad_button_check(0,gp_face1));
}

if(controller_lockout == 1)
	{
		key_dash_start = 0;
		key_jump_start = 0;
		key_jump = 0;
		key_transform = 0;
	}	

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

if(key_transform == 1)
{
	transform_start = 1;
	controller_lockout = 1;
	sprite_index = sDonnyFlip;
	image_index = 0;
	image_speed = 1;
}

if(transform_start == 1)
{
	instance_create_layer(oPlayerDonny.x-200,oPlayerDonny.y+75,"Player",oPlayerCar);
	transform_start = 0;
	transform_mode = 1;
}

if(transform_mode == 1 && key_transform == 0 && image_index >= 11)
{instance_destroy();}

 vsp = vsp + grv;
	
	//Dash
	// Enter Dash Mode, lockout jump and re-dash
	if (key_dash_start == 1 && dash_counter < dash_counter_max && global.dash_mode == 0 && (!place_meeting(x+1,y,oWall) || global.GhostActive == 1) && transform_mode = 0)
	{
		global.dash_mode = 1;
		controller_lockout = 1;
		sprite_index = sDonnyKick;
		image_index = 0;
		image_speed = 1.1 + .1*global.uNimbleFighter;
		dash_timer = 0;
		if(x >= 256 && global.uDemolisher == 0){hsp = 0;}
		
		if(global.uFlashy == 1 && global.gamestart == 1)
		{
		flashy_counter++;
		if(flashy_counter == 2 && global.FlashyTimer == 180){global.FlashyActive = 1;flashy_counter = 0;}
		else if(flashy_counter == 2){flashy_counter = 1;}
		}
	}
	
	//Execute Dash
	if (global.dash_mode == 1)
	{
		vsp = 0;
		
		if (floor(image_index) <= 6 && global.uDemolisher == 0)
		{
			if(x < 50){hsp = 9;}
			else if(x < 100){hsp = 7;}
			else if(x < 200){hsp = 4;}
			else if(x < 256){hsp = 2;}
		}
		
		if (floor(image_index) == 6)
		{
			if(!audio_is_playing(SoundFighterJump2))
			{audio_play_sound(SoundFighterJump2,10,false,.6);}
		}
		if (floor(image_index) == 7 && dash_timer <= dash_timer_max/2) 
			{
				image_speed = 0;
				hsp = 13*cos(dash_timer*pi/dash_timer_max);
				dash_timer++;
			}
		
		if(dash_timer > dash_timer_max/2 && x < 256)
		{hsp = 13;}
		
		if (dash_timer > dash_timer_max/2 && x >= 256)
			{
				sprite_index = sDonnyRun; 
				image_index = 10;
				if(dash_timer > dash_timer_max){dash_timer = dash_timer_max;}
				hsp = (13+12*global.uDareDevil+12*global.uNimbleFighter)*cos(dash_timer*pi/dash_timer_max);
				dash_timer++;	
			}
		
		x = x + hsp;
			
		if (hsp < 0 && x < 256)
		{
			x = 256;
			global.dash_mode = 0;
			dash_timer = 0;
			hsp = 0;
			controller_lockout = 0;
			dash_counter++;
			jump_counter--;
			if(jump_counter < 0){jump_counter = 0;}
		}
	}
		

	//Jump
	if (key_jump_start == 1 && jump_counter < jump_counter_max)
	{ 
		if(global.dash_mode = 1)
		{
			global.dash_mode = 0;
			dash_timer = 0;
			controller_lockout = 0;
			dash_counter++;
			jump_counter--;
			if(jump_counter < 0){jump_counter = 0;}
		}
		
		vsp = -31 - 4*global.uDareDevil - 4*global.uNimbleFighter;
		jump_counter = jump_counter + 1;
		Fighter_Sound_Pick = irandom(1);
		if (Fighter_Sound_Pick == 0){audio_play_sound(SoundFighterJump1,10,false,.6);}
		else {audio_play_sound(SoundFighterJump3,10,false,.6);}
	}
	
	if (vsp < 0 && key_jump == 0)
	{vsp = 0;}
	
	if (transform_mode == 1)
	{vsp = 0;}
	
	//Horizontal Collision
if(global.GhostActive == 1 && global.GhostReadyTimer == 0 && !place_meeting(x,y,oWall))
{global.GhostActive = 0;}

if (place_meeting(x+1,y,oWall) && global.uDemolisher == 0 && global.uHulk == 0 && global.GhostActive == 0 && global.player_revive_mode == 0)
	{
		//If dashing and hit wall, exit dash mode
		if(global.dash_mode = 1)
		{
			global.dash_mode = 0; 
			dash_timer = 0;
			controller_lockout = 0;
			dash_counter++;
			jump_counter--;
			if(jump_counter < 0){jump_counter = 0;}
		}
	}

if (place_meeting(x+1,y,oWall) && (global.uDemolisher == 0 || global.dash_mode == 0 || hsp < 0) && global.GhostActive == 0 && global.player_revive_mode == 0 && transform_mode == 0)
	{
	while(place_meeting(x,y,oWall)){x--;}
	hsp = global.hsp_oWall;
	x = x + global.hsp_oWall;
	}
else if (x < 256 && global.dash_mode == 0)
	{
		hsp = 8 + 8*global.uDareDevil;
		x = x + hsp;
		if (x > 256){x = 256; hsp = 0;}
	}
else if (x > 256 && global.dash_mode == 0)
	{
		hsp = -8;
		x = x + hsp;
		if (x < 256){x = 256; hsp = 0;}
	}
	
//Vertical Collision
	if(!((global.GhostActive == 1 || global.player_revive_mode == 1) && sign(vsp) < 0))
	{
	if (place_meeting(x,y+vsp,oWall))
	{
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		if(sign(vsp) == 1 || max(global.uDareDevil,global.uNimbleFighter) == 1)
		{
		jump_counter = 0;
		dash_counter = 0;
		}

		if(sign(vsp) == 1){flashy_counter = 0;ken_counter = 0;}
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
	if (!place_meeting(x,y+1,oWall) && global.dash_mode == 0 && transform_mode == 0)
	{
		sprite_index = sDonnyRun;
		image_speed = 0;
		if (sign(vsp)>0) 
		{image_index = 4;} 
		else 
		{image_index=10;}
	}
	else if (global.dash_mode == 0 && transform_mode == 0)
	{
		sprite_index = sDonnyRun;
		image_speed = 1;
	}
		

if (y > (1180 + (300*global.uDareDevil))){global.player_death = 1;}
if (x < (-75 - (300*global.uDareDevil))){global.player_death = 1;}

if(global.player_death == 1)
{
	i = 0;
	audio_play_sound(SoundPlayerDeath,10,false);
	audio_play_sound(SoundPlayerScream,10,false,.6);
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

}