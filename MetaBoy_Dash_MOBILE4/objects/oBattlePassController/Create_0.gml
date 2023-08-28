/// @description Insert description here
// You can write your code in this editor
BattlePassAssets = [
"Common","Coins","Blue Fighter",
"General Chat","Coins","Rare",
"Blue Boxer","Common","Green Fighter",
"Coins","Cyan Fighter","Legendary",
"Common","Coins","Gaia's Lab",
"Keith","Coins","Rare",
"Rare","Miami Boy","Legendary",
"Coins","Burn Wallet","Rare",
"Brit Boy","Coins","Common",
"Rare","Legendary","Minotaur"];

BattlePassType = [
"Augment","Coins","Fighter",
"Level","Coins","Augment",
"Fighter","Augment","Fighter",
"Coins","Fighter","Augment",
"Augment","Coins","Level",
"Fighter","Coins","Augment",
"Augment","Fighter","Augment",
"Coins","Level","Augment",
"Fighter","Coins","Augment",
"Augment","Augment","Fighter"];

BattlePassDetails = [
0,100,sBlueFighter,
2,100,1,
sBlueBoxerRun,0,sGreenFighter,
200,sCyanFighter,1,
0,200,1,
sKeithRun,200,1,
1,sMiamiBoyRun,2,
300,4,1,
sBritRun,500,0,
1,2,sMinotaurRun];

BattlePassXP = [
500,1500,5000,
7000,9000,12000,
15000,20000,25000,
28000,32000,35000,
37000,41500,45000,
48000,51000,55000,
57000,60000,65000,
68000,70000,73000,
77000,82000,85000,
90000,95000,99999
];

Update = 0;
Page = 0;

for (var i = 0; i < 5; i += 1)
{
    instance_create_layer(339+415*i,665,"Instances",oBattlePassClaimButton,
	{
		asset : BattlePassAssets[i],
		type : BattlePassType[i],
		details : BattlePassDetails[i],
		xp_cost : BattlePassXP[i],
		level : i+1,
		claimed : global.PlayerProfile.BattlePassClaimed[i]
	});
}

if(global.PlayerProfile.BattlePass == 0)
{PassType = "None";}
else if(global.PlayerProfile.BattlePass == 1)
{PassType = "SILVER";}
else if(global.PlayerProfile.BattlePass == 2)
{PassType = "GOLD";}
else
{PassType = "DIAMOND";}