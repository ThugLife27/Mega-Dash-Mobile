/// @description Insert description here
// You can write your code in this editor
if(hp <= 0)
{probert_dead = 1;}

if(probert_dead == 0)
{
if(x > 1840){hsp = 3;}
else{hsp = 0;}

x = x - hsp;

if(x < 1840){x = 1840;}

if(x == 1840)
{
	if(boss_timer > 0){boss_timer--;}
	
	if(boss_timer == 0){boss_rage = 1;}
	
	y = y - vsp;
	if(y < 20){vsp = -vsp; image_index = 0;}
	if(y > 900){vsp = -vsp; image_index = 1;}

	if(boss_rage == 0)
	{
		if(shoot_timer == (60 + 90*diff_multiplier))
		{
			instance_create_layer(x-368,y+20,"Player",oLaser);
		}
	
		if(shoot_timer == 0)
		{
			instance_create_layer(x-120,y+30,"Player",oLaser);
			shoot_timer = 150 + 90*diff_multiplier - 50*global.AUG_GiantSlayer;
		}
	
		shoot_timer--;
	}
	
	if(boss_rage == 1)
	{
		if(shoot_timer == 10)
		{
			instance_create_layer(x-368,y+20,"Player",oLaser);
		}
	
		if(shoot_timer == 0)
		{
			instance_create_layer(x-120,y+30,"Player",oLaser);
			shoot_timer = 20;
		}
	
		shoot_timer--;
	}
}

}

if(probert_dead == 1)
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
	global.PlayerProfile.Stats.UniqueBossesDefeated[0] = 1;
	global.BossBattleComplete++;
	global.BossBattleActive = 0;
	global.ProbertDefeated = 1;
	audio_resume_sound(StartMusic);
	instance_destroy();
}
	

