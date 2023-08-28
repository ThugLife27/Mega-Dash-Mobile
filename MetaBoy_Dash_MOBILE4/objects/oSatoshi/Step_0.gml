/// @description Insert description here
// You can write your code in this editor
if(battle_start_timer > 0)
{
	battle_start_timer--;
	
	if(battle_start_timer == 7*60)
	{audio_play_sound(SoundSatoshiLaugh,10,false,.6);}
	
	if(battle_start_timer == 121)
	{audio_play_sound(SoundBossMusicSatoshi,10,true,.7);}
	
	if(battle_start_timer <= 120)
	{image_alpha = (120 - battle_start_timer)/120;}
	
	if(battle_start_timer == 0)
	{
		satoshi_battle_start = 1;
		//instance_create_layer(x,y,"MedusaLaser",oSatoshiShield,
		//{flash : 28});
		shielded = 1;
		attack = 1;
		attack_timer = 270;
	}
}

if(hp <= 0)
{satoshi_dead = 1;}

if(satoshi_dead == 0 && satoshi_battle_start == 1)
{
	vsp = 5*sin(move_timer*pi/90);
	y = y - vsp;
	move_timer++;
	if(move_timer == 181){move_timer = 1;}

	if(attack == 1)
	{
		attack_timer--;
		
		if(global.AUG_GiantSlayer == 1 && attack_timer == 360)
		{
			instance_create_layer(x-400+177,y-400+417,"Player",oSatoshiCoin,
			{flash : 60});
		}
		
		if(attack_timer == 240 || attack_timer == 120 || attack_timer == 0)
		{
			instance_create_layer(x-400+177,y-400+417,"Player",oSatoshiCoin,
			{flash : 60});
		}
		
		if(attack_timer <= 0)
		{attack = 0;}
	}		

	//if(shielded == 0)
	//{
	//	shield_timer--;
	//	if(shield_timer == 0)
	//	{
	//		instance_create_layer(x,y,"MedusaLaser",oSatoshiShield,
	//		{flash : 48});
	//		shielded = 1;
	//		attack = 1;
	//		attack_timer = 270;
	//	}
	//}

	if(attack == 0 && shielded == 1 && !instance_exists(oSatoshiCoin))
	{
		//oSatoshiShield.flash = 60;
		shielded = 0;
		shield_timer = 360;
	}

}

if(satoshi_dead == 1)
{
	alpha_slider --;
	if(alpha_slider = 150){audio_play_sound(SoundProbertDead,10,false,5);audio_stop_sound(SoundBossMusicSatoshi);}
	if(flash == 0){flash = 28;}
}

if(alpha_slider == 30)
{
	audio_play_sound(SoundSkinUnlock,10,false,3);
	global.scorebonus = global.scorebonus + 50000 + 100000*global.AUG_GiantSlayer;
	instance_create_layer(x-75,y-150,"Screens",oScoreBonus,{points : 50000 + 100000*global.AUG_GiantSlayer});
}

if(alpha_slider == 0)
{
	global.PlayerProfile.Stats.NumBossesDefeated++;
	global.PlayerProfile.Stats.UniqueBossesDefeated[5] = 1;
	global.BossBattleComplete++;
	global.BossBattleActive = 0;
	global.SatoshiDefeated = 1;
	audio_resume_sound(StartMusic);
	instance_destroy();
}
	







