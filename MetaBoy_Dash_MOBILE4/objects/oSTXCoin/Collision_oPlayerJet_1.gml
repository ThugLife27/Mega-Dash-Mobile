/// @description Insert description here
// You can write your code in this editor
if(global.UltimateActive == 0)
{
audio_play_sound(SoundSTXCoinGrab,10,false,.7);

if(sprite_index == sSTXCoin)
{
	global.scorebonus = global.scorebonus + 300;
	instance_create_layer(x,y,"Enemies",oSTXCoinGrab,
	{
		sprite_index : sSTXCoinGrab
	});
	instance_create_layer(x+75,y-50,"Screens",oScoreBonus,
	{image_index : 2});
}
	
else
{
	global.scorebonus = global.scorebonus + 1200;
	instance_create_layer(x,y,"Enemies",oSTXCoinGrab,
	{
		sprite_index : sSTXCoinGrab2
	});
	instance_create_layer(x+75,y-50,"Screens",oScoreBonus,
	{image_index : 11});
}
	
instance_destroy();
}



