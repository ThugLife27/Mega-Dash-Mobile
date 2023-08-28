/// @description Insert description here
// You can write your code in this editor
if(global.IAP_Enabled = false && reconnect_timer > 0)
{
	reconnect_timer--;
	if(reconnect_timer == 0)
	{
		var _init = GPBilling_ConnectToStore();
		if _init == gpb_error_unknown
			{
				global.IAP_Enabled = false;
				reason = 1;
			}
		reconnect_timer = 60*5;
	}
}