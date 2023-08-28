/// @description Insert description here
// You can write your code in this editor

image_index = locked;

if (ready_check == 1 && locked == 0)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		room_goto(BuyDashCoins);
	}
}