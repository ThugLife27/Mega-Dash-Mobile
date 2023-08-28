/// @description Insert description here
// You can write your code in this editor

if(audio_is_playing(StartMusic))
{audio_play_sound(StartMusic,10,true,.3);}

intro = 1;
level = 0;
level_execute = 0;
pass = 0;
fail = 0;

text_show = 0;
text_timer = 40;
text_pause_timer = 0;
CoinGrab = 0;
CatCounter = 0;


intro_scribble = [
"[c_white]ODYSSEY:\n[c_aqua]Welcome to [rainbow]MEGA DASH!",
"[c_white]ODYSSEY:\n[c_aqua]My name is [rainbow]ODYSSEY[/rainbow] ... I am an AI designed by Gaia",
"[c_white]ODYSSEY:\n[c_aqua]MetaBoys are being overcome by [c_fuchsia][shake]CORRUPTION[c_aqua][/shake] and we need your help!",
"[c_white]ODYSSEY:\n[c_aqua]YOU are the [c_yellow]Hero[c_aqua] we need to save the MetaBoys",
"[c_white]ODYSSEY:\n[c_aqua]...Let's begin your [c_yellow]training!"
];

intro_text = [
"ODYSSEY: Welcome to MEGA DASH!",
"ODYSSEY: My name is ODYSSEY ... I am an AI designed by Gaia",
"ODYSSEY: MetaBoys are being overcome by CORRUPTION and we need your help!",
"ODYSSEY: YOU are the hero we need to save the MetaBoys",
"ODYSSEY: ...Let's begin your training!"
];

level1_scribble = [
"[c_white]ODYSSEY:\n[c_aqua]Lesson 1: [c_yellow]Jumping!",
"[c_white]ODYSSEY:\n[c_aqua][c_yellow]Tap[c_aqua] for a Short Jump and [c_yellow]Hold[c_aqua] for a BIG Jump!",
"[c_white]ODYSSEY:\n[c_aqua]Try Jumping to collect these coins for points!"
];

level1_text = [
"ODYSSEY:\nLesson 1: Jumping!",
"ODYSSEY:\nTap for a Short Jump and Hold for a BIG Jump!",
"ODYSSEY:\nTry Jumping to collect these coins for points!"
];

level2_scribble = [
"[c_white]ODYSSEY:\n[c_aqua][rainbow]Great!!![/rainbow] You are a natural!",
"[c_white]ODYSSEY:\n[c_aqua]Lesson 2: [c_yellow]Kicking!",
"[c_white]ODYSSEY:\n[c_aqua]Let's try kicking a [c_fuchsia][shake]Corrupted[c_aqua][/shake] MetaBoy!"
];

level2_text = [
"ODYSSEY:\nGreat!!! You are a natural!",
"ODYSSEY:\nLesson 2: Kicking!",
"ODYSSEY:\nLet's try kicking a Corrupted MetaBoy!"
];

level3_scribble = [
"[c_white]ODYSSEY:\n[c_aqua]HOLY MOLY!!!\n[rainbow]WHAT A KICK![/rainbow]\nRIGHT IN THE FACE!",
"[c_white]ODYSSEY:\n[c_aqua]Okay okay, the secret to Mega Dash...",
"[c_white]ODYSSEY:\n[c_aqua]...is kicking A LOT of enemies [c_yellow]in a row!",
"[c_white]ODYSSEY:\n[c_aqua]Kicking an enemy adds [c_yellow]+1[c_aqua] to your [c_yellow]MULTIPLIER",
"[c_white]ODYSSEY:\n[c_aqua]Higher Multiplier = [c_yellow][wave]MORE POINTS[/wave][c_aqua] for kicking enemies!",
"[c_white]ODYSSEY:\n[c_aqua]Max Multiplier is typically [c_yellow]10X[c_aqua]",
"[c_white]ODYSSEY:\n[c_aqua]Careful, [c_red]MISSING[c_aqua] an enemy will reset multiplier to [c_silver]1X",
"[c_white]ODYSSEY:\n[c_aqua]Let's see you get that Multiplier to [c_yellow]10X!!",
];

