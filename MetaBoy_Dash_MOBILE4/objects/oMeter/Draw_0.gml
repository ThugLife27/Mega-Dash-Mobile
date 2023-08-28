/// @description Insert description here
// You can write your code in this editor
if(global.gamestart == 0)
{
switch(MeterUpgrade)
{
	//case "STX":
	//	draw_self();
	//	draw_sprite(sSTXLabel,0,x-10,y)
	//	draw_text(x+80,y+7,string(global.STXCounter) + " / " + string(global.STXThreshold));
	//break
	
	case "Alien":	
		draw_self();
		draw_set_alpha(1.0);
		draw_set_colour(c_grey);
		draw_set_font(Font9);
		draw_set_halign(fa_right);
		draw_set_valign(fa_center);
		draw_text(x-15,y,"UFO")
		draw_sprite_stretched(sMeterFillGreen,0,x,y-21,global.AlienTimer/(15*60)*146,34);
	break
	
	case "JetPack":
		draw_self();
		draw_sprite_stretched(sMeterFill,0,600,35-21,(global.Overheat/global.OverheatMax)*146,34);
		draw_sprite(sJetpackMeter,0,x-10,y);
	break
	
	case "Ultimate":
		draw_self();
		
		draw_set_alpha(1.0);
		draw_set_colour(c_white);
		draw_set_font(Font9);
		draw_set_halign(fa_right);
		draw_set_valign(fa_center);
		draw_text(x-15,y,"ULTIMATE")
		
		draw_set_halign(fa_center);
		draw_text(x+80,y,"0");
	break
	
	case "Unstoppable":
		draw_self();
		draw_set_alpha(1.0);
		draw_set_colour(c_white);
		draw_set_font(Font9);
		draw_set_halign(fa_right);
		draw_set_valign(fa_center);
		draw_text(x-15,y,"UNSTOPPABLE")
	break
	
	case "Ghost":	
		draw_self();
		draw_set_alpha(1.0);
		draw_set_colour(c_white);
		draw_set_font(Font9);
		draw_set_halign(fa_right);
		draw_set_valign(fa_center);
		draw_text(x-15,y,"GHOST")
		draw_sprite_stretched(sMeterFill,0,x,y-21,global.GhostReadyTimer/(7*60)*146,34);
	break
		
	case "Time Distort":
		draw_set_alpha(1.0);
		draw_set_colour(c_white);
		draw_set_font(Font9);
		draw_set_halign(fa_right);
		draw_set_valign(fa_center);
		draw_text(x-15,y,"TIME DIST")
		
		draw_set_halign(fa_center);
		draw_text(x+80,y,"0");
	break
	
	case "Flashy":
		draw_self();
		draw_set_alpha(1.0);
		draw_set_colour(c_white);
		draw_set_font(Font9);
		draw_set_halign(fa_right);
		draw_set_valign(fa_center);
		draw_text(x-15,y,"FLASHY")
		draw_sprite_stretched(sMeterFill,0,x,y-21,global.FlashyTimer/(180)*146,34);
	break
	
	case "GoLong":
		draw_set_alpha(1.0);
		draw_set_colour(c_white);
		draw_set_font(Font9);
		draw_set_halign(fa_right);
		draw_set_valign(fa_center);
		draw_text(x-15,y,"GO LONG")
		draw_set_halign(fa_center);
		draw_text(x+80,y,"0");
	break
}		
}


