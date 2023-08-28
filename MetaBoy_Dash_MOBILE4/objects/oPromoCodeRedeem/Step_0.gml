/// @description Insert description here
// You can write your code in this editor
if(string_length(keyboard_string) > 3)
{image_index = 1;}
else
{image_index = 0;}

while(string_length(keyboard_string) > 14)
{keyboard_string = string_delete(keyboard_string,string_length(keyboard_string),1);}

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if(promocode == "NUMBERS69")
		{
			global.DebugMode = 1;
			promocode_reward = "Bro ur a hacker";
			oLoadingCircle.image_alpha = 0;
			image_alpha = 1;
			oPromoCodeExit.image_alpha = 1;
			oPromoCodePaste.image_alpha = 1;
			keyboard_string = "";
			redeeming = 0;
			success = 1;
			audio_play_sound(SoundReward,10,false,.4);
		}
		
		else if(promocode == "PERKYTANK")
		{
			array_push(global.PlayerProfile.Characters,"Alien");
			promocode_reward = "\nHOUSTON...\nWE HAVE A PROBLEM";
			oLoadingCircle.image_alpha = 0;
			image_alpha = 1;
			oPromoCodeExit.image_alpha = 1;
			oPromoCodePaste.image_alpha = 1;
			keyboard_string = "";
			redeeming = 0;
			success = 1;
			audio_play_sound(SoundReward,10,false,.4);
		}
		
		else if(promocode == "OZZY")
		{
			array_push(global.PlayerProfile.Characters,"Fire Warrior");
			promocode_reward = "\nA special gift for you,\nyoung warrior";
			oLoadingCircle.image_alpha = 0;
			image_alpha = 1;
			oPromoCodeExit.image_alpha = 1;
			oPromoCodePaste.image_alpha = 1;
			keyboard_string = "";
			redeeming = 0;
			success = 1;
			audio_play_sound(SoundReward,10,false,.4);
		}
		
		else
		{		
		var url = "https://metaboypromoman.azurewebsites.net/check-promo-code?promoCode="+promocode+"&gameId=MegaDash";
		show_debug_message(url);
		var map = ds_map_create();
		ds_map_add(map, "accept", "application/json");
		//ds_map_add(map, "content-type", "application/json");
		ds_map_add(map, "X-Api-Key", "1ILOTyRR2FhltbfLEsGQzrN2c7BDA4WgZIx5XESBO3CtO4aLucIC6lH4APWAFrvA");
			
		http_type = 0;
		request = http_request(url, "GET", map, "");
		}
		
		ready_check = 0;
		delay_timer = 10;
	}
}

if(success == 1)
{
	success_timer--;
	if(success_timer == 0)
	{
		success = 0;
		success_timer = 150;
		oPromoCodeBlinker.image_alpha = 1;
		keyboard_string = "";
	}
}

if(failed == 1)
{
	failed_timer--;
	if(failed_timer == 0)
	{
		failed = 0;
		failed_timer = 100;
		oPromoCodeBlinker.image_alpha = 1;
		keyboard_string = "";
	}
}
	
