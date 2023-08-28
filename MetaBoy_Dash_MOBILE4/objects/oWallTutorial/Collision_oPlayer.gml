/// @description Insert description here
// You can write your code in this editor

if((global.uDemolisher == 1 || global.uHulk == 1) && global.dash_mode == 1 && oPlayer.hsp >= 0)
{
	audio_play_sound(SoundTileBreak,10,false,2);
	
	wall_dead = 1;
	image_speed = 0;
	hsp = 30;
	vsp = -25;
	global.WallKickCount++;
	if(global.WallKickCount >= 20)
	{global.DemolisherUnlock = 1;}
	
	if(global.AUG_DemolisherUp)
	{
		instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{points : 200});		
		global.scorebonus = global.scorebonus + 200;
	}
}



