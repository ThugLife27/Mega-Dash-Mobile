/// @description Insert description here
// You can write your code in this editor
array_select = oBattlePassController.BattlePassAssets;

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		oBattlePassController.Update = 1;
		oBattlePassController.Page++;
		
		delay_timer = 10;
		ready_check = 0;
	}
}

if(oBattlePassController.Page*5+6 > array_length(array_select))
{image_index = 1;}
else
{image_index = 0;}