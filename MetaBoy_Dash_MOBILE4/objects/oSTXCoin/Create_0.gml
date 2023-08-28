/// @description Insert description here
// You can write your code in this editor

while(place_meeting(x,y,oWall) || place_meeting(x,y,oEnemy) || place_meeting(x,y,oCat))
{
	x = irandom_range(2200,3800);
	y = irandom_range(100,1000);
}

coin_pick = irandom(14);
if(coin_pick == 10)
{sprite_index = sSTXCoin2;}