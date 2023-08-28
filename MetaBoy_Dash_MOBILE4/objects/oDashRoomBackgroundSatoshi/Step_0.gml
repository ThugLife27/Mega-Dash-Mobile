/// @description Insert description here
// You can write your code in this editor

x = x - 1;

if(x <= -960)
{
	instance_create_layer(x+1920*3,y,"SatoshiBackground",oDashRoomBackgroundSatoshi);
	instance_destroy();
}




