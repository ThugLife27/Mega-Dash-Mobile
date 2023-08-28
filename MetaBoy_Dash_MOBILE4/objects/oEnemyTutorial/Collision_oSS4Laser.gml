/// @description Insert description here
// You can write your code in this editor

if(enemy_dead == 0 && x < 1875)
{
image_speed = 0;
enemy_dead = 1;
flash = 12;
lasered = 1;
audio_play_sound(SoundLaserHit,10,false,1.2);

if(sprite_index = sEnemy8)
	{
		if(global.uLuckyDice == 1 || global.uTMNT_Orange == 1)
			{LuckyDice = irandom_range(0,9);
			if(LuckyDice <= 0)
			{
				LuckyDice = 2;
				instance_create_layer(x+50,y-100,"Screens",oDice);
				instance_create_layer(x+100,y-100,"Screens",oDice);	
			}
			else if(LuckyDice >= 1 && LuckyDice <= 3)
			{
				LuckyDice = 1;
				instance_create_layer(x+75,y-100,"Screens",oDice);	
			}
			else{LuckyDice = 0;}}
		audio_play_sound(SoundRareOG,10,false,1);
		instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{image_index : ((LuckyDice*10)+2*global.multiplier)-1});
		
		if(200*global.multiplier+(1000*LuckyDice) >= 6000)
		{global.LuckyDiceUnlock = 1;}
		
		global.scorebonus = global.scorebonus + 200*global.multiplier+(1000*LuckyDice);
		global.multiplier = global.multiplier + 2 + global.uOPOGs;
		if(global.multiplier > global.multiplier_max) {global.multiplier = global.multiplier_max;}
		
		
	}
	else
	{
			if(global.uLuckyDice == 1 || global.uTMNT_Orange == 1)
			{LuckyDice = irandom_range(0,9);
			if(LuckyDice <= 0)
			{
				LuckyDice = 2;
				instance_create_layer(x+35,y-100,"Screens",oDice);
				instance_create_layer(x+115,y-100,"Screens",oDice);	
			}
			else if(LuckyDice >= 1 && LuckyDice <= 3)
			{
				LuckyDice = 1;
				instance_create_layer(x+75,y-100,"Screens",oDice);	
			}
			else{LuckyDice = 0;}}
			global.scorebonus = global.scorebonus + 100*global.multiplier+(1000*LuckyDice);
			instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{image_index : ((10*LuckyDice)+global.multiplier)-1});
			global.multiplier = global.multiplier + 1 + global.uOPOGs;
			if(global.multiplier > global.multiplier_max){global.multiplier = global.multiplier_max;}
			
			if(100*global.multiplier+(1000*LuckyDice) >= 6000)
			{global.LuckyDiceUnlock = 1;}
	}
	
if(global.uOPOGs == 1){global.MulliganCounter = 1;}
if(global.uUltimate == 1 && global.multiplier >= 10 && global.UltimateComplete == 0)
{global.UltimateCounter++}
}




