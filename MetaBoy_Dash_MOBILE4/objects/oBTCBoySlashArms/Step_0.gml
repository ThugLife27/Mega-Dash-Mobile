/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oBTCBoy))
{
	x = oBTCBoy.x;
	y = oBTCBoy.y;
}
else{instance_destroy();}

if(image_index >= 10 && audio_played == 0)
{
	audio_play_sound(SoundBTCSlash1,10,false,1.5);
	audio_played = 1;	
}

if(image_index >= 12 && shot_launched == 0)
{
	instance_create_layer(x-290,y+65,"Player",oBTCSlash);
	
	instance_create_layer(x-290,y+65,"Player",oBTCSlash,
	{
		move_angle : 30*pi/180 + pi,
		image_angle : -30
	});
		
	instance_create_layer(x-290,y+65,"Player",oBTCSlash,
	{
		move_angle : -30*pi/180 - pi,
		image_angle : 30
	});	
	
	shot_launched = 1;
}




