/// @description Insert description here
// You can write your code in this editor
switch(global.CharacterRunSkin)
{
	case sSTXBoyMenu:
	sprite_index = sPlayerEntranceBlue;
	break;
	
	case sAlienRun:
	sprite_index = sPlayerEntranceGreen;
	break;
}


image_speed = 0;
hsp = 0;
vsp = 40;

FloorCheck = 0;
SoundPlayed = 0;