-- $Id: RepMenus.lua 4014 2012-11-28 12:06:57Z celellach $
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

	AtlasLoot_Data["REPMENU"] = {
		["Normal"] = {
			{
				{ 2, "REPMENU_ORIGINALWOW", "INV_Helmet_66", "=ds="..AL["Classic WoW"], ""};
				{ 3, "REPMENU_WOTLK", "achievement_reputation_kirintor", "=ds="..AL["Wrath of the Lich King"], ""};
				{ 5, "Anglers", "achievement_faction_anglers", "=ds="..BabbleFaction["The Anglers"], "=q5="..BabbleZone["Krasarang Wilds"]};
				{ 6, "GoldenLotus", "achievement_faction_goldenlotus", "=ds="..BabbleFaction["Golden Lotus"], "=q5="..BabbleZone["Vale of Eternal Blossoms"]};
				{ 7, "Lorewalkers", "achievement_faction_lorewalkers", "=ds="..BabbleFaction["The Lorewalkers"], "=q5="..BabbleZone["Vale of Eternal Blossoms"]};
				{ 8, "ShadoPan", "achievement_faction_shadopan", "=ds="..BabbleFaction["Shado-Pan"], "=q5="..BabbleZone["Townlong Steppes"]};
				{ 10, "OperationShieldwall", "pvpcurrency-honor-alliance", "=ds="..BabbleFaction["Operation: Shieldwall"], "=q5="..BabbleZone["Krasarang Wilds"]};
				{ 12, "VPMOPMENU", "pvecurrency-valor", "=ds="..AL["Valor Points"].." "..AL["Rewards"], "=q5="..AL["Mists of Pandaria"]};
				{ 14, "LionsLanding", "pvpcurrency-conquest-alliance", "=ds=Lion's Landing", "=q5="..BabbleZone["Krasarang Wilds"]};
				{ 17, "REPMENU_BURNINGCRUSADE", "INV_Misc_Ribbon_01", "=ds="..AL["Burning Crusade"], ""};
				{ 18, "REPMENU_CATACLYSM", "inv_neck_hyjaldaily_04", "=ds="..AL["Cataclysm"], ""};
				{ 20, "AugustCelestials", "achievement_faction_celestials", "=ds="..BabbleFaction["The August Celestials"], "=q5="..BabbleZone["Krasarang Wilds"].." / "..BabbleZone["Townlong Steppes"]};
				{ 21, "Klaxxi", "achievement_faction_klaxxi", "=ds="..BabbleFaction["The Klaxxi"], "=q5="..BabbleZone["Dread Wastes"]};
				{ 22, "OrderCloudSerpent", "achievement_faction_serpentriders", "=ds="..BabbleFaction["Order of the Cloud Serpent"], "=q5="..BabbleZone["The Jade Forest"]};
				{ 23, "Tillers", "achievement_faction_tillers", "=ds="..BabbleFaction["The Tillers"], "=q5="..BabbleZone["Valley of the Four Winds"]};
				{ 25, "DominanceOffensive", "pvpcurrency-honor-horde", "=ds="..BabbleFaction["Dominance Offensive"], "=q5="..BabbleZone["Krasarang Wilds"]};
				--{ 27, "DominationPoint", "pvpcurrency-conquest-horde", "=ds=Domination Point", "=q5="..BabbleZone["Krasarang Wilds"]};
			};
		};
		info = {
			name = AL["Factions"],
		};
	}

	AtlasLoot_Data["REPMENU_ORIGINALWOW"] = {
		["Normal"] = {
			{
				{ 1, "ArgentDawn", "inv_jewelry_talisman_07", "=ds="..BabbleFaction["Argent Dawn"], "=q5="..BabbleZone["Eastern Plaguelands"]}; 
				{ 2, "AQBroodRings", "inv_misc_head_dragon_bronze", "=ds="..BabbleFaction["Brood of Nozdormu"], "=q5="..BabbleZone["Temple of Ahn'Qiraj"].." / "..BabbleZone["Caverns of Time"]};
				{ 3, "BloodsailHydraxian", "Spell_Frost_SummonWaterElemental_2", "=ds="..BabbleFaction["Hydraxian Waterlords"], "=q5="..BabbleZone["Molten Core"]};
				{ 4, "Timbermaw", "achievement_reputation_timbermaw", "=ds="..BabbleFaction["Timbermaw Hold"], "=q5="..BabbleZone["Felwood"].." / "..BabbleZone["Winterspring"]};
				{ 6, "MiscFactions", "ability_warrior_rallyingcry", "=ds="..BabbleFaction["The League of Arathor"], "=q5="..BabbleFaction["Alliance"].." - "..BabbleZone["Arathi Basin"]};
				{ 7, "MiscFactions", "inv_jewelry_stormpiketrinket_05", "=ds="..BabbleFaction["Stormpike Guard"], "=q5="..BabbleFaction["Alliance"].." - "..BabbleZone["Alterac Valley"]};
				{ 9, "Darnassus", "inv_misc_tournaments_symbol_nightelf", "=ds="..BabbleFaction["Darnassus"], "=q5="..BabbleFaction["Alliance"]};
				{ 10, "Exodar", "inv_misc_tournaments_symbol_draenei", "=ds="..BabbleFaction["Exodar"], "=q5="..BabbleFaction["Alliance"]};
				{ 11, "Gilneas", "achievement_win_gilneas", "=ds="..BabbleFaction["Gilneas"], "=q5="..BabbleFaction["Alliance"]};
				{ 12, "GnomereganRep", "inv_misc_tournaments_symbol_gnome", "=ds="..BabbleFaction["Gnomeregan"], "=q5="..BabbleFaction["Alliance"]};
				{ 13, "Ironforge", "inv_misc_tournaments_symbol_dwarf", "=ds="..BabbleFaction["Ironforge"], "=q5="..BabbleFaction["Alliance"]};
				{ 14, "Stormwind", "inv_misc_tournaments_symbol_human", "=ds="..BabbleFaction["Stormwind"], "=q5="..BabbleFaction["Alliance"]};
				{ 15, "TushuiPandaren", "inv_misc_tournaments_symbol_human", "=ds="..BabbleFaction["Tushui Pandaren"], "=q5="..BabbleFaction["Alliance"]};
				{ 16, "BloodsailHydraxian", "INV_Helmet_66", "=ds="..BabbleFaction["Bloodsail Buccaneers"], "=q5="..BabbleZone["Stranglethorn Vale"]};
				{ 17, "CenarionCircle", "ability_racial_ultravision", "=ds="..BabbleFaction["Cenarion Circle"], "=q5="..BabbleZone["Silithus"]};
				{ 18, "ThoriumBrotherhood", "INV_Ingot_Mithril", "=ds="..BabbleFaction["Thorium Brotherhood"], "=q5="..BabbleZone["Searing Gorge"]};
				{ 19, "MiscFactions", "Ability_Mount_PinkTiger", "=ds="..BabbleFaction["Wintersaber Trainers"], "=q5="..BabbleFaction["Alliance"].." - "..BabbleZone["Winterspring"]};
				{ 21, "MiscFactions", "spell_shadow_psychichorrors", "=ds="..BabbleFaction["The Defilers"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Arathi Basin"]}; 
				{ 22, "MiscFactions", "inv_jewelry_frostwolftrinket_05", "=ds="..BabbleFaction["Frostwolf Clan"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Alterac Valley"]};
				{ 24, "BilgewaterCartel", "inv_misc_tabard_kezan", "=ds="..BabbleFaction["Bilgewater Cartel"], "=q5="..BabbleFaction["Horde"]};
				{ 25, "DarkspearTrolls", "inv_misc_tournaments_symbol_troll", "=ds="..BabbleFaction["Darkspear Trolls"], "=q5="..BabbleFaction["Horde"]};
				{ 26, "HuojinPandaren", "inv_misc_tournaments_symbol_orc", "=ds="..BabbleFaction["Huojin Pandaren"], "=q5="..BabbleFaction["Horde"]};
				{ 27, "Orgrimmar", "inv_misc_tournaments_symbol_orc", "=ds="..BabbleFaction["Orgrimmar"], "=q5="..BabbleFaction["Horde"]};
				{ 28, "SilvermoonCity", "inv_misc_tournaments_symbol_bloodelf", "=ds="..BabbleFaction["Silvermoon City"], "=q5="..BabbleFaction["Horde"]};
				{ 29, "ThunderBluff", "inv_misc_tournaments_symbol_tauren", "=ds="..BabbleFaction["Thunder Bluff"], "=q5="..BabbleFaction["Horde"]};
				{ 30, "Undercity", "inv_misc_tournaments_symbol_scourge", "=ds="..BabbleFaction["Undercity"], "=q5="..BabbleFaction["Horde"]};
			};
		};
		info = {
			name = AL["Factions"].." - "..AL["Classic WoW"],
			menu = "REPMENU",
		};
	}
	
	AtlasLoot_Data["REPMENU_BURNINGCRUSADE"] = {
		["Normal"] = {
			{
				{ 2, "CExpedition", "INV_Misc_Ammo_Arrow_02", "=ds="..BabbleFaction["Cenarion Expedition"], "=q5="..BabbleZone["Zangarmarsh"]};
				{ 3, "KeepersofTime", "Ability_Warrior_VictoryRush", "=ds="..BabbleFaction["Keepers of Time"], "=q5="..BabbleZone["Caverns of Time"]};
				{ 4, "Netherwing", "Ability_Mount_Netherdrakepurple", "=ds="..BabbleFaction["Netherwing"], "=q5="..BabbleZone["Shadowmoon Valley"]};				
				{ 5, "Skyguard", "ability_hunter_pet_netherray", "=ds="..BabbleFaction["Sha'tari Skyguard"], "=q5="..BabbleZone["Terokkar Forest"].." / "..BabbleZone["Blade's Edge Mountains"]};
				{ 6, "Sporeggar", "inv_mushroom_11", "=ds="..BabbleFaction["Sporeggar"], "=q5="..BabbleZone["Zangarmarsh"]};
				{ 7, "Tranquillien", "INV_Misc_Bandana_03", "=ds="..BabbleFaction["Tranquillien"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Ghostlands"]};
				{ 17, "Consortium", "inv_enchant_shardprismaticlarge", "=ds="..BabbleFaction["The Consortium"], ""};
				{ 18, "LowerCity", "Spell_Holy_ChampionsBond", "=ds="..BabbleFaction["Lower City"], ""};
				{ 19, "Ogrila", "inv_misc_apexis_crystal", "=ds="..BabbleFaction["Ogri'la"], "=q5="..BabbleZone["Blade's Edge Mountains"]};
				{ 20, "Shatar", "Ability_Warrior_ShieldMastery", "=ds="..BabbleFaction["The Sha'tar"], ""};
				{ 21, "SunOffensive", "inv_shield_48", "=ds="..BabbleFaction["Shattered Sun Offensive"], "=q5="..BabbleZone["Isle of Quel'Danas"]};
				{ 9, "HonorHold", "INV_BannerPVP_02", "=ds="..BabbleFaction["Honor Hold"], "=q5="..BabbleFaction["Alliance"].." - "..BabbleZone["Hellfire Peninsula"]};
				{ 24, "Thrallmar", "INV_BannerPVP_01", "=ds="..BabbleFaction["Thrallmar"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Hellfire Peninsula"]};
				{ 10, "Kurenai", "INV_Misc_Foot_Centaur", "=ds="..BabbleFaction["Kurenai"], "=q5="..BabbleFaction["Alliance"].." - "..BabbleZone["Nagrand"]};
				{ 25, "Maghar", "INV_Misc_Foot_Centaur", "=ds="..BabbleFaction["The Mag'har"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Nagrand"]};
				{ 12, "Aldor", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["The Aldor"], ""};
				{ 27, "Scryer", "INV_Misc_Foot_Centaur", "=ds="..BabbleFaction["The Scryers"], ""};
				{ 14, "Ashtongue", "achievement_reputation_ashtonguedeathsworn", "=ds="..BabbleFaction["Ashtongue Deathsworn"], "=q5="..BabbleZone["Shadowmoon Valley"].." / "..BabbleZone["Black Temple"]};
				{ 15, "ScaleSands", "inv_enchant_dustillusion", "=ds="..BabbleFaction["The Scale of the Sands"], "=q5="..BabbleZone["Hyjal Summit"]};
				{ 29, "VioletEye", "spell_holy_mindsooth", "=ds="..BabbleFaction["The Violet Eye"], "=q5="..BabbleZone["Karazhan"]};
			};
		};
		info = {
			name = AL["Factions"].." - "..AL["Burning Crusade"],
			menu = "REPMENU",
		};
	}

	AtlasLoot_Data["REPMENU_WOTLK"] = {
		["Normal"] = {
			{
				{ 2, "AllianceVanguard", "spell_misc_hellifrepvphonorholdfavor", "=ds="..BabbleFaction["Alliance Vanguard"], "=q5="..BabbleFaction["Alliance"]};
				{ 3, "WinterfinRetreat", "INV_Misc_Shell_04", "=ds="..BabbleFaction["Winterfin Retreat"], "=q5="..BabbleZone["Borean Tundra"]};
				{ 4, "TheWyrmrestAccord", "achievement_reputation_wyrmresttemple", "=ds="..BabbleFaction["The Wyrmrest Accord"], "=q5="..BabbleZone["Dragonblight"]};
				{ 5, "KnightsoftheEbonBlade", "achievement_reputation_knightsoftheebonblade", "=ds="..BabbleFaction["Knights of the Ebon Blade"], "=q5="..BabbleZone["Zul'Drak"].." / "..BabbleZone["Icecrown"]};
				{ 6, "TheOracles", "inv_misc_head_murloc_01", "=ds="..BabbleFaction["The Oracles"], "=q5="..BabbleZone["Sholazar Basin"]};
				{ 7, "TheSonsofHodir", "Spell_Holy_DivinePurpose", "=ds="..BabbleFaction["The Sons of Hodir"], "=q5="..BabbleZone["The Storm Peaks"]};
				{ 8, "ExplorersLeagueWarsongOffensive", "inv_drink_01", "=ds="..BabbleFaction["Explorers' League"], "=q5="..BabbleZone["The Storm Peaks"]};
				{ 9, "ArgentTournamentFaction", "inv_misc_tabardpvp_01", "=ds="..BabbleFaction["The Silver Covenant"], "=q5="..BabbleZone["Icecrown"].." / "..BabbleZone["Dalaran"]};
				{ 17, "HordeExpedition", "spell_misc_hellifrepvpthrallmarfavor", "=ds="..BabbleFaction["Horde Expedition"], "=q5="..BabbleFaction["Horde"]};
				{ 18, "TheKaluak", "achievement_reputation_tuskarr", "=ds="..BabbleFaction["The Kalu'ak"], "" };
				{ 19, "KirinTor", "achievement_reputation_kirintor", "=ds="..BabbleFaction["Kirin Tor"], "=q5="..BabbleZone["Borean Tundra"].." / "..BabbleZone["Dalaran"]};
				{ 20, "ArgentCrusade", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["Argent Crusade"], "=q5="..BabbleZone["Zul'Drak"].." / "..BabbleZone["Icecrown"]};
				{ 21, "FrenzyheartTribe", "ability_mount_whitedirewolf", "=ds="..BabbleFaction["Frenzyheart Tribe"], "=q5="..BabbleZone["Sholazar Basin"]};
				{ 22, "TheAshenVerdict", "INV_Jewelry_Ring_85", "=ds="..BabbleFaction["The Ashen Verdict"], "=q5="..BabbleZone["Icecrown"]};
				{ 23, "ExplorersLeagueWarsongOffensive", "inv_drink_01", "=ds="..BabbleFaction["Warsong Offensive"], "=q5="..BabbleZone["The Storm Peaks"]};
				{ 24, "ArgentTournamentFaction", "inv_misc_tabardpvp_02", "=ds="..BabbleFaction["The Sunreavers"], "=q5="..BabbleZone["Icecrown"].." / "..BabbleZone["Dalaran"]};
			};
		};
		info = {
			name = AL["Factions"].." - "..AL["Wrath of the Lich King"],
			menu = "REPMENU",
		};
	}

	AtlasLoot_Data["REPMENU_CATACLYSM"] = {
		["Normal"] = {
			{
				{ 2, "AvengersHyjal", "inv_neck_hyjaldaily_04", "=ds="..BabbleFaction["Avengers of Hyjal"], "=q5="..BabbleZone["Firelands"]};
				{ 17, "EarthenRing", "inv_misc_tabard_earthenring", "=ds="..BabbleFaction["The Earthen Ring"], "=q5="..BabbleZone["Vashj'ir"].." / "..BabbleZone["Deepholm"]};
				{ 3, "GuardiansHyjal", "inv_misc_tabard_guardiansofhyjal", "=ds="..BabbleFaction["Guardians of Hyjal"], "=q5="..BabbleZone["Mount Hyjal"]};
				{ 18, "Ramkahen", "inv_misc_tabard_tolvir", "=ds="..BabbleFaction["Ramkahen"], "=q5="..BabbleZone["Uldum"]};
				{ 4, "Therazane", "inv_misc_tabard_therazane", "=ds="..BabbleFaction["Therazane"], "=q5="..BabbleZone["Deepholm"]};
				{ 6, "WildhammerClan", "inv_misc_tabard_wildhammerclan", "=ds="..BabbleFaction["Wildhammer Clan"], "=q5="..BabbleFaction["Alliance"].." - "..BabbleZone["Twilight Highlands"]};
				{ 21, "DragonmawClan", "inv_misc_tabard_dragonmawclan", "=ds="..BabbleFaction["Dragonmaw Clan"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Twilight Highlands"]};
				{ 7, "BaradinsWardens", "inv_misc_tabard_baradinwardens", "=ds="..BabbleFaction["Baradin's Wardens"], "=q5="..BabbleFaction["Alliance"].." - "..BabbleZone["Tol Barad"]};
				{ 22, "HellscreamsReach", "inv_misc_tabard_hellscream", "=ds="..BabbleFaction["Hellscream's Reach"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Tol Barad"]};
			};
		};
		info = {
			name = AL["Factions"].." - "..AL["Cataclysm"],
			menu = "REPMENU",
		};
	}