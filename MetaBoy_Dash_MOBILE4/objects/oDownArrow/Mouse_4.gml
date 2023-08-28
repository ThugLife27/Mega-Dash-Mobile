/// @description Insert description here
// You can write your code in this editor

if(oLeaderBoardController2.LB_Names[(oLeaderBoardController2.Page+1)*10] != " " && (array_length(oLeaderBoardController2.LB_Names) >= ((oLeaderBoardController2.Page+1)*10)+1))
{
	audio_play_sound(StartMenuSelect,10,false);
	oLeaderBoardController2.Page++;	
	flash = 21;
}