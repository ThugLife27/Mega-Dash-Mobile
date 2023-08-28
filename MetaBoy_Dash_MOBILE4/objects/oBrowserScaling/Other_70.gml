/// @description Insert description here
// You can write your code in this editor

// We do an early exit if the 'async_load' map doesn't contain a "type" key.
if(!ds_map_exists(async_load, "type")) exit;

show_debug_message("AdMob: " + json_encode(async_load));

// We switch on the type of the event being fired
switch(async_load[?"type"])
{

	// AdMob_Initialize finished
	case "AdMob_OnInitialized":
		// At this point the AdMob API succeeded to initialize.
		// We will now request a consent information update.	

		// Regarding consent request first of all we should select the mode we want to use for.
		// You can use one of the following constants:
		// 
		// AdMob_Consent_Mode_DEBUG_GEOGRAPHY_EEA (debug only)
		// AdMob_Consent_Mode_DEBUG_GEOGRAPHY_DISABLED (debug only)
		// AdMob_Consent_Mode_DEBUG_GEOGRAPHY_NOT_EEA (debug only)
		// AdMob_Consent_Mode_PRODUCTION (used for release)
		//
		AdMob_Consent_RequestInfoUpdate(AdMob_Consent_Mode_PRODUCTION);
	break;


	// ###############################################
	//                   CONSENT
	// ###############################################

	// AdMob_Consent_RequestInfoUpdate succeeded
	case "AdMob_Consent_OnRequestInfoUpdated":
		// At this point the extension succeeded on selecting consent mode.
		
		// We wil update the debug strings (used in draw event)
		updateConsentStrings();
		
		// We use this event to query the current consent status, if GDPR consent
		// is required (AdMob_Consent_Status_REQUIRED) then we start loading the consent form.
		if(global.PlayerProfile.age = "18+")
		{
			if(AdMob_Consent_GetStatus() == AdMob_Consent_Status_REQUIRED) //https://developers.google.com/admob/ump/android/api/reference/com/google/android/ump/ConsentInformation.ConsentStatus.html#REQUIRED
				AdMob_Consent_Load();
			else
			{
				// We are not required to request consent
				// from the user so we can not load the ads
				loadAllAds();
			}
		}
		else
		{
			AdMob_NonPersonalizedAds_Set(true);
		}
		break
	
	// AdMob_Consent_RequestInfoUpdate failed
	case "AdMob_Consent_OnRequestInfoUpdateFailed":
	
		// We wil update the debug strings (used in draw event)
		updateConsentStrings();
		
		// At this point the extension failed to obtain a consent update
		// Since we don't know the user consent response we need to assume
		// that the ads MUST be non-personalized
		AdMob_NonPersonalizedAds_Set(true);
		
		// We can also now load the ads
		// NOTE: Ads should only be loaded after the consent is answered
		loadAllAds();
		break
	
	// AdMob_Consent_Load succeeded
	case "AdMob_Consent_OnLoaded":
		// At this point the consent form loaded successfully.
		// We uses this event to show the consent to the user.
		AdMob_Consent_Show()
	break
	
	// AdMob_Consent_Load failed
	case "AdMob_Consent_OnLoadFailed":
		// At this point there was a problem loading the consent form.
		// Since we don't know the user consent response we need to assume
		// that the ads MUST be non-personalized
		AdMob_NonPersonalizedAds_Set(true);
		
		// We can also now load the ads
		// NOTE: Ads should only be loaded after the consent is answered
		loadAllAds();
		break
	
	// AdMob_Consent_Show succeeded & user answered
	case "AdMob_Consent_OnShown":
		// At this point the user already saw and answered the
		// consent request so we can process the results.
		showDebugInfo();
		updateConsentStrings();
		
		// We can also now load the ads
		// NOTE: Ads should only be loaded after the consent is answered
		loadAllAds();
		break
	
	case "AdMob_Consent_OnShowFailed":
		// At this point there was a problem showing the consent form.
		// Since we don't know the user consent response we need to assume
		// that the ads MUST be non-personalized
		AdMob_NonPersonalizedAds_Set(true);
		
		// We can also now load the ads
		// NOTE: Ads should only be loaded after the consent is answered
		loadAllAds();
		break

	// ###############################################
	//                     ADS
	// ###############################################

	// AdMob_Banner_Create succeeded
	case "AdMob_Banner_OnLoaded": 
		// At this point the banner ad succeeded to be created.
		break;
	
	// AdMob_Banner_Create failed
	case "AdMob_Banner_OnLoadFailed":
		// At this point the banner ad failed to be created.
		break;
	
	// ########### INTERSTITIAL  ###########
	
	// AdMob_Interstitial_Load succeeded
	case "AdMob_Interstitial_OnLoaded":
		// At this point the interstitial ad succeeded to load.
		break;
	
	// AdMob_Interstitial_Load failed
	case "AdMob_Interstitial_OnLoadFailed":
		// At this point the interstitial ad failed to load.
		//AdMob_Interstitial_load() // This can create an infinite loop if load always fails!!
		break;
	
	// AdMob_Interstitial_Show succeeded
	case "AdMob_Interstitial_OnFullyShown":
		// At this point the interstitial ad succeeded to show.
		break;

	// AdMob_Interstitial_Show failed
	case "AdMob_Interstitial_OnShowFailed":
		// At this point the interstitial ad failed to show.
		// Here we use this event to load the interstitial ad again (it could be a load problem).
		AdMob_Interstitial_Load();
		break;
	
	// AdMob_Interstitial got dismissed
	case "AdMob_Interstitial_OnDismissed":
		// At this point the interstitial just got dismissed.
		// Here we use this event to load the next interstitial ad.
		AdMob_Interstitial_Load();
		break;

	// ########### REWARDED VIDEO ###########

	// AdMob_RewardedVideo_Load succeeded
	case "AdMob_RewardedVideo_OnLoaded":
		// At this point the rewarded video succeeded to load.
		break;

	// AdMob_RewardedVideo_Load failed
	case "AdMob_RewardedVideo_OnLoadFailed":
		// At this point the rewarded video failed to load.
		//AdMob_RewardedVideo_Load() // This can create an infinite loop if load always fails!!
		break;
	
	// AdMob_RewardedVideo_Show succeeded
	case "AdMob_RewardedVideo_OnFullyShown":
		// At this point the rewarded video succeeded to show.
		break;
	
	// AdMob_RewardedVideo_Show failed
	case "AdMob_RewardedVideo_OnShowFailed":
		// At this point the rewarded video failed to show.
		// Here we use this event to load the rewarded video again (it could be a load problem).
		AdMob_RewardedVideo_Load();
		break;
	
	// AdMob_RewardedVideo got dismissed
	case "AdMob_RewardedVideo_OnDismissed":
		// At this point the rewarded video just got dismissed.
		// Here we use this event to load the next rewarded video.
		AdMob_RewardedVideo_Load();
		break;
	
	// AdMob_RewardedVideo triggered reward event
	case "AdMob_RewardedVideo_OnReward":
		// At this point you can reward the user.
		if(room == ChooseMeta)
		{global.RerollCount = 5;}
		else
		{
			switch(global.round_number)
			{
				case 1:
				global.Round1_Score = 0;
				R1Score = 0;
				break
				
				case 2:
				global.Round2_Score = 0;
				R2Score = 0;
				break
				
				case 3:
				global.Round3_Score = 0;
				R3Score = 0;
				break
				
				case 4:
				global.Round4_Score = 0;
				R4Score = 0;
				break
			}
			global.ReplayAvailable = 0;
			room_goto(DashRoom);
			
		}
		AdMob_RewardedVideo_Load();
		break;
	
	
	// ########### REWARDED INTERSTITIAL ###########
	
	// AdMob_RewardedInterstitial_Load succeeded
	case "AdMob_RewardedInterstitial_OnLoaded": 
		// At this point the rewarded interstitial ad succeeded to load.
		break;
	
	case "AdMob_RewardedInterstitial_OnLoadFailed":
		// At this point the rewarded interstitial ad failed to load.
		// AdMob_RewardedInterstitial__load() // This can create an infinite loop if load always fails!!
		break;
	
	case "AdMob_RewardedInterstitial_OnFullyShown":
		// At this point the rewarded interstitial ad succeeded to show.
		break;	
	
	// AdMob_RewardedInterstitial_Show failed
	case "AdMob_RewardedInterstitial_OnShowFailed":
		// At this point the rewarded interstitial ad failed to show.
		// Here we use this event to load the rewarded interstitial ad again (it could be a load problem).
		AdMob_RewardedInterstitial_Load();
		break;
	
	// AdMob_RewardedInterstitial got dismissed
	case "AdMob_RewardedInterstitial_OnDismissed":
		// At this point the rewarded interstitial just got dismissed.
		// Here we use this event to load the next rewarded interstitial ad.
		AdMob_RewardedInterstitial_Load();
		break;
	
	// AdMob_RewardedInsterstitial triggered reward event
	case "AdMob_RewardedInterstitial_OnReward":
		// At this point you can reward the user.
		show_message_async("User Earned Reward");
		break;
		
		
	// ########### APP OPEN ###########
		
	// AdMob_AppOpenAd_Load succeeded
	case "AdMob_AppOpenAd_OnLoaded":
		break;
		
	// AdMob_AppOpenAd_Load failed
	case "AdMob_AppOpenAd_OnLoadFailed":
		break;
	
	// AdMob_AppOpenAd got dismissed
	case "AdMob_AppOpenAd_OnDismissed":
		break;
	
	// AdMob_AppOpenAd_Show failed
	case "AdMob_AppOpenAd_OnShowFailed":
		// At this point the app open ad failed to show.
		AdMob_AppOpenAd_Load(display_landscape)
		break;
	
	case "AdMob_AppOpenAd_OnFullyShown":
		// At this point the app open ad succeeded to show.
		AdMob_AppOpenAd_Load(display_landscape)
		break;
}

