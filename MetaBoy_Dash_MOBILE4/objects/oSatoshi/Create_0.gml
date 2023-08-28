/// @description Insert description here
// You can write your code in this editor
global.PlayerProfile.Stats.NumBosses++;
audio_play_sound(SoundSatoshiWind,10,false,2);

image_alpha = 0;
image_index = 0;
image_speed = 0;
shoot_timer = 60
vsp = 2;

hp = 180-(60*global.AUG_EasyBosses)+(120*global.AUG_GiantSlayer);
max_hp = max(hp,180);

satoshi_dead = 0;
shot_type = 0;
flash = 0;
move_timer = 0;
alpha_slider = 180;

satoshi_battle_start = 0;
battle_start_timer = 11*60;
attack = 0;
attack_timer = 270 + 120*global.AUG_GiantSlayer;
shield_timer = 300;
//instance_create_layer(x-400+177,y-400+417,"Boss",oSatoshiCoinHold,
//{image_alpha : image_alpha});