/// @description Insert description here
// You can write your code in this editor

image_alpha = sin(timer*pi/40);

if(timer == 20 && global.UltimateActive == 1)
{
instance_create_layer(0,1080/2,"UltBackground",oDashRoomBackgroundUlt);
instance_create_layer(1920,1080/2,"UltBackground",oDashRoomBackgroundUlt);
instance_create_layer(1920*2,1080/2,"UltBackground",oDashRoomBackgroundUlt);
	
for(i = 0; i < 23; i+=1)
{
	instance_create_layer(-200+(128*i),1080,"UltEnemies",oWallUlt);
	instance_create_layer(-200+(128*i),1080+64,"UltEnemies",oWallUlt);
}


}



if(timer == 20 && global.UltimateComplete == 1)
{
	instance_destroy(oDashUltMonitor);
	instance_destroy(oWallUlt);
	instance_destroy(oDashRoomBackgroundUlt);
}

timer++;

if(timer == 40)
{
	if(global.AUG_UltAbuser == 1 && global.UltimateNumber < 2 && global.UltimateComplete)
	{
		global.UltimateCounter = 0;
		global.UltimateComplete = 0;
	}
	
	instance_destroy();	
}


