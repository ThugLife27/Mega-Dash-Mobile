/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(global.CharacterRunSkin,image_index,x,y,2,2,0,c_white,1);

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font9);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

switch(global.CharacterRunSkin)
{
	case sFighterRun:
		draw_text_ext(921,275,"The OG Mega Dasher!",40,511);
		draw_text_ext(921,633,"Default",40,511);

		draw_set_font(Font6);
		draw_text(x,y+253,"Fighter");
	break;
	
	case sBlueFighter:
		draw_text_ext(921,275,"Check out that cool blue hair!",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"Blue Fighter");
	break;
	
	case sWhiteFighter:
		draw_text_ext(921,275,"Don't sleep on the old man strength",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"Gray Fighter");
	break;
	
	case sCyanFighter:
		draw_text_ext(921,275,"Ooooh Cyan? Now that's fancy!",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"Cyan Fighter");
	break;
	
	case sRedFighter:
		draw_text_ext(921,275,"This dude is SO punk rock",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"Red Fighter");
	break;
	
	case sYellowFighter:
		draw_text_ext(921,275,"I bet that white jacket is tough to keep clean",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"Yellow Fighter");
	break;
	
	case sGreenFighter:
		draw_text_ext(921,275,"Green Fighter ... or is he Purple Fighter? Idk",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"Green Fighter");
	break;
	
	case sBritRun:
		draw_text_ext(921,275,"Can spin kick without spilling his tea. Impressive!",40,511);
		draw_text_ext(921,633,"Season Zero Battle Pass Exclusive",40,511);
		
		draw_set_font(Font6);
		draw_text(x,y+253,"Brit Boy");
	break;
	
	case sAlienRun:
		draw_text_ext(921,275,"If your name isn't PerkyTank, how tf did you get this?!",40,511);
		draw_text_ext(921,633,"???????",40,511);
		
		draw_set_font(Font6);
		draw_text(x,y+253,"Alien");
	break;
	
	case sMiamiBoyRun:
		draw_text_ext(921,275,"ALWAYS down to party! Especially in General Chat",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);
		
		draw_set_font(Font6);
		draw_text(x,y+253,"Miami Boy");
	break;
	
	case sBlueBoxerRun:
		draw_text_ext(921,275,"Wears boxing gloves but still chooses to Spin Kick",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);
		
		draw_set_font(Font6);
		draw_text(x,y+253,"Blue Boxer");
	break;
	
	case sKeithRun:
		draw_text_ext(921,275,"Best Friends with the OG Fighter",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);
		
		draw_set_font(Font6);
		draw_text(x,y+253,"Keith");
	break;
	
	case sKungFuTurtleRun:
		draw_text_ext(921,275,"Slow and Steady is the way to go",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"Kung Fu Turtle");
	break;
	
	case sMinotaurRun:
		draw_text_ext(921,275,"YOU MESS WITH THE BULL, YOU GET THE HORNS",40,511);
		draw_text_ext(921,633,"Season Zero Beta - Battle Pass Grand Prize",40,511);

		draw_set_font(Font6);
		draw_text(x,y+253,"Minotaur");
	break;
	
	case sSecret_Agent:
		draw_text_ext(921,275,"The name's Boy. MetaBoy.",40,511);
		draw_text_ext(921,633,"Season Zero Beta - Diamond Pass Exclusive",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"Secret Agent");
	break;
	
	case sSuperheroRun:
		draw_text_ext(921,275,"Wears a cool cape but can't fly... Feelsbadman",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);

		draw_set_font(Font6);
		draw_text(x,y+253,"Superhero");
	break;
	
	case sFireWarriorRun:
		draw_text_ext(921,275,"A mysterious character only available to true warriors",40,511);
		draw_text_ext(921,633,"???????",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"Fire Warrior");
	break;
	
	case sSTXBoyMenu:
		draw_text_ext(921,275,"No Kicking\nAll Lasers!\nThe Hero of STX",40,511);
		draw_text_ext(921,633,"Season Zero Beta",40,511);

		draw_set_font(Font9);
		draw_text(x,y+253,"STX Boy");
	break;
	
}