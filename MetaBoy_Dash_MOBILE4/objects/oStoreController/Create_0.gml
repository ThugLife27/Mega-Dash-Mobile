/// @description Insert description here
// You can write your code in this editor
CharacterArray = [
"Blue Fighter","Yellow Fighter","Gray Fighter","Red Fighter",
"Cyan Fighter","Green Fighter","Keith","Kung Fu Turtle",
"Blue Boxer","Superhero","Miami Boy","STX Boy"];

CharacterCost = [
300,300,300,300,
300,300,600,1000,
1000,1500,1500,3000];

CharacterSprite = [
sBlueFighter,sYellowFighter,sWhiteFighter,sRedFighter,
sCyanFighter,sGreenFighter,sKeithRun,sKungFuTurtleRun,
sBlueBoxerRun,sSuperheroRun,sMiamiBoyRun,sSTXBoyMenu];

LevelArray = ["General Chat","Gaia's Lab","Rug Pull","Burn Wallet"];
LevelCost = [600,600,600,600];
LevelSprite = [2,1,3,4];

AugmentArray = ["Common","Rare","Legendary"];
AugmentCost = [100,200,500];
AugmentSprite = [0,1,2];

ArraySelect = CharacterArray;
CostArraySelect = CharacterCost;
SpriteArraySelect = CharacterSprite;

Update = 0;
Info = 0;
Purchase = 0;
Page = 0;

for (var i = 0; i < 4; i += 1)
{
    instance_create_layer(695+425*i,721,"Instances",oStoreBuyButton,
	{
		asset : CharacterArray[i],
		cost : CharacterCost[i],
		sprite : CharacterSprite[i],
	});
}