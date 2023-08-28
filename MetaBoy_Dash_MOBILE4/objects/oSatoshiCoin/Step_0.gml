/// @description Insert description here
// You can write your code in this editor
if(coin_dead == 0)
{
if(x > 1300){hsp = 5;}
else{hsp = 0;}

x = x - hsp;

if(x < 1300){x = 1300;}

if(x == 1300)
{
	if(shot_timer > 90)
	{y = y - vsp;}
	if(y < 100){vsp = -vsp;}
	if(y > 900){vsp = -vsp;}

	if(shot_timer == 90)
	{
		instance_create_layer(x,y,"Boss",oSatoshiCharging,
		{target : id});
		image_speed = 4;
	}

	if(shot_timer == 0)
	{
		instance_create_layer(x+200,y,"Laser",oSatoshiLaser,
		{target : id});
		shot_timer = irandom_range(210,270)-30*global.AUG_GiantSlayer;
		image_speed = 1;
	}
	
		shot_timer--;
}
}

if(coin_dead == 1)
{
		instance_create_layer(x,y,"Explosion",oExplosion);
		instance_destroy();
}

if(!instance_exists(oSatoshi))
{
	if(flash_set = 0){flash = 28;flash_set = 1;}
	coin_dead_timer--;
	if(coin_dead_timer == 0){instance_destroy();}
}



