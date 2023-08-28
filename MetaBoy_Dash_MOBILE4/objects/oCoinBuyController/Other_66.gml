/// @description Insert description here
// You can write your code in this editor

var _eventId = async_load[? "id"];
show_debug_message(string(async_load[?"id"]));

switch (_eventId)
{
case gpb_store_connect:
	// Store has connected so here you would generally add the products
	GPBilling_AddProduct(global.IAP_PurchaseID[0]);
	GPBilling_AddProduct(global.IAP_PurchaseID[1]);
	GPBilling_AddProduct(global.IAP_PurchaseID[2]);
	GPBilling_QueryProducts();
	// Etc…
break;

case gpb_store_connect_failed:
	// Store has failed to connect, so try again periodically
	global.IAP_Enabled = false;
	reconnect_timer = 60*5;
	with(button){sprite_index = sCoinBuyButton;}
	oButtonHomePage.locked = 0;
	oButtonBattlePassBuy.locked = 0;
break;

case gpb_product_data_response:
// Retrieve the JSON object response string
	var _json = async_load[? "response_json"];
    var _map = json_decode(_json);
    // Check if the query was successful
    if (_map[? "success"])
        {
        // Get the DS list of products and loop through them
        var _plist = _map[? "skuDetails"];
        for (var i = 0; i < ds_list_size(_plist); ++i;)
            {
            // The skuDetails key contains a DS list where
            // each list entry corresponds to a single
            // product in DS map form. This DS map can be parsed
            // to extract details like title, description and
            // price, as shown in the example, below:
            var _pmap = _plist[| i];
            var _num = 0;
            while(_pmap[? "productId"] != global.IAP_PurchaseID[_num])
                {
                ++_num;
                }
            global.IAP_ProductData[_num, 0] = _pmap[? "productId"];
            global.IAP_ProductData[_num, 1] = _pmap[? "price"];
            global.IAP_ProductData[_num, 2] = _pmap[? "title"];
            global.IAP_ProductData[_num, 3] = _pmap[? "description"];
			
				switch(global.IAP_ProductData[_num,0])
				{
					case "md_001":
					oCoinBuyButton1.price = global.IAP_ProductData[_num, 1];
					break;
					
					case "md_002":
					oCoinBuyButton2.price = global.IAP_ProductData[_num, 1];
					break;
					
					case "md_003":
					oCoinBuyButton3.price = global.IAP_ProductData[_num, 1];
					break;
				}
            }
        // Call the query function for subscriptions here, if required:
        // GPBilling_QuerySubscriptions();
        // If not required then query purchase data (this would be done
        // in the subscription product query if those have been queried).
        // Basically, all queries must be made sequentially with the 
        // purchase queries being done last.
        
		GPBilling_QueryPurchasesAsync(gpb_purchase_skutype_inapp);
        // The section below shows how to deal with the purchase queries
        // and you would add the code shown here.
       
        }
	else
		{
			show_debug_message("Query Failed...");
			global.IAP_Enabled = false;
			reconnect_timer = 60*5;
			with(button){sprite_index = sCoinBuyButton;}	
			oButtonHomePage.locked = 0;
			oButtonBattlePassBuy.locked = 0;
			reason = 1;
		}
	
	 ds_map_destroy(_map);
break;

case gpb_query_purchase_async:
		var _json = json_decode(async_load[? "response_json"]);
		if (_json[? "success"] == true)
			{
				var _list = _json[? "purchases"];
				var _reset = 0;
				for (var i = 0; i < min(ds_list_size(_list),1); ++i;)
				{
					var _map = _list[| i];
					if (_map[? "purchaseState"] == 0)
					{
						var _pid = _map[? "productId"];
						var _token = _map[? "purchaseToken"];
						if (_pid == global.IAP_PurchaseID[0])
						{
							coin_amount = 600;
							global.PlayerProfile.Coins += 600;
							token = _token;
							_reset = 1;
							GooglePlayServices_SavedGames_Load(true);
						}
						else if(_pid == global.IAP_PurchaseID[1])
						{
							coin_amount = 1500;
							global.PlayerProfile.Coins += 1500;
							token = _token;
							_reset = 1;
							GooglePlayServices_SavedGames_Load(true);
						}
						else if(_pid == global.IAP_PurchaseID[2])
						{
							coin_amount = 3500;
							global.PlayerProfile.Coins += 3500;
							token = _token;
							_reset = 1;
							GooglePlayServices_SavedGames_Load(true);
						}
					}
					else
					{
						reason = 6;
					}
					
				}	
				
				if(_reset == 0)
				{
					with(button){sprite_index = sCoinBuyButton;}
					oButtonHomePage.locked = 0;
					oButtonBattlePassBuy.locked = 0;
				}
				
			global.IAP_Enabled = true;
			}
	else
		{
			global.IAP_Enabled = false;
			reconnect_timer = 60*5;
			with(button){sprite_index = sCoinBuyButton;}
			reason = 1;
			oButtonHomePage.locked = 0;
			oButtonBattlePassBuy.locked = 0;
		}
	ds_map_destroy(_json);
break;

case gpb_product_consume_response:
    // Get the JSON object response string
    var _json = async_load[? "response_json"];
    var _map = json_decode(_json);
    var _num = -1;
    // Get the purchase token for the product that has been purchased
    if ds_map_exists(_map, "purchaseToken") 
        {
        // compare the response purchase token against the list
        // of purchase token requests
        for (var i = 0; i < ds_list_size(global.CurrentTokens); ++i;)
            {
            // the response matches a token in the purchase check list
            if _map[? "purchaseToken"] == global.CurrentTokens[| i]
                {
                // Find out what product the token refers to
                    reason = 3;
					audio_play_sound(SoundReward2,10,false);
					ds_list_delete(global.CurrentProducts, i);
				    ds_list_delete(global.CurrentTokens, i);
					with(button){sprite_index = sCoinBuyButton;}
					oButtonHomePage.locked = 0;
					oButtonBattlePassBuy.locked = 0;
					GPBilling_QueryPurchasesAsync(gpb_purchase_skutype_inapp);
                }
            }
		}
    else
        {
        with(button){sprite_index = sCoinBuyButton;}
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
        }
    ds_map_destroy(_map);
break;

case gpb_iap_receipt:
	var _json = async_load[? "response_json"];
	var _map = json_decode(_json);
	if (_map[? "success"] == true)
		{
			if ds_map_exists(_map, "purchases")
			{
				var _plist = ds_map_find_value(_map, "purchases");
				for (var i = 0; i < ds_list_size(_plist); ++i;)
				{
					var _pmap = _plist[| i];
					var _ptoken = _pmap[? "purchaseToken"];
					var _sig = GPBilling_Purchase_GetSignature(_ptoken);
					var _pjson = GPBilling_Purchase_GetOriginalJson(_ptoken);
					if GPBilling_Purchase_VerifySignature(_pjson, _sig)
					{
						ds_list_add(global.CurrentTokens, _ptoken);
						ds_list_add(global.CurrentProducts, _pmap[? "productId"]);
						GPBilling_QueryPurchasesAsync(gpb_purchase_skutype_inapp);
					}
				}
			}
		}
	else
		{
			with(button){sprite_index = sCoinBuyButton;}
			reason = 2;
			oButtonHomePage.locked = 0;
			oButtonBattlePassBuy.locked = 0;
		}
	ds_map_destroy(_map);
break;
}