/*_______________________________________

Author: Phantom Wolf

Parameters: Nil

Syntax: [] execVM "PW_holsterAction.sqf";

Usage: init.sqf, onPlayerRespawn.sqf or via Trigger

__________________________________________*/


waitUntil {(!isNull player) and (alive player)};

player addAction [ "<t color='#FF1493'>Holster Weapon" , { player action [ "hideWeapon", player, player, 101 ] }, [], 1, false, true, "", "currentWeapon player != '' && vehicle player == player", -1, false ];
player addAction [ "<t color='#FF1493'>Weapon in hands", { player action [ "hideWeapon", player, player, 0 ] },   [], 1, false, true, "", "currentWeapon player == '' && vehicle player == player && { primaryWeapon player != '' } ", -1, false ];