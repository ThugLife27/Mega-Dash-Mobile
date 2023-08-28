/// @description Insert description here
// You can write your code in this editor
if(hp <= 0)
{btcboy_dead = 1;}

if(btcboy_dead == 0)
{
if(x > 1840){hsp = 3;}
else{hsp = 0;}

x = x - hsp;

if(x < 1840){x = 1840;}

if(x == 1840)
{
	if(boss_timer > 0){boss_timer--;}
	
	if(boss_timer == 0){boss_rage = 1;}
		
	if(!(shot_type == 2 && shoot_timer <= 105) || global.AUG_GiantSlayer == 1)
	{y = y - vsp;}
	
	if(y < 250){vsp = -vsp; image_index = 0;}
	if(y > 930){vsp = -vsp; image_index = 1;}
	current_imageindex = image_index;
	
	if(boss_rage == 0)
	{
		if(shot_type == 1 && shoot_timer == 30)
		{
			sprite_index = sBTCBoyNoArms;
			image_index = current_imageindex;
			instance_create_layer(x,y,"Player",oBTCBoySlashArms);		
		}
		
		if(shot_type = 1 && shoot_timer == 0)
		{
			shot_type = min(diff_multiplier + 1,irandom_range(1,2));
			shoot_timer = 260 - 120*diff_multiplier - 20*global.AUG_GiantSlayer;	
		}
		
		if(shot_type == 2 && shoot_timer == 105)
		{
			instance_create_layer(x-200,y-190,"Medusa",oBTCBoyCharging);
			instance_create_layer(x+200,y-190,"Medusa",oBTCBoyCharging);
			audio_play_sound(SoundBTCCharge,10,false,5);
		}
			
		if(shot_type == 2 && shoot_timer == 20)
		{
			audio_stop_sound(SoundBTCCharge);
			instance_create_layer(x-400+183+165,y-150,"Laser",oBTCLaser);
		}
		
		if(shot_type == 2 && shoot_timer == 10)
		{instance_create_layer(x-400+644+165,y-150,"Laser",oBTCLaser);}
		
		if(shot_type == 2 && shoot_timer == 0)
		{
			shot_type = irandom_range(1,2);
			shoot_timer = 140 - 20*global.AUG_GiantSlayer;				
		}
				
		shoot_timer--;
	}

	if(boss_rage == 1)
	{
		if(shoot_timer == 0)
		{
			sprite_index = sBTCBoyNoArms;
			image_index = current_imageindex;
			instance_create_layer(x,y,"Player",oBTCBoySlashArms);
			shoot_timer = 30;
		}
		shoot_timer--;
	}
}
}

if(btcboy_dead == 1)
{
	if(audio_is_playing(SoundBTCCharge)){audio_stop_sound(SoundBTCCharge)};
	if(audio_is_playing(SoundBossMusic)){audio_stop_sound(SoundBossMusic)};
	if(instance_exists(oBTCBoyCharging)){instance_destroy(oBTCBoyCharging);}
	
	explosion_slider--;
	satoshi_slider--;
	if(explosion_slider == 0)
		{
			explosion_x = irandom_range(x-150,x+150);
			explosion_y = irandom_range(y-150,y+150);
			instance_create_layer(explosion_x,explosion_y,"Explosion",oExplosion);
			explosion_slider = 15;
		}
		
if(satoshi_slider == 80)
{
	with(oDashRoomBackground)
	{flash = 40;}
}

if(satoshi_slider == 60)
{flash = 60;}

if(satoshi_slider == 0 && black_shader == 0)
{
	black_shader = 1;
	with(oWall)
	{
		black_shader = 1;
		sprite_index = sWallCloud;	
	}
	instance_create_layer(0,0,"SatoshiWhite",oSatoshiWhite);
	global.PlayerProfile.Stats.NumBossesDefeated++;
	global.PlayerProfile.Stats.UniqueBossesDefeated[4] = 1;
}
}






