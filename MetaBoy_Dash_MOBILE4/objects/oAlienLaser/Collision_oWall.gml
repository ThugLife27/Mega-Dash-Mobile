/// @description Insert description here
// You can write your code in this editor
if(other.wallbreak == 0 && x <= 2100 && global.UltimateActive == 0)
{
	with(other){wallflash = 16; wallbreak = 1;}
	instance_create_layer(x+50,y,"Explosion",oLaserExplosion2);
	instance_destroy();
	//audio_play_sound(SoundWallBreak,10,false);
}