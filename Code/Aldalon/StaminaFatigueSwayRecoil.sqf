/*
	AUTHOR: Pyrx
	NAME: StaminaFatigueSwayRecoil.sqf	
	VERSION: 0.1
	
	DESCRIPTION:
	* Turns off Stamina and Fatigue
	* Turns down Weapon Sway
	USAGE:
	paste this into init.sqf
	0 = [] execVM 'StaminaFatigueSwayRecoil.sqf';
*/

[] spawn { 
	while {true} do { 
		player enableFatigue false;
		player enableStamina false;
		player allowSprint true;
		player setCustomAimCoef 0.1;
		player setUnitRecoilCoefficient 0.3;
		sleep 30; 
	}; 
}; 
