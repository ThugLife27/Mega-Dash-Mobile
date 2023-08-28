/// @description Insert description here
// You can write your code in this editor

if(async_load[?"id"] == string(request) && async_load[?"http_status"] == "200" && http_type == 0)
{
	result = json_parse(async_load[?"result"]);
	show_debug_message("result: " + string(result));
	promocode_valid = result.status;
	show_debug_message("valid: " + string(promocode_valid));
	
	if(promocode_valid == "AVAILABLE")
	{
		promocode_reward = result.benefit;
		show_debug_message("reward: " + string(promocode_reward));
		GooglePlayServices_IsAuthenticated();
	}
	else
	{
		oLoadingCircle.image_alpha = 0;
		image_alpha = 1;
		oPromoCodeExit.image_alpha = 1;
		oPromoCodePaste.image_alpha = 1;
		keyboard_string = "";
		redeeming = 0;
		failed = 1;
		reason = 1;
		audio_play_sound(SoundSelectionReject,10,false,.5);
	}
}
else if(async_load[?"id"] == string(request) && http_type == 0)
{
	result = json_parse(async_load[?"result"]);
	show_debug_message("result: " + string(result));
	
	oLoadingCircle.image_alpha = 0;
	image_alpha = 1;
	oPromoCodeExit.image_alpha = 1;
	oPromoCodePaste.image_alpha = 1;
	keyboard_string = "";
	redeeming = 0;
	failed = 1;
	reason = 1;
	audio_play_sound(SoundSelectionReject,10,false,.5);
}

if(async_load[?"id"] == string(request) && http_type == 1)
{
	oLoadingCircle.image_alpha = 0;
	image_alpha = 1;
	oPromoCodeExit.image_alpha = 1;
	oPromoCodePaste.image_alpha = 1;
	keyboard_string = "";
	redeeming = 0;
	success = 1;
	audio_play_sound(SoundReward,10,false,.4);
}
