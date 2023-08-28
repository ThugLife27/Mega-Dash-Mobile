/// @description Insert description here
// You can write your code in this editor
if(image_xscale < 1)
{
	image_xscale = 1;
	image_yscale = 1;
	
	if(image_index == 1 && image_alpha == 1)
	{
		audio_play_sound(StartMenuSelect,10,false);
		oLoadingCircle.image_alpha = 1;
		
		InternetConnected = os_is_network_connected(false);
		GooglePlayAvail = GooglePlayServices_IsAvailable();
		image_index = min(InternetConnected,GooglePlayAvail);
		SigningIn = 0;
		CreatingAccount = 0;
		SignInFail = 0;
		CreateAccountFail = 0;

		uniqueName = "MegaDash";
		description = "MegaDashSaveFile";

		if(InternetConnected == 1)
		{
			SigningIn = 1;
			GooglePlayServices_SignIn();
		}
	}
}
