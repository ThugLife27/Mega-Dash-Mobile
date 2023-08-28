/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

keyboard_string = "";
os_set_orientation_lock(false,true);
keyboard_virtual_show(kbv_type_default,kbv_returnkey_default,kbv_autocapitalize_none,false);

redeeming = 0;
success = 0;
success_timer = 150;

failed = 0;
failed_timer = 100;
reason = 0;

promocode = "";
promocode_reward = "";

temp_augment_array = [];

could_not_mark_redeemed = 0;

http_type = 0;
request = 0;