if(global.gamestart == 1)
{
switch(MeterUpgrade)
{
	//case "STX":
	//	draw_self();
	//	draw_sprite(sSTXLabel,0,x-10,y)
	//	draw_text(x+80,y+7,string(global.STXCounter) + " / " + string(global.STXThreshold));
	//break
	case "Alien":
		draw_self();
			if(global.AlienTimer < (15*60) && global.AlienUFOActive == 0)
			{
				draw_sprite_stretched(sMeterFillGreen,0,x,y-21,global.AlienTimer/(15*60)*146,34);
				draw_set_alpha(1.0);
				draw_set_colour(c_gray);
				draw_set_font(Font9);
				draw_set_halign(fa_right);
				draw_set_valign(fa_center);
				draw_text(x-15,y,"UFO");
			}
		
			if(global.AlienTimer == (15*60) && global.AlienUFOActive == 0)
			{
				draw_sprite_stretched(sMeterFillGreen,0,x,y-21,global.AlienTimer/(15*60)*146,34);
				draw_set_alpha(1.0);
				draw_set_colour(c_white);
				draw_set_font(Font9);
				draw_set_halign(fa_right);
				draw_set_valign(fa_center);
				draw_text(x-15,y,"UFO");
			}
		
			if(global.AlienUFOActive == 1)
			{
				draw_sprite_stretched(sMeterFillGreen,0,x,y-21,global.AlienTimer/(12*60)*146,34);
			
				if(AlienSprite > 2)
				{
					draw_set_alpha(1.0);
					draw_set_colour(c_red);
					draw_set_font(Font9);
					draw_set_halign(fa_right);
					draw_set_valign(fa_center);
					draw_text(x-15,y,"UFO");
				}
			}
		break;
	
	case "JetPack":
		draw_self();
		draw_sprite_stretched(sMeterFill,0,600,35-21,(global.Overheat/global.OverheatMax)*146,34);
		draw_sprite(sJetpackMeter,0,x-10,y);
	break
	
	case "Ultimate":
	draw_self();
		if(global.UltimateComplete == 0 && global.UltimateActive == 0)
		{
			draw_set_alpha(1.0);
			draw_set_colour(c_white);
			draw_set_font(Font9);
			draw_set_halign(fa_right);
			draw_set_valign(fa_center);
			draw_text(x-15,y,"ULTIMATE")
		
			draw_set_halign(fa_center);
			draw_text(x+80,y,string(global.UltimateCounter));
		}
		
		if(global.UltimateActive == 1 && global.UltimateComplete == 0)
		{
			image_alpha = 1;
			draw_sprite_stretched(sMeterReady,0,x,y-21,global.UltimateTimer/(global.UltimateTimerMax)*146,34);
			if(UltimateSprite > 2)
			{
				draw_set_font(Font9);
				draw_set_colour(c_red);
				draw_set_halign(fa_right);
				draw_set_valign(fa_center);
				draw_text(x-15,y,"ULTIMATE");
			}
			draw_set_font(Font9);
			draw_set_colour(c_white);
			draw_set_halign(fa_left);
			draw_set_valign(fa_center);
			draw_text(880,82,"ULTIMATE: " + string(global.UltScore));
		}
		
		if(global.UltimateComplete == 1)
		{
			image_alpha = 0;
			draw_set_alpha(1.0);
			draw_set_colour(c_white);
			draw_set_font(Font9);
			draw_set_halign(fa_right);
			draw_set_valign(fa_center);
			draw_text(x-15,y,"ULTIMATE")
		
			draw_set_halign(fa_center);
			draw_text(x+80,y,string(global.UltScore));
		}
		
	break
	
	case "Unstoppable":
	draw_self();
		if(UnstoppableMeter < 2280)
		{
			draw_sprite_stretched(sMeterFill,0,x,y-21,UnstoppableMeter/2280*146,34);
			draw_set_alpha(1.0);
			draw_set_colour(c_white);
			draw_set_font(Font9);
			draw_set_halign(fa_right);
			draw_set_valign(fa_center);
			draw_text(x-15,y,"UNSTOPPABLE")
		}
		
		if(UnstoppableMeter >= 2280)
		{
			draw_sprite_stretched(sMeterReady,0,x,y-21,146,34);
			
			if(UnstoppableSprite == 1)
			{
				draw_set_colour(c_red);
				draw_set_font(Font9);
				draw_set_halign(fa_right);
				draw_set_valign(fa_center);
				draw_text(x-15,y,"UNSTOPPABLE")
			}
		}
	break
	
	case "Ghost":
	draw_self();
		if(global.GhostReadyTimer < (7*60) && global.GhostActive == 0)
		{
			draw_sprite_stretched(sMeterFill,0,x,y-21,global.GhostReadyTimer/(7*60)*146,34);
			draw_set_alpha(1.0);
			draw_set_colour(c_gray);
			draw_set_font(Font9);
			draw_set_halign(fa_right);
			draw_set_valign(fa_center);
			draw_text(x-15,y,"GHOST");
		}
		
		if(global.GhostReadyTimer == (7*60) && global.GhostActive == 0)
		{
			draw_sprite_stretched(sMeterFill,0,x,y-21,global.GhostReadyTimer/(7*60)*146,34);
			draw_set_alpha(1.0);
			draw_set_colour(c_white);
			draw_set_font(Font9);
			draw_set_halign(fa_right);
			draw_set_valign(fa_center);
			draw_text(x-15,y,"GHOST");
		}
		
		if(global.GhostActive == 1)
		{
			draw_sprite_stretched(sMeterReady,0,x,y-21,global.GhostReadyTimer/(7*60)*146,34);
			
			if(GhostSprite > 2)
			{
				draw_set_alpha(1.0);
				draw_set_colour(c_red);
				draw_set_font(Font9);
				draw_set_halign(fa_right);
				draw_set_valign(fa_center);
				draw_text(x-15,y,"GHOST");
			}
		}
	break
		
	case "Time Distort":
			if(global.TimeDistortActive == 0 && global.TimeDistortUsed == 0)
		{
			draw_set_alpha(1.0);
			draw_set_colour(c_white);
			draw_set_font(Font9);
			draw_set_halign(fa_right);
			draw_set_valign(fa_center);
			draw_text(x-15,y,"TIME DIST")
			
			draw_set_halign(fa_center);
			draw_text(x+80,y,string(floor(global.TimeDistortTimer/180)));
			global.TimeDistortMax = global.TimeDistortTimer;
		}
		
		if(global.TimeDistortActive == 1)
		{
			draw_self();
			draw_sprite_stretched(sMeterFill,0,x,y-21,global.TimeDistortTimer/(global.TimeDistortMax)*146,34);
			if(TDSprite > 2)
			{
				draw_set_alpha(1.0);
				draw_set_colour(c_red);
				draw_set_font(Font9);
				draw_set_halign(fa_right);
				draw_set_valign(fa_center);
				draw_text(x-15,y,"TIME DIST")
			}
		}
		
	break
	
	case "Flashy":
	draw_self();
	
			if(global.FlashyTimer < 180)
		{
			draw_sprite_stretched(sMeterFill,0,x,y-21,global.FlashyTimer/(180)*146,34);
			draw_set_alpha(1.0);
			draw_set_colour(c_gray);
			draw_set_font(Font9);
			draw_set_halign(fa_right);
			draw_set_valign(fa_center);
			draw_text(x-15,y,"FLASHY")
		}
		
		if(global.FlashyTimer == 180)
		{
			draw_sprite_stretched(sMeterFill,0,x,y-21,global.FlashyTimer/(180)*146,34);
			draw_set_alpha(1.0);
			draw_set_colour(c_white);
			draw_set_font(Font9);
			draw_set_halign(fa_right);
			draw_set_valign(fa_center);
			draw_text(x-15,y,"FLASHY")
		}
	break
	
	case "GoLong":
		draw_set_alpha(1.0);
		draw_set_colour(c_white);
		draw_set_font(Font9);
		draw_set_halign(fa_right);
		draw_set_valign(fa_center);
		draw_text(x-15,y,"GO LONG")
		draw_set_halign(fa_center);
		draw_text(x+80,y,string(oDashRoomMonitor.GoLongPoints));
	break
}		
}


