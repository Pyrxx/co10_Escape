# ABOUT

This variant of [co10_escape](https://github.com/NeoArmageddon/co10_Escape) primarily uses the more modern content that Arma 3 and the Workshop has to offer.


# REQUIRED ADDONS

* [Specialist Military Arms (SMA)](https://steamcommunity.com/sharedfiles/filedetails/?id=699630614)


# RECOMMENDED ADDONS

* [Unit Voice-overs](https://steamcommunity.com/sharedfiles/filedetails/?id=1868302880) - Because it's fun.
* [All The Weapons 2020](https://forums.bohemia.net/forums/topic/178831-all-the-weapons/?do=findComment&comment=3403630) - Randomly replaces AIs weapons. This greatly improves the variety of found loot at AI bodies, while sometimes it also makes for unconventional combinations. Vermin with LRPS? Well, that happens. Run this as a `serverMod`.


# SUPPORTED TERRAINS

* Altis
* [Malden 2035](https://store.steampowered.com/app/639600/Arma_3_Malden/)
* [Tanoa](https://store.steampowered.com/app/395180/Arma_3_Apex/)
* [Livonia](https://store.steampowered.com/app/1021790/Arma_3_Contact/)
* [Chernarus 2020](https://steamcommunity.com/sharedfiles/filedetails/?id=1981964169)
* [Takistan](https://steamcommunity.com/sharedfiles/filedetails/?id=583544987)
* [Esseker](https://steamcommunity.com/sharedfiles/filedetails/?id=498101407)
* [Beketov](https://steamcommunity.com/sharedfiles/filedetails/?id=743968516)
* [Rosche](https://steamcommunity.com/sharedfiles/filedetails/?id=1527410521)
* [Virolahti](https://steamcommunity.com/sharedfiles/filedetails/?id=1926513010)
* [Ruha](https://steamcommunity.com/sharedfiles/filedetails/?id=1368857262)
* [Tembelan](https://steamcommunity.com/sharedfiles/filedetails/?id=1252091296)
* [Kujari](https://steamcommunity.com/sharedfiles/filedetails/?id=1726494027)
* [Vidda](https://steamcommunity.com/sharedfiles/filedetails/?id=1282716647)
* [Reshmaan](https://steamcommunity.com/sharedfiles/filedetails/?id=843362862)
* [Anizay](https://steamcommunity.com/sharedfiles/filedetails/?id=1537973181)
* [Hellanmaa](https://steamcommunity.com/sharedfiles/filedetails/?id=1291778160)


# SOME DETAILS ABOUT CHANGES MADE TO VANILLA CO10_ESCAPE

## Player Units
Only Medics and Engineers are playable, since these are the only classes that benefit from some special abilities (Heal and Repair).

## World Configs
* Decreased amount of communication centers. On a small map like Ruha (8x8km) only 2 of them can be found.
* Increased amount of crash sites.

## Gear Config (UnitClasses.sqf)
* prison backpack contains a shotgun from Contact DLC, removed some handguns, increased probability of SMGs
* altered contents of boxes found at weapon depots and crashsites
* changed spawn probability and quantity of many items
* replaced vanilla snipers with the ones from Marksmen DLC
* added Viper Units from Apex DLC to Vanilla Config

## Mission Parameters

|         **Parameter**         | **Default** | **Text** |
|:------------------------------|:-----------:|:-|
| A3E_Param_Loadparams          |      1      | Load previously saved settings (Use below if none found) |
| A3E_Param_EnemySkill          |      0      | Cadet |
| A3E_Param_EnemyFrequency      |      2      | Some (3-5) |
| A3E_Param_EnemyGroupSize      |      4      | Some (3-5) |
| A3E_Param_EnemySpawnDistance  |     500     | Short (better performance, spawn in view possible) |
| A3E_Param_VillageSpawnCount   |      1      | Low (better performance) |
| A3E_Param_SearchChopper       |      0      | Random (Chooses between Easy and Hard Values) |
| A3E_Param_TimeOfDay           |      8      | 08:00 |
| A3E_Param_TimeMultiplier      |     12      | 1:12 (Day = 2 Hours) |
| A3E_Param_WeatherOvercast     |     -1      | Random  |
| A3E_Param_WeatherFog          |      0      | No Fog |
| A3E_Param_WeatherWind         |     -1      | Random |
| A3E_Param_WeatherRain         |     -1      | Random |
| A3E_Param_Grass               |     12      | Normal |
| A3E_Param_UseIntel            |      0      | Disabled |
| A3E_Param_RevealMarkers       |      1      | Always show marker but hide type (questionmark) |
| A3E_Param_VehicleLock         |      0      | None |
| A3E_Param_Artillery           |      1      | Default |
| A3E_Param_War_Torn            |      1      | Enabled |
| A3E_Param_ReviveView          |      1      | Hindsight Cam |
| A3E_Param_ExtractionSelection |      2      | Far |
| A3E_Param_Waffelbox           |      1      | On |
| A3E_Param_NoNightvision       |      0      | All |
| A3E_Param_SendStatistics      |      1      | On |
| A3E_Param_UseDLCApex          |      1      | Yes |
| A3E_Param_UseDLCHelis         |      1      | Yes |
| A3E_Param_UseDLCMarksmen      |      1      | Yes |
| A3E_Param_UseDLCLaws          |      1      | Yes |
| A3E_Param_UseDLCTanks         |      1      | Yes |
| A3E_Param_UseDLCContact       |      1      | Yes |
| A3E_Param_Magrepack           |      1      | Enabled |


# ADDITIONAL SCRIPTS

* StatusHud - a small HUD element that shows the players health status along other information
* eli_earplugs - earplugs de-/activated via action menu
* enginesOff - automatically turns off the engine when ejecting from a vehicle, so you can double-tap "v" to jump out of a car without stopping it completely
* IRLasers - AIs using flashlights and IR lasers at night
* MIL_ClearGrass - clears grass around player on demand
* PW_HolsterAction - weapon holstering via action menu
* StaminaFatigueSwayRecoil - disabled stamina and fatigue, reduced weapon sway and recoil
* swim - faster swimming
* unflip_vehicle - ability to unflip vehicles


---

Thanks to [NeoArmageddon](https://github.com/NeoArmageddon) and [Scruffy](https://github.com/ScruffyAT) <3