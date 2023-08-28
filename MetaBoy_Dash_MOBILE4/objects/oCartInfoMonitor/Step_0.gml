/// @description Insert description here
// You can write your code in this editor

if(cooldown == 0)
{
	if (max(gamepad_axis_value(0,gp_axislh),0) > .33)
	{gamepad_right = 1;}
	else {gamepad_right = 0;}

	if (abs(min(gamepad_axis_value(0,gp_axislh),0)) > .33)
	{gamepad_left = 1;}
	else {gamepad_left = 0;}

	key_left = max(keyboard_check(vk_left),gamepad_left);
	key_right = max(keyboard_check(vk_right),gamepad_right);
}
else
{
	key_right = 0;
	key_left = 0;
}

if(key_right == 1)
{
	audio_play_sound(CharSelectMove,10,false);
	Cart_Select++;
	cooldown = 10;
	if(Cart_Select >= array_length(global.UpgradeArray)){Cart_Select = 0;}
}

if(key_left == 1)
{
	audio_play_sound(CharSelectMove,10,false);
	Cart_Select--;
	cooldown = 10;
	if(Cart_Select < 0){Cart_Select = array_length(global.UpgradeArray)-1;}
}

if(cooldown > 0)
{cooldown--;}