/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		global.PlayerProfile.CommonAugments = ["Floor Multiplier 1","Floor Multiplier 1","Floor Multiplier 1","Floor Multiplier 1",
								"Max Multiplier 1","Max Multiplier 1","Max Multiplier 1","Max Multiplier 1",
								"Jump/Kick Up","Jump/Kick Up",
								"Daredevil 1","Daredevil 1",
								"Slow and Steady 1","Slow and Steady 1","Slow and Steady 1","Slow and Steady 1",
								"Guaranteed Cat Spawn",
								"More Common Cat Spawns","More Common Cat Spawns","More Common Cat Spawns","More Common Cat Spawns",
								"Cat Points 1","Cat Points 1","Cat Points 1","Cat Points 1",
								"Boss Spawns Up","Boss Spawns Up","Boss Spawns Up","Boss Spawns Up",
								"Overshield",
								"Blessed","Blessed","Blessed","Blessed",
								"Battle Pass XP 1","Battle Pass XP 1","Battle Pass XP 1","Battle Pass XP 1",
								"Passage of Time Up","Passage of Time Up","Passage of Time Up","Passage of Time Up",
								"Easy Bosses",
								"Enemy Pass through",
								"STX Collector","STX Collector","STX Collector","STX Collector",
								"Dog Odds 1","Dog Odds 1","Dog Odds 1","Dog Odds 1"];
								
		global.PlayerProfile.RareAugments = [
								"Floor Multiplier 2","Floor Multiplier 2","Floor Multiplier 2",
								"Max Multiplier 2","Max Multiplier 2","Max Multiplier 2",
								"Slow and Steady 2","Slow and Steady 2","Slow and Steady 2",
								"Hot Start",
								"Flashy Points Up","Flashy Points Up","Flashy Points Up",
								"Ultimate Points Up","Ultimate Points Up","Ultimate Points Up",
								"Demolisher Up",
								"Time Distort Enthusiast","Time Distort Enthusiast","Time Distort Enthusiast",
								"Ninja",
								"Mulligan",
								"STX Enthusiast","STX Enthusiast","STX Enthusiast",
								"Battle Pass XP 2","Battle Pass XP 2","Battle Pass XP 2",
								"OP OGs","OP OGs","OP OGs",
								"Cat Points 2","Cat Points 2","Cat Points 2",
								"Triple Blessed","Triple Blessed","Triple Blessed",
								"Dog Odds 2","Dog Odds 2","Dog Odds 2"];
								
		global.PlayerProfile.LegendaryAugments = [
								"Max Multiplier +25",
								"Scaling Cats",
								"Ult Abuser",
								"The Gauntlet",
								"4th Round",
								"Loaded",
								"9 Lives",
								"Giant Slayer",
								"Can't fall through floor",
								"Giga Blessed"];
		
		delay_timer = 10;
		ready_check = 0;
		}
}
