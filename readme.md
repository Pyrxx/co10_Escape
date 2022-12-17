# ABOUT

This variant of [co10_escape](https://github.com/NeoArmageddon/co10_Escape) primarily uses the more modern content that Arma 3 and the Workshop has to offer.


# REQUIRED ADDONS

* [Specialist Military Arms (SMA)](https://steamcommunity.com/sharedfiles/filedetails/?id=699630614)

## Winter Missions

* [NATO Winter Faction](https://steamcommunity.com/sharedfiles/filedetails/?id=2315104187)
* [CSAT Winter Faction](https://steamcommunity.com/sharedfiles/filedetails/?id=2361001257)
* [AAF Winter Faction](https://steamcommunity.com/sharedfiles/filedetails/?id=2398904634)
* [Snowmobile](https://steamcommunity.com/sharedfiles/filedetails/?id=2329040153)
* [Santa Claus](https://steamcommunity.com/sharedfiles/filedetails/?id=567871211)


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
* [Anizay](https://steamcommunity.com/sharedfiles/filedetails/?id=1537973181)
* [Hellanmaa](https://steamcommunity.com/sharedfiles/filedetails/?id=1291778160)


# SOME DETAILS ABOUT CHANGES MADE TO VANILLA CO10_ESCAPE

## Player Units
Only Medics and Engineers are playable, since these are the only classes that benefit from some special abilities (Heal and Repair).

## Gear Config (UnitClasses.sqf)
* prison backpack contains a shotgun from Contact DLC, removed some handguns, increased probability of SMGs
* altered contents of boxes found at weapon depots and crashsites
* changed spawn probability and quantity of many items
* replaced vanilla snipers with the ones from Marksmen DLC
* added Viper Units from Apex DLC to Vanilla Config

## Minor changes
* Decreased amount of communication centers. On a small map like Ruha (8x8km) only 2 of them can be found.
* Increased amount of crash sites.
* altered mission parameter defaults


## Additional scripts

* StatusHud - a small HUD element that shows the players health status along other information
* eli_earplugs - earplugs de-/activated via action menu
* enginesOff - automatically turns off the engine when ejecting from a vehicle, so you can double-tap "v" to jump out of a car without stopping it completely
* IRLasers - AIs using flashlights and IR lasers at night
* MIL_ClearGrass - clears grass around player via action menu
* PW_HolsterAction - weapon holstering via action menu
* StaminaFatigueSwayRecoil - disabled stamina and fatigue, reduced weapon sway and recoil
* swim - faster swimming
* unflip_vehicle - ability to unflip vehicles via action menu


---

Thanks to [NeoArmageddon](https://github.com/NeoArmageddon) and [Scruffy](https://github.com/ScruffyAT) <3