/// @description Insert description here
// You can write your code in this editor
array_select = oAugmentController2.Inventory;

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		oAugmentController2.Update = 1;
		oAugmentController2.Page++;
		
		delay_timer = 10;
		ready_check = 0;
	}
}

if(oAugmentController2.Page*9+10 > array_length(array_select))
{image_index = 1;}
else
{image_index = 0;}