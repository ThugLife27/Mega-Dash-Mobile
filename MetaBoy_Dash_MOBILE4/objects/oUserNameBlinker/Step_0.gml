/// @description Insert description here
// You can write your code in this editor

while(string_length(keyboard_string) > 14)
{keyboard_string = string_delete(keyboard_string,string_length(keyboard_string),1);}

if(play == 1 && string_length(keyboard_string)>0 && Submission_Ready == 0)
{
	oUserNamePlay.flash = 21;
	audio_play_sound(StartMenuSelect,10,false);
	Submission_Ready = 1;
	name_text = keyboard_string;	
	keyboard_virtual_hide();
}

if (Submission_Ready == 1)
{
	if(delay_timer == 0)
	{
	global.Player_Name = name_text;
	LootLockerSetPlayerName(global.Player_Name);
	if(!variable_global_exists("music_on"))
	{
		audio_play_sound(StartMusic,10,true,.5);
		global.music_on = 1;
		global.music_toggle = 1;
	}
	room_goto(StartRoom1);
	}
	delay_timer--;
}