/// @description Insert description here
// You can write your code in this editor

//key_reroll = keyboard_check_pressed(vk_space);

//key_enter = max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0,gp_face1))

if(key_enter == 1 && ready_check == 0)
{
	ready_check = 1;	
	image_index = 1;
	audio_play_sound(StartMenuSelect,10,false);
	array_insert(global.UpgradeChoiceArray,array_length(global.UpgradeChoiceArray),ArraySelection[Start_Selection]);
	
	StartSelectionArray = [0,1,2];
	array_delete(StartSelectionArray,Start_Selection,1);
	array_insert(global.UpgradeArray,array_length(global.UpgradeChoiceArray)-1,ArraySelection[StartSelectionArray[0]]);
	array_insert(global.UpgradeArray,array_length(global.UpgradeChoiceArray)-1,ArraySelection[StartSelectionArray[1]]);
	
	ApplyUpgrade(ArraySelection[Start_Selection]);
	
	
	
}

if (ready_check = 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if(global.AUG_Loaded == 1 && array_length(global.UpgradeChoiceArray) < 4)
		{room_goto(ChooseMeta);}
		else
		{room_goto(DashRoom);}
	}
}

if((key_reroll == 1 && global.RerollCount > 0))
{
	array_push(global.UpgradeArray,ArraySelection[0],ArraySelection[1],ArraySelection[2]);
	
	i = 0;
	repeat(3)
		{
		ArraySelectionIndex = irandom(array_length(global.UpgradeArray)-1);
		ArraySelection[i] = global.UpgradeArray[ArraySelectionIndex];
		array_delete(global.UpgradeArray,ArraySelectionIndex,1);
		i++;
		}
	
	if(global.InfReroll == 0)
	{global.RerollCount--;}
	key_reroll = 0;
}

