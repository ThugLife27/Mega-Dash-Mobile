/// @description Insert description here
// You can write your code in this editor
if(global.UltimateActive == 0)
{
oGaiaTextBox.CoinGrab++;
audio_play_sound(SoundSTXCoinGrab,10,false,.7);

if(sprite_index == sSTXCoin)
{
	global.scorebonus = global.scorebonus + 300;
	instance_create_layer(x,y,"Enemies",oSTXCoinGrab,
	{
		sprite_index : sSTXCoinGrab
	});
	instance_create_layer(x+75,y-50,"Screens",oScoreBonus,
	{points : 300});
}
	
else
{
	global.scorebonus = global.scorebonus + 1200;
	instance_create_layer(x,y,"Enemies",oSTXCoinGrab,
	{
		sprite_index : sSTXCoinGrab2
	});
	instance_create_layer(x+75,y-50,"Screens",oScoreBonus,
	{points : 1200});
}
	
instance_destroy();
}


