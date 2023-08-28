/// @description Insert description here
// You can write your code in this editor
LeaderboardSet = [13907,13905,13763];
LeaderboardTitles = ["DIFFICULTY: CASUAL","DIFFICULTY: NORMAL","DIFFICULTY: HARDCORE"];
LeaderboardShow = 0;
LootLockerInitialize("1aa8688bef047d6f9df9ade327da9cbc5eb9538f","0.1",true,LeaderboardSet[0]);

Page = 0;
cooldown = 0;

LB_Ranks = LLHighscoresTopRankList();
LB_Names = LLHighscoresTopNamesList();
LB_Scores = LLHighscoresTopScoreList();
LB_MetaData = LLHighscoresTopMetadataList();

ShowTimer = 120;