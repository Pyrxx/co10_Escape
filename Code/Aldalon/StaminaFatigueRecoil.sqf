/*
	AUTHOR: Pyrx
	NAME: StaminaFatigueRecoil.sqf	
	VERSION: 0.1
	
	DESCRIPTION:
	* Turns off Stamina and Fatigue
	* Turns down Weapon Recoil
	USAGE:
	paste this into init.sqf / fn_initLocalPlayer.sqf
	0 = [] execVM 'StaminaFatigueRecoil.sqf';
*/

[] spawn { 
	while {true} do { 
		player enableFatigue false;
		player enableStamina false;
		player allowSprint true;
		player setUnitRecoilCoefficient 0.3;
		sleep 30; 
	}; 
}; 
