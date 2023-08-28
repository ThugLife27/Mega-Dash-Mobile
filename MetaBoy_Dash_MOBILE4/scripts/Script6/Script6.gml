// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetAugmentImageIndex(Augment){

switch(Augment)
{
	case "Floor Multiplier 1":
		description = "Base multiplier is increased by 2!";
		return 0;
	break;
	
	case "Max Multiplier 1":
		description = "Max multiplier is increased by 2!";
		return 1;
	break;
	
	case "Jump/Kick Up":
		description = "Slightly improved jumping and kicking!";
		return 2;
	break;
	
	case "Daredevil 1":
		description = "Can go further off screen before dying!";
		return 3;
	break;
	
	case "Slow and Steady 1":
		description = "The room speeds up more slowly!";
		return 4;
	break;
	
	case "Guaranteed Cat Spawn":
		description = "While at your base multiplier, you are guaranteed a Cat Spawn!";
		return 5;
	break;
	
	case "More Common Cat Spawns":
		description = "Cat spawns are slightly more likely";
		return 6;
	break;
	
	case "Cat Points 1":
		description = "Cats are worth slightly more points!";
		return 7;
	break;
	
	case "Boss Spawns Up":
		description = "Bosses appear slightly more frequently!";
		return 8;
	break;
	
	case "Overshield":
		description = "Gain an Overshield to protect you from collisions or Boss Attacks!";
		return 9;
	break;
	
	case "Blessed":
		description = "Rare enemies appear slightly more frequently!";
		return 10;
	break;
	
	case "Battle Pass XP 1":
		description = "Gain slightly more Battle Pass XP for playing!";
		return 11;
	break;
	
	case "Passage of Time Up":
		description = "Gain slightly more points for passage of time!";
		return 12;
	break;
	
	case "Easy Bosses":
		description = "Bosses have reduced HP!";
		return 13;
	break;
	
	case "Enemy Pass through":
		description = "No longer die after colliding with an enemy!";
		return 14;
	break;
	
	case "STX Collector":
		description = "More STX coins appear!";
		return 15;
	break;
	
	case "Dog Odds 1":
		description = "Higher odds of encountering a dog!";
		return 16;
	break;
	
	case "Floor Multiplier 2":
		description = "Base multiplier is increased by 5!";
		return 17;
	break;
	
	case "Max Multiplier 2":
		description = "Max multiplier is increased by 5!";
		return 18;
	break;
	
	case "Slow and Steady 2":
		description = "Room speeds up significantly slower!";
		return 19;
	break;
	
	case "Hot Start":
		description = "Add 33% for 1st round score!";
		return 20;
	break;
	
	case "Flashy Points Up":
		description = "Add 50 points*multiplier to Flashy!";
		return 21;
	break;
	
	case "Ultimate Points Up":
		description = "Ultimate Points +100 per enemy hit";
		return 22;
	break;
	
	case "Demolisher Up":
		description = "Earn 200 points per tile kicked!";
		return 23;
	break;
	
	case "Time Distort Enthusiast":
		description = "Time Distort timer accrues way faster!";
		return 24;
	break;
	
	case "Ninja":
		description = "Whenever you kick an enemy, ghost for 1 second!";
		return 25;
	break;
	
	case "Mulligan":
		description = "Multiplier doesn't reset until missing 2 enemies in a row";
		return 26;
	break;
	
	case "STX Enthusiast":
		description = "Many more coins appear!";
		return 27;
	break;
	
	case "Battle Pass XP 2":
		description = "Earn way more Battle Pass XP for playing!";
		return 28;
	break;
	
	case "OP OGs":
		description = "Kicking enemies adds +2 to multiplier!";
		return 29;
	break;
	
	case "Cat Points 2":
		description = "Cats are worth WAY more points!";
		return 30;
	break;
	
	case "Triple Blessed":
		description = "Rare Enemies are now more common and worth triple points!";
		return 31;
	break;
	
	case "Dog Odds 2":
		description = "Odds of finding a dog are WAY higher!";
		return 32;
	break;
	
	case "Max Multiplier +25":
		description = "Max Multiplier increased by 25!";
		return 33;
	break;
	
	case "Scaling Cats":
		description = "1st cat you collect is worth 1000, 2nd is worth 2000, etc etc. Scaling carries across all rounds";
		return 34;
	break;
	
	
	case "Ult Abuser":
		description = "Can now ult TWICE in the same round!";
		return 35;
	break;
	
	case "The Gauntlet":
		description = "Can now fight TWO BOSSES in the same round!";
		return 36;
	break;
	
	case "4th Round":
		description = "Play 4 rounds without dropping lowest score!";
		return 37;
	break;
	
	case "Loaded":
		description = "Pick 4 cartridges start of the game. Play all rounds with those carts!";
		return 38;
	break;
	
	case "9 Lives":
		description = "Every 3 cats you collect grants a Guardian Angel";
		return 39;
	break;
	
	case "Giant Slayer":
		description = "Bosses are WAY HARDER but grant more way more points!";
		return 40;
	break;
	
	case "Can't fall through floor":
		description = "Isn't this technically cheating?";
		return 41;
	break;
	
	case "Giga Blessed":
		description = "Rare Enemies are worth 5x points and add +1 to max multiplier";
		return 42;
	break;
	
	default:
		description = "";
		return -1;
}
}