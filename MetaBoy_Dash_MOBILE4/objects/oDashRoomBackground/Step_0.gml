/// @description Insert description here
// You can write your code in this editor

x = x - hsp;

if(x <= -sprite_width/2)
{
	instance_create_layer(x+sprite_width*3,y,LayerName,oDashRoomBackground,
	{sprite_index : sprite_index});
	instance_destroy();
}