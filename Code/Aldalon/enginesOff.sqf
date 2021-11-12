/*
	AUTHOR: jaz
	NAME: enginesOff.sqf	
	VERSION: 0.1
	
	DESCRIPTION:
	turns off any engine when player leaves unit
	USAGE:
	paste this into init.sqf
	0 = [] execVM 'unflip_vehicle.sqf';		
*/

// exit if we are not a player
if(!hasInterface) exitWith { }; 

// from unflip script, add event handler on respawn
//player addEventHandler ["respawn", { [] call aero_unflip_addAction; }];

player addEventHandler ["GetOutMan", { 
	params ["_unit", "_role", "_vehicle", "_turret"];   
	_vehicle engineOn false;
}]; 
