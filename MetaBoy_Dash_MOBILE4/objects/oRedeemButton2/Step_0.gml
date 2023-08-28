/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		oAugmentRedeemController.RedeemAugment = Augment;
		oAugmentRedeemController.RedeemTier = RedeemTier;
		GooglePlayServices_IsAuthenticated();
		delay_timer = 10;
		ready_check = 0;
	}
}

if(reason == 2)
{
	success_timer--;
	if(success_timer == 0)
	{
		oAugmentRedeemController.Update = 1;
		oAugmentRedeemController.Info = 0;
		oAugmentRedeemController.Redeem = 0;
	}
}