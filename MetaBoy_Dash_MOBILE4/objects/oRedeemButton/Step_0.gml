/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		oAugmentRedeemController.Update = 1;
		oAugmentRedeemController.Info = 0;
		oAugmentRedeemController.Redeem = 1;
		oAugmentRedeemController.RedeemTier = asset;
		oButtonHomePage.locked = 1;
		delay_timer = 10;
		ready_check = 0;
	}
}