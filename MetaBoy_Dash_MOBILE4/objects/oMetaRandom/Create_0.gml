/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;
i = 0;
ArraySelectionIndex = [];
ArraySelection = [];

repeat(1)
{
ArraySelectionIndex = irandom(array_length(global.UpgradeArray)-1);
ArraySelection[i] = global.UpgradeArray[ArraySelectionIndex];
array_delete(global.UpgradeArray,ArraySelectionIndex,1);
i++;
}

i = 0;
delay_timer = 20;
ready_check = 0;
cooldown = 0;
x_col = 0;
x_diff = 466;
Start_Selection = 0;
key_enter = 0;