/// @description Insert description here
// You can write your code in this editor
draw_self();

if(intro == 1)
{
	text_timer++;
	draw_set_font(Font11);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_scribble_ext(x-325,y-85,intro_scribble[text_show],865,floor(text_timer/3));	
	
	if(floor(text_timer/3) >= string_length(intro_text[text_show]))
	{
		text_pause_timer++;
		if(text_pause_timer >= 120 && text_show < 4)
		{
			text_show++;
			text_timer = 24;
			text_pause_timer = 0;
		}
		else if(text_pause_timer >= 120 && text_show == 4)
		{
			intro = 0;
			level++;
			text_show = 0;
			text_timer = 24;
			text_pause_timer = 0;
		}
	}	
	else
	{
		if(!audio_is_playing(SoundOdyssey))
		{audio_play_sound(SoundOdyssey,10,false,.06);}
	}
}

if(fail == 0)
{
	switch(level)
	{
		case 1:
			text_timer++;
			draw_set_font(Font11);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text_scribble_ext(x-325,y-85,level1_scribble[text_show],865,floor(text_timer/3));	
	
			if(floor(text_timer/3) >= string_length(level1_text[text_show]))
			{
				text_pause_timer++;
				if(text_pause_timer >= 120 && text_show < 2)
				{
					text_show++;
					text_timer = 24;
					text_pause_timer = 0;
				}
				else if(text_show == 2 && level_execute == 0)
				{
					text_pause_timer = 120;
					level_execute = 1;
					CoinGrab = 0;
					oTutorialRoomTileBuilder.level_execute = 1;
					oTutorialRoomTileBuilder.level = 1;
				}
				else if(CoinGrab == 4)
				{
					level++;
					level_execute = 0;
					text_show = 0;
					text_timer = 24;
					text_pause_timer = 0;
				}
			}	
			else
			{
				if(!audio_is_playing(SoundOdyssey))
				{audio_play_sound(SoundOdyssey,10,false,.06);}
			}
		break;
		
		case 2:
			text_timer++;
			draw_set_font(Font11);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text_scribble_ext(x-325,y-85,level2_scribble[text_show],865,floor(text_timer/3));	
	
			if(floor(text_timer/3) >= string_length(level2_text[text_show]))
			{
				text_pause_timer++;
				if(text_pause_timer >= 120 && text_show < 2)
				{
					text_show++;
					text_timer = 24;
					text_pause_timer = 0;
				}
				else if(text_show == 2 && level_execute == 0)
				{
					text_pause_timer = 120;
					level_execute = 1;
					oTutorialRoomTileBuilder.level_execute = 1;
					oTutorialRoomTileBuilder.level = 2;
				}
			}	
			else
			{
				if(!audio_is_playing(SoundOdyssey))
				{audio_play_sound(SoundOdyssey,10,false,.06);}
			}
		break;
		
		case 3:
			text_timer++;
			draw_set_font(Font11);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text_scribble_ext(x-325,y-85,level3_scribble[text_show],865,floor(text_timer/3));	
	
			if(floor(text_timer/3) >= string_length(level3_text[text_show]))
			{
				text_pause_timer++;
				if(text_pause_timer >= 120 && text_show < 7)
				{
					text_show++;
					text_timer = 24;
					text_pause_timer = 0;
				}
				else if(text_show == 7 && level_execute == 0)
				{
					text_pause_timer = 120;
					level_execute = 1;
					oTutorialRoomTileBuilder.level_execute = 1;
					oTutorialRoomTileBuilder.level = 3;
				}
			}	
			else
			{
				if(!audio_is_playing(SoundOdyssey))
				{audio_play_sound(SoundOdyssey,10,false,.06);}
			}
		break;
		
		case 4:
			text_timer++;
			draw_set_font(Font11);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text_scribble_ext(x-325,y-85,level4_scribble[text_show],865,floor(text_timer/3));	
	
			if(floor(text_timer/3) >= string_length(level4_text[text_show]))
			{
				text_pause_timer++;
				if(text_pause_timer >= 120 && text_show < 3)
				{
					text_show++;
					text_timer = 24;
					text_pause_timer = 0;
				}
				else if(text_show == 3 && level_execute == 0)
				{
					text_pause_timer = 120;
					level_execute = 1;
					oTutorialRoomTileBuilder.level_execute = 1;
					oTutorialRoomTileBuilder.level = 4;
				}
			}	
			else
			{
				if(!audio_is_playing(SoundOdyssey))
				{audio_play_sound(SoundOdyssey,10,false,.06);}
			}
		break;
		
		case 5:
			text_timer++;
			draw_set_font(Font11);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text_scribble_ext(x-325,y-85,level5_scribble[text_show],865,floor(text_timer/3));	
	
			if(floor(text_timer/3) >= string_length(level5_text[text_show]))
			{
				text_pause_timer++;
				if(text_pause_timer >= 120 && text_show < 6)
				{
					text_show++;
					text_timer = 24;
					text_pause_timer = 0;
				}
				else if(text_show == 6 && level_execute == 0)
				{
					text_pause_timer = 120;
					level_execute = 1;
					CatCounter = 0;
					oTutorialRoomTileBuilder.level_execute = 1;
					oTutorialRoomTileBuilder.level = 5;
				}
				else if(CatCounter == 2)
				{
					level++;
					level_execute = 0;
					text_show = 0;
					text_timer = 24;
					text_pause_timer = 0;
				}
			}	
			else
			{
				if(!audio_is_playing(SoundOdyssey))
				{audio_play_sound(SoundOdyssey,10,false,.06);}
			}
		break;
		
		case 6:
			text_timer++;
			draw_set_font(Font11);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text_scribble_ext(x-325,y-85,level6_scribble[text_show],865,floor(text_timer/3));	
	
			if(floor(text_timer/3) >= string_length(level6_text[text_show]))
			{
				text_pause_timer++;
				if(text_pause_timer >= 120 && text_show < 7)
				{
					text_show++;
					text_timer = 24;
					text_pause_timer = 0;
				}
				else if(text_show == 7 && level_execute == 0)
				{
					text_pause_timer = 120;
					level_execute = 1;
					CatCounter = 0;
					oTutorialRoomTileBuilder.level_execute = 1;
					oTutorialRoomTileBuilder.level = 6;
				}
			}	
			else
			{
				if(!audio_is_playing(SoundOdyssey))
				{audio_play_sound(SoundOdyssey,10,false,.06);}
			}
		break;
		
		case 7:
			text_timer++;
			draw_set_font(Font11);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text_scribble_ext(x-325,y-85,level7_scribble[text_show],865,floor(text_timer/3));	
	
			if(floor(text_timer/3) >= string_length(level7_text[text_show]))
			{
				text_pause_timer++;
				if(text_pause_timer >= 120 && text_show < 6)
				{
					text_show++;
					text_timer = 24;
					text_pause_timer = 0;
				}
				else if(text_show == 6 && level_execute == 0)
				{
					text_pause_timer = 120;
					level_execute = 1;
					oTutorialRoomTileBuilder.level_execute = 1;
					oTutorialRoomTileBuilder.level = 7;
				}
			}	
			else
			{
				if(!audio_is_playing(SoundOdyssey))
				{audio_play_sound(SoundOdyssey,10,false,.06);}
			}
		break;
		
		case 8:
			text_timer++;
			draw_set_font(Font11);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text_scribble_ext(x-325,y-85,level8_scribble[text_show],865,floor(text_timer/3));	
	
			if(floor(text_timer/3) >= string_length(level8_text[text_show]))
			{
				//text_pause_timer++;
				//if(text_pause_timer >= 120 && text_show < 6)
				//{
				//	text_show++;
				//	text_timer = 24;
				//	text_pause_timer = 0;
				//}
				//else if(text_show == 6 && level_execute == 0)
				//{
				//	text_pause_timer = 120;
				//	level_execute = 1;
				//	oTutorialRoomTileBuilder.level_execute = 1;
				//	oTutorialRoomTileBuilder.level = 7;
				//}
			}	
			else
			{
				if(!audio_is_playing(SoundOdyssey))
				{audio_play_sound(SoundOdyssey,10,false,.06);}
			}
		break;
	}
}

if(fail == 1)
{
	text_timer++;
	draw_set_font(Font11);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_scribble_ext(x-325,y-85,fail_scribble[text_show],865,floor(text_timer/3));	
	
	if(floor(text_timer/3) >= string_length(fail_text[text_show]))
	{
		text_pause_timer++;
		if(text_pause_timer >= 120)
		{
			switch(level)
			{
				case 1:
					level_execute = 0;
					text_show = 1;
				break;
				
				case 2:
					level_execute = 0;
					text_show = 2;
				break;
				
				case 3:
					level_execute = 0;
					text_show = 7;
				break;
				
				case 4:
					level_execute = 0;
					text_show = 3;
				break;
				
				case 5:
					level_execute = 0;
					text_show = 7;
				break;
				
				case 6:
					level_execute = 0;
					text_show = 7;
				break;
				
				case 7:
					level_execute = 1;
					text_show = 6;
				break;
			}
			text_timer = 24;
			text_pause_timer = 0;
			fail = 0;
		}
	}	
	else
	{
		if(!audio_is_playing(SoundOdyssey))
		{audio_play_sound(SoundOdyssey,10,false,.06);}
	}
}