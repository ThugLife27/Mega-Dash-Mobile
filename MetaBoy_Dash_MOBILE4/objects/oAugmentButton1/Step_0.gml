/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		global.AugmentTier = Tier;
		global.AugmentSlot = Slot;
		room_goto(ChooseAugment2);
	}
}