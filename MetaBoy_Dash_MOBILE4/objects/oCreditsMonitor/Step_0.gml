/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_enter))
{
	audio_play_sound(StartMenuSelect,10,false);
	room_goto(Credits2);
}