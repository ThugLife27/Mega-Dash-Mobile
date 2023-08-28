/// @description Insert description here
// You can write your code in this editor

DashTap = MultiTouchCheckPressed();

if(global.controlsetting == 0)
{
	if(instance_exists(oUltButton))
	{
		with(oUltButton)
		{
			UltTap = MultiTouchCheckPressed();
			if(UltTap == 1){oDashTap.DashTap = 0;}
		}
	}

	if(instance_exists(oTimeDistortButton))
	{
		with(oTimeDistortButton)
		{
			TDTap = MultiTouchCheckPressed();
			if(TDTap == 1){oDashTap.DashTap = 0;}
		}
	}

	if(instance_exists(oGhostButton))
	{
		with(oGhostButton)
		{
			GhostTap = MultiTouchCheckPressed();
			if(GhostTap == 1){oDashTap.DashTap = 0;}
		}
	}
}

if(DashTap == 1)
{oButtonKick.flash = 12;}


