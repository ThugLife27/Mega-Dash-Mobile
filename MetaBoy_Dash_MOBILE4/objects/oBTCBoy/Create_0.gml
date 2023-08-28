/// @description Insert description here
// You can write your code in this editor
global.PlayerProfile.Stats.NumBosses++;
global.Boss_AutoSpawn = 6;

boss_rage = 0;
boss_timer = 80*60+(15*60*global.AUG_GiantSlayer);

hp = 180-(60*global.AUG_EasyBosses)+(120*global.AUG_GiantSlayer);
max_hp = max(hp,180);

image_index = 0;
image_speed = 0;
shoot_timer = 30;
vsp = 9;

btcboy_dead = 0;
shot_type = 1;
flash = 0;
deathflash = 0;

instance_create_layer(x,y,"MedusaLaser",oBTCBoyWings);

explosion_slider = 45;
satoshi_slider = 240;
black_shader = 0;

if(global.difficulty < 2)
{diff_multiplier = 0;}
else
{diff_multiplier = 1;}
