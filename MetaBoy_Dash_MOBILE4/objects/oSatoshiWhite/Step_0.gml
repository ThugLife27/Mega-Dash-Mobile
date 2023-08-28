/// @description Insert description here
// You can write your code in this editor
if(timer <= 30)
{image_alpha = sin(timer*pi/60);}
else if(timer > 30 || timer < 150)
{image_alpha = 1;}
else{image_alpha = sin((timer-180)*pi/60);}

if(timer == 140)
{
instance_create_layer(0,1080/2,"SatoshiBackground",oDashRoomBackgroundSatoshi);
instance_create_layer(1920,1080/2,"SatoshiBackground",oDashRoomBackgroundSatoshi);
instance_create_layer(1920*2,1080/2,"SatoshiBackground",oDashRoomBackgroundSatoshi);
instance_create_layer(1840,1080/2,"Boss",oSatoshi);

with(oDashRoomBackground)
{instance_destroy();}

for(var i = 0; i < 3; i += 1)
{
	instance_create_layer(2500/2+i*2500,1080/2,"WallPaper",oDashRoomBackground,
	{sprite_index : sCloud1});
}

for(var i = 0; i < 3; i += 1)
{
	instance_create_layer(2500/2+i*2500,1080/2,"WallPaper2",oDashRoomBackground,
	{sprite_index : sCloud2});
}

for(var i = 0; i < 3; i += 1)
{
	instance_create_layer(2500/2+i*2500,1080/2,"WallPaper3",oDashRoomBackground,
	{sprite_index : sCloud3});
}

for(var i = 0; i < 3; i += 1)
{
	instance_create_layer(2500/2+i*2500,1080/2,"WallPaper4",oDashRoomBackground,
	{sprite_index : sCloud4});
}

instance_create_layer(1920/2,1080/2,"RoomOverlay",oDashRoomBackground,
	{
		sprite_index : sCloudOverlay,
		image_alpha : 0
	});

lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, sCloudBackground);

}

//if(timer == 20 && global.UltimateComplete == 1)
//{
//	instance_destroy(oDashUltMonitor);
//	instance_destroy(oWallUlt);
//	instance_destroy(oDashRoomBackgroundUlt);
//}

if(timer == 155 && instance_exists(oBTCBoy))
	{
		instance_destroy(oBTCBoy);
		if(instance_exists(oBTCBoyWings)){instance_destroy(oBTCBoyWings);}
		
		with(oWall)
		{
			sprite_index = sWallCloud;
			wallflash = 40;
			black_shader = 0;
		}
		oDashRoomMonitor.SpriteTile = sWallCloud;
	}

if(timer == 180){instance_destroy();}

timer++;