level3_text = [
"ODYSSEY:\nHOLY MOLY!!!\nWHAT A KICK!\nRIGHT IN THE FACE",
"ODYSSEY:\nOkay, the key to Mega Dash...",
"ODYSSEY:\n...is kicking A LOT of enemies in a row!",
"ODYSSEY:\nKicking an enemy adds +1 to your MULTIPLIER",
"ODYSSEY:\nHigher Multiplier = MORE POINTS for kicking enemies!",
"ODYSSEY:\nMax Multiplier is typically 10X",
"ODYSSEY:\nCareful, MISSING an enemy will reset Multiplier to 1X",
"ODYSSEY:\nLet's see you get that Multiplier to 10X",
];

level4_scribble = [
"[c_white]ODYSSEY:\n[c_aqua]You are a [wave][c_yellow]SPIN KICKING MACHINE!!!",
"[c_white]ODYSSEY:\n[c_aqua]Let's talk about[c_yellow] Rare Enemies",
"[c_white]ODYSSEY:\n[c_aqua]Rare Enemies add [c_yellow]+2[c_aqua] to Multiplier and give [c_yellow]double points!",
"[c_white]ODYSSEY:\n[c_aqua]Let's kick this [c_yellow]Rare Enemy[c_aqua] to score big!",
];

level4_text = [
"ODYSSEY:\nYou are a SPIN KICKING MACHINE!!!",
"ODYSSEY:\nLet's talk about Rare Enemies",
"ODYSSEY:\nRare Enemies add +2 to Multiplier and give double points!",
"ODYSSEY:\nLet's kick this Rare Enemy to score big!",
];

level5_scribble = [
"[c_white]ODYSSEY:\n[c_aqua][rainbow]EXCELLENT!!!",
"[c_white]ODYSSEY:\n[c_aqua]Finally, keep an eye out for [c_yellow]Cats",
"[c_white]ODYSSEY:\n[c_aqua]Cats are [rainbow][wave]rare[/rainbow][/wave] and usually appear in hard to reach places",
"[c_white]ODYSSEY:\n[c_aqua]Cats add [c_yellow]+3[c_aqua] to Multiplier and give [c_yellow]big points!",
"[c_white]ODYSSEY:\n[c_aqua]You can just touch the cats, they do not like being kicked",
"[c_white]ODYSSEY:\n[c_aqua]Missing a cat will [c_yellow]NOT[c_aqua] reset your [c_yellow]Multiplier!",
"[c_white]ODYSSEY:\n[c_aqua]Let's pickup these cats here!",
];

level5_text = [
"ODYSSEY:\nEXCELLENT!!!",
"ODYSSEY:\nFinally, keep an eye out for Cats",
"ODYSSEY:\nCats are rare and usually appear in hard to reach places",
"ODYSSEY:\nCats add +3 to Multiplier and give big points!",
"ODYSSEY:\nYou can just touch the cats, they do not like being kicked",
"ODYSSEY:\nMissing a cat will NOT reset your Multiplier!",
"ODYSSEY:\nLet's pickup these cats here!",
];

