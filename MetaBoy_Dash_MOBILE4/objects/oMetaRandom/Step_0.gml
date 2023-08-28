/// @description Insert description here
// You can write your code in this editor

//key_enter = max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0,gp_face1))

if(key_enter == 1 && ready_check == 0)
{
	ready_check = 1;	
	image_index = 1;
	audio_play_sound(StartMenuSelect,10,false);
	array_insert(global.UpgradeChoiceArray,array_length(global.UpgradeChoiceArray),ArraySelection[Start_Selection]);
	
	StartSelectionArray = [0];
	array_delete(StartSelectionArray,Start_Selection,1);
	
	ApplyUpgrade(ArraySelection[Start_Selection]);
}

if (ready_check = 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if(global.round_number >= 3)
		{room_goto(DashRoom);}
		else{room_goto(ChooseMeta);}
	}
}

