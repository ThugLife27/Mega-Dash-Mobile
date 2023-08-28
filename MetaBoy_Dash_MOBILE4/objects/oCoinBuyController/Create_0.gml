/// @description Insert description here
// You can write your code in this editor
reconnect_timer = 60*5;
reason = 0;
button = oCoinBuyButton1;
coin_amount = 0;
global.IAP_Enabled = false;
global.IAP_PurchaseID[0] = "md_001";
global.IAP_PurchaseID[1] = "md_002";
global.IAP_PurchaseID[2] = "md_003";
global.CurrentTokens = ds_list_create();
global.CurrentProducts = ds_list_create();
// Attempt to connect to the store
var _init = GPBilling_ConnectToStore();
if _init == gpb_error_unknown
    {
		global.IAP_Enabled = false;
		reason = 1;
    }
