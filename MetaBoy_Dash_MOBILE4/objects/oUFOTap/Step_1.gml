/// @description Insert description here
// You can write your code in this editor

UFOTapStart = MultiTouchCheckPressed();
UFOTap = MultiTouchCheck();

if(global.controlsetting == 1)
{
	if(instance_exists(oUltButton))
	{
		with(oUltButton)
		{
			UltTap = MultiTouchCheckPressed();
			if(UltTap == 1){oJumpTap.UFOTapStart = 0;}
		}
	}

	if(instance_exists(oTimeDistortButton))
	{
		with(oTimeDistortButton)
		{
			TDTap = MultiTouchCheckPressed();
			if(TDTap == 1){oJumpTap.UFOTapStart = 0;}
		}
	}

	if(instance_exists(oGhostButton))
	{
		with(oGhostButton)
		{
			GhostTap = MultiTouchCheckPressed();
			if(GhostTap == 1){oJumpTap.UFOTapStart = 0;}
		}
	}
}

if(instance_exists(oPlayerAlien))
{oPlayerAlien.key_UFO = MultiTouchCheckPressed();}




