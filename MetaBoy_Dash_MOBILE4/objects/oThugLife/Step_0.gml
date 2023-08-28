/// @description Insert description here
// You can write your code in this editor
if(hp <= 0)
{thuglife_dead = 1;}

if(thuglife_dead == 0)
{
if(x > 1840){hsp = 3;}
else{hsp = 0;}

x = x - hsp;

if(x < 1840){x = 1840;}

if(x == 1840)
{
	if(boss_timer > 0){boss_timer--;}
	
	if(boss_timer == 0 && room != TutorialRoom){boss_rage = 1;}
		
	if(shot_type == 0 || shoot_timer > 60 || boss_rage == 1)
	{
	y = y - vsp;
	if(y < 10){vsp = -vsp; image_index = 0;}
	if(y > 900){vsp = -vsp; image_index = 1;}
	}

	if(boss_rage == 0)
	{
	if(shot_type == 0)
	{
		if(shoot_timer == 60 || shoot_timer == 0 || (shoot_timer == 30 && global.AUG_GiantSlayer == 1))
		{
			instance_create_layer(x-157,y+62,"Player",oFireball);
			if(shoot_timer == 0)
			{
				shoot_timer = 240 - 90*diff_multiplier - 50*global.AUG_GiantSlayer;
				shot_type = min(diff_multiplier,irandom(1));
			}
		}
	}

	if(shot_type == 1)
		if(shoot_timer == 60 || shoot_timer == 40 || shoot_timer == 20 || shoot_timer == 0)
		{
			instance_create_layer(x-157,y+62,"Player",oFireball);
			if(shoot_timer == 0){shoot_timer = 150 - 50*global.AUG_GiantSlayer;shot_type = irandom(1);}
		}
	
		shoot_timer--;
	}

	if(boss_rage == 1)
	{
		if(shoot_timer == 0)
		{
			instance_create_layer(x-157,y+62,"Player",oFireball);
			shoot_timer = 15;
		}
		shoot_timer--;
	}
}
}

if(thuglife_dead == 1)
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
	if(room != TutorialRoom)
	{
		global.PlayerProfile.Stats.NumBossesDefeated++;
		global.PlayerProfile.Stats.UniqueBossesDefeated[1] = 1;
	}
	else
	{
		oGaiaTextBox.fail = 0;
		oGaiaTextBox.level++;
		oGaiaTextBox.level_execute = 0;
		oGaiaTextBox.text_show = 0;
		oGaiaTextBox.text_timer = 24;
		oGaiaTextBox.text_pause_timer = 0;
	}
	global.BossBattleComplete++;
	global.BossBattleActive = 0;
	global.ThuglifeDefeated = 1;
	audio_resume_sound(StartMusic);
	instance_destroy();
}
	







