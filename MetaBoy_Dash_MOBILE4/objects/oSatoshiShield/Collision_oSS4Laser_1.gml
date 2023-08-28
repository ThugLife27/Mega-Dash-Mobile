/// @description Insert description here
// You can write your code in this editor
flash = 16;

with(other)
{
	instance_destroy();
	instance_create_layer(x+50,y,"Explosion",oLaserExplosion1);
	audio_play_sound(SoundSatoshiShieldHit,10,false,.7);
}