level6_scribble = [
"[c_white]ODYSSEY:\n[c_aqua][rainbow]Nice!!",
"[c_white]ODYSSEY:\n[c_aqua]Sometimes if you are [rainbow][wave]SUPER LUCKY[/rainbow][/wave] ... you may find a [c_yellow]dog[c_aqua] also",
"[c_white]ODYSSEY:\n[c_aqua]Okay last thing ... MetaBoy kinda has a [c_yellow]BIG[/c_yellow] problem",
"[c_white]ODYSSEY:\n[c_aqua]So uhhh...",
"[c_white]ODYSSEY:\n[c_aqua]You may stumble upon some [c_fuchsia][shake]Super Corrupted[c_aqua][/shake] MetaBoy [c_red]BOSSES",
"[c_white]ODYSSEY:\n[c_aqua]Not even [rainbow]Gaia[/rainbow] can contain their [c_red][shake]power!!!",
"[c_white]ODYSSEY:\n[c_aqua]But don't worry, you got this [c_yellow][wave]easy peasy",
"[c_white]ODYSSEY:\n[c_aqua]Kick this boss to trigger the [c_yellow]Boss Fight"
];

level6_text = [
"ODYSSEY:\nNice!!",
"ODYSSEY:\nSometimes if you are SUPER LUCKY ... you may find a dog also",
"ODYSSEY:\nOkay last thing ... MetaBoy kinda has a BIG problem",
"ODYSSEY:\nSo uhhh...",
"ODYSSEY:\nYou may stumble upon some Super Corrupted MetaBoy BOSSES",
"ODYSSEY:\nNot even Gaia can contain their power!!!",
"ODYSSEY:\nBut don't worry, you got this easy peasy",
"ODYSSEY:\nKick this boss to trigger the Boss Fight"
];

level7_scribble = [
"[c_white]ODYSSEY:\n[c_aqua][shake]OHHH NOOO... NOW YOU'VE DONE IT![shake]",
"[c_white]ODYSSEY:\n[c_aqua]I'm just an AI so he can't hurt me but [c_yellow]GOOD LUCK[c_aqua] to you!!!",
"[c_white]ODYSSEY:\n[c_aqua]JUST KIDDING!! OKAY I'm [c_yellow]scanning[c_aqua] his abilities and weaknesses...",
"[c_white]ODYSSEY:\n[c_aqua]Just [c_yellow]KICK 3 ENEMIES INTO HIS FACE[c_aqua] and you'll win!",
"[c_white]ODYSSEY:\n[c_aqua]WATCH OUT for the [c_red]FIREBALLS!!!",
"[c_white]ODYSSEY:\n[c_aqua]You got this [c_yellow]CHAMP[c_aqua] I'm cheering for you!",
"[c_white]ODYSSEY:\n[c_aqua]Kick the [c_yellow]enemies[c_aqua] to take down the [c_red]BOSS!"
];

level7_text = [
"ODYSSEY:\nOHHH NOOO... NOW YOU'VE DONE IT!",
"ODYSSEY:\nI'm just an AI so he can't hurt me but good luck to you!!!",
"ODYSSEY:\nJust kidding!! okay I'm scanning his abilities and weaknesses...",
"ODYSSEY:\nJust kick 3 enemies into his face and you'll win!",
"ODYSSEY:\nWatch out for the fireballs!!!",
"ODYSSEY:\nYou got this champ I'm cheering for you!",
"ODYSSEY:\nKick the enemies to take down the boss!"
];

level8_scribble = [
"[c_white]ODYSSEY:\n[rainbow][wave]YOU DID IT!!![/rainbow][/wave]\nYou're AMAZING!",
];

level8_text = [
"ODYSSEY:\nYOU DID IT!!!\nYou're AMAZING!",

];

fail_scribble = [
"[c_white]ODYSSEY:\n[c_aqua]Oops! Let's try that again",
"[c_white]ODYSSEY:\n[c_aqua]Uh Oh! Let's try that one more time",
"[c_white]ODYSSEY:\n[c_aqua]Whoops! That's alright, let's try again",
"[c_white]ODYSSEY:\n[c_aqua]Yikes!! Let's give it another go."
];

fail_text = [
"ODYSSEY:\nOops! Let's try that again",
"ODYSSEY:\nUh Oh! Let's try that one more time",
"ODYSSEY:\nWhoops! That's alright, let's try again",
"ODYSSEY:\nYikes!! Let's give it another go."
];