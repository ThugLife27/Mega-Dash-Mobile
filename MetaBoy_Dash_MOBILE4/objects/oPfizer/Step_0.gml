/// @description Insert description here
// You can write your code in this editor
if(hp <= 0)
{boss_dead = 1;}

if(boss_dead == 0)
{
if(x > 1840){hsp = 3;}
else{hsp = 0;}

x = x - hsp;

if(x < 1840){x = 1840;}

if(x == 1840)
{
	if(boss_timer > 0){boss_timer--;}
	
	if(boss_timer == 0)
	{
		boss_rage = 1;
		if(!audio_is_playing(SoundMedusaRage))
		{audio_play_sound(SoundMedusaRage,10,false);}
	}
	
	if(!instance_exists(oMedusaLaser) || global.AUG_GiantSlayer == 1)
	{y = y - vsp;}
	if(y < 20){vsp = -vsp; image_index = 0;}
	if(y > 900){vsp = -vsp; image_index = 1;}

	if(boss_rage == 0)
	{
		if(shoot_timer == 95)
		{
			oMedusa.flash = 60;
			audio_play_sound(SoundMedusaShot,10,false);
			if(instance_exists(oMedusa))
			{instance_create_layer(oMedusa.x,oMedusa.y-80,"UltWhite",oMedusaCharging);}
		}
	
		if(shoot_timer == 35)
		{
			//vsp_sign = sign(vsp);
			//vsp = 0;
			if(instance_exists(oMedusaCharging))
			{instance_destroy(oMedusaCharging);}
			instance_create_layer(oMedusa.x+20,oMedusa.y+175,"MedusaLaser",oMedusaLaser);
		}
	
		if(shoot_timer == 0)
		{
			//vsp = vsp_sign*7;
			shoot_timer = 140 + 100*diff_multiplier - 20*global.AUG_GiantSlayer;
		}
		
		shoot_timer--;
	}
	
	if(boss_rage == 1)
	{
	
		if(shoot_timer == 0)
		{
			audio_play_sound(SoundMedusaLaser,10,false);
			instance_create_layer(oMedusa.x+20,oMedusa.y+175,"MedusaLaser",oMedusaLaser,
			{image_angle : irandom_range(-20,27)});
			shoot_timer = 6;
		}
	
		shoot_timer--;
	}
}

}

if(boss_dead == 1)
{
	alpha_slider --;
	if(alpha_slider = 150){audio_play_sound(SoundProbertDead,10,false,5);audio_stop_sound(SoundBossMusic);}
	if(flash == 0){flash = 28;}
}

if(alpha_slider == 30)
{
	audio_play_sound(SoundSkinUnlock,10,false,3);
	global.scorebonus = global.scorebonus + 25000 + 50000*global.AUG_GiantSlayer;
	instance_create_layer(x-75,y-150,"Screens",oScoreBonus,{points : 25000 + 50000*global.AUG_GiantSlayer});
}

if(alpha_slider == 0)
{
	global.PlayerProfile.Stats.NumBossesDefeated++;
	global.PlayerProfile.Stats.UniqueBossesDefeated[2] = 1;
	global.BossBattleComplete++;
	global.BossBattleActive = 0;
	global.FrolfDefeated = 1;
	audio_resume_sound(StartMusic);
	instance_destroy();
}
	