if(global.AutoSaving == 1)
{
switch(async_load[? "type"])
{

case "GooglePlayServices_IsAuthenticated":
	if(!async_load[?"success"])
	{global.AutoSaving = 0;}
	else if(async_load[?"isAuthenticated"])
	{GooglePlayServices_SavedGames_Load(true);}
	else
	{global.AutoSaving = 0;}
			
break;

case "GooglePlayServices_SavedGames_Load":
		
	if(!async_load[?"success"])
	{global.AutoSaving = 0;}	
		//If no Player ID data found, create save profile!
	else if(async_load[?"snapshots"] == "[]")
	{	
		var path = "save_thumbnail.png"
		sprite_save_w(sFighterRun, 0, path);
		var data = global.PlayerProfile;
		var jsonData = json_stringify(data);
		var uniqueName = "MegaDash";
		var description = "MegaDashSaveFile";
		GooglePlayServices_SavedGames_CommitNew(uniqueName,description,jsonData,path);
	}
	else
	{
		var uniqueName = "MegaDash";
		GooglePlayServices_SavedGames_Open(uniqueName);
	}
		
break;

case "GooglePlayServices_SavedGames_Open":
		
	if(!async_load[?"success"])
	{global.AutoSaving = 0;}
	else
	{
		var path = "save_thumbnail.png"
		sprite_save_w(sFighterRun, 0, path);
		var data = global.PlayerProfile;
		var jsonData = json_stringify(data);
		var uniqueName = "MegaDash";
		var description = "MegaDashSaveFile";
		GooglePlayServices_SavedGames_CommitAndClose(uniqueName,description,jsonData,path);
	}	
break;

case "GooglePlayServices_SavedGames_CommitAndClose":
    if(!async_load[? "success"])
	{global.AutoSaving = 0;}
	else
	{global.AutoSaving = 0;}
break

case "GooglePlayServices_SavedGames_CommitNew":
    if(!async_load[? "success"])
	{global.AutoSaving = 0;}
	else
	{global.AutoSaving = 0;}
break;
}
}