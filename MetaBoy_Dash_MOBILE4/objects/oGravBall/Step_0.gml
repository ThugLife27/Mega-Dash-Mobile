/// @description Insert description here
// You can write your code in this editor

if(release_timer > 0)
{
	release_timer--;
	x = oAdam.x - 40;
	y = oAdam.y + 50;
}

if(release_timer == 0)
{
	x = x + hsp;
	y = y + vsp;
}

if(y < 70  && bounces > 0)
{y = 70; vsp = -1*vsp; bounces--;audio_play_sound(SoundGravBall,10,false);}

if(x < 70 && bounces > 0)
{x = 70; hsp = -1*hsp; bounces--;audio_play_sound(SoundGravBall,10,false);}

if(y > 1010  && bounces > 0)
{y = 1010; vsp = -1*vsp; bounces--;audio_play_sound(SoundGravBall,10,false);}

if(x > 1850 && bounces > 0)
{x = 1850; hsp = -1*hsp; bounces--;audio_play_sound(SoundGravBall,10,false);}


if(x < -50 || x > 2000 || y < -100 || y > 1200)
{instance_destroy();}

if(!instance_exists(oAdam))
{
	if(flash_set = 0){flash = 28;flash_set = 1;}
	adam_dead_timer--;
	if(adam_dead_timer == 0){instance_destroy();}
}

if(flash == 0 && gravball_dead = 1)
{instance_destroy();}