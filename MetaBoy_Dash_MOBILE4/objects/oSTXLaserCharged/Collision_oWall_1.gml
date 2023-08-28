/// @description Insert description here
// You can write your code in this editor

if(global.uSTXWallBreak == 1 && other.wallbreak == 0 && x <= 1980 && global.UltimateActive == 0)
{
	instance_create_layer(x+50,y,"Explosion",oLaserExplosion2);
	with(other){wallflash = 16; wallbreak = 1;}
	audio_play_sound(SoundWallBreak,10,false);
}




