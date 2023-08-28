/// @description Insert description here
// You can write your code in this editor
if(room != TutorialRoom)
{
global.PlayerProfile.Stats.NumBosses++;
global.Boss_AutoSpawn = 6;
}

boss_timer = 80*60;
boss_rage = 0;

image_index = 0;
image_speed = 0;
shoot_timer = 60
vsp = 9;

hp = 180-(60*global.AUG_EasyBosses)+(120*global.AUG_GiantSlayer);
max_hp = max(hp,180);
thuglife_dead = 0;
shot_type = 0;
alpha_slider = 180;
flash = 0;

if(global.difficulty < 2)
{diff_multiplier = 0;}
else
{diff_multiplier = 1;}



