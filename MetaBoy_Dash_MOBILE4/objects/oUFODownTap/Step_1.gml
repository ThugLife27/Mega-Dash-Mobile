/// @description Insert description here
// You can write your code in this editor

UFODownTapStart = MultiTouchCheckPressed();
UFODownTap = MultiTouchCheck();

if(global.controlsetting == 1)
{
	if(instance_exists(oUltButton))
	{
		with(oUltButton)
		{
			UltTap = MultiTouchCheckPressed();
			if(UltTap == 1){oJumpTap.UFODownTapStart = 0;}
		}
	}

	if(instance_exists(oTimeDistortButton))
	{
		with(oTimeDistortButton)
		{
			TDTap = MultiTouchCheckPressed();
			if(TDTap == 1){oJumpTap.UFODownTapStart = 0;}
		}
	}

	if(instance_exists(oGhostButton))
	{
		with(oGhostButton)
		{
			GhostTap = MultiTouchCheckPressed();
			if(GhostTap == 1){oJumpTap.UFODownTapStart = 0;}
		}
	}
}


if(UFODownTap == 1)
{oButtonUFO_Down.flash = 12;}




