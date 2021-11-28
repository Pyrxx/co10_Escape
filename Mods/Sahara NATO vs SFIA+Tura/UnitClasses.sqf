/*
 * Description: This file contains the vehicle types and unit types for the units spawned in the mission, and the weapons and magazines found in ammo boxes/cars.
 * "Random array" (used below) means that array will be used to spawn units, and that chance is 1/n that each element will be spawned on each spawn. The array can contain 
 * many elements of the same type, so the example array ["Offroad_DSHKM_INS", "Pickup_PK_INS", "Pickup_PK_INS"] will spawn an Offroad with 1/3 probability, and a 
 * Pickup with 2/3 probability.
 */

private ["_enemyFrequency"];

_enemyFrequency = _this select 0;

A3E_VAR_Side_Blufor = west;	//player side, WS NATO Desert
A3E_VAR_Side_Opfor = east;	//enemy side, WS SFIA Opfor
A3E_VAR_Side_Ind = resistance;	//WS Tura Indep

A3E_VAR_Flag_Opfor = "\lxws\data_f_lxws\img\flags\flag_SFIA_CO.paa";
A3E_VAR_Flag_Ind = "\lxws\data_f_lxws\img\flags\flag_Argana_CO.paa";
 
A3E_VAR_Side_Blufor_Str = format["%1",A3E_VAR_Side_Blufor];
A3E_VAR_Side_Opfor_Str = format["%1",A3E_VAR_Side_Opfor];
A3E_VAR_Side_Ind_Str = format["%1",A3E_VAR_Side_Ind];

// Random array. Start position guard types around the prison
a3e_arr_Escape_StartPositionGuardTypes = [
	"I_SFIA_defector_lxWS",
	"I_SFIA_defector_lxWS",
	"I_SFIA_deserter_lxWS",
	"I_SFIA_deserter_lxWS",
	"I_SFIA_watcher_lxWS",
	"I_SFIA_watcher_lxWS",
	"I_SFIA_Said_lxWS",
	"I_PMC_Story_Gustavo_lxWS"];

// Prison backpack secondary weapon (and corresponding magazine type).
a3e_arr_PrisonBackpackWeapons = [];
//Pistols
a3e_arr_PrisonBackpackWeapons pushback ["hgun_ACPC2_snds_F","9Rnd_45ACP_Mag"];
a3e_arr_PrisonBackpackWeapons pushback ["hgun_Rook40_snds_F","30Rnd_9x21_Mag"];
a3e_arr_PrisonBackpackWeapons pushback ["hgun_Pistol_heavy_02_Yorris_F","6Rnd_45ACP_Cylinder"];
//SMGs
a3e_arr_PrisonBackpackWeapons pushback ["hgun_PDW2000_F","30Rnd_9x21_Mag"];
a3e_arr_PrisonBackpackWeapons pushback ["hgun_PDW2000_F","30Rnd_9x21_Mag"];
a3e_arr_PrisonBackpackWeapons pushback ["SMG_03C_khaki","50Rnd_570x28_SMG_03"];
a3e_arr_PrisonBackpackWeapons pushback ["SMG_03C_khaki","50Rnd_570x28_SMG_03"];
a3e_arr_PrisonBackpackWeapons pushback ["SMG_05_F", "30Rnd_9x21_Mag_SMG_02"];
a3e_arr_PrisonBackpackWeapons pushback ["SMG_05_F", "30Rnd_9x21_Mag_SMG_02"];
//Shotguns
a3e_arr_PrisonBackpackWeapons pushback ["sgun_HunterShotgun_01_F", "2Rnd_12Gauge_Pellets"];
a3e_arr_PrisonBackpackWeapons pushback ["sgun_HunterShotgun_01_F", "2Rnd_12Gauge_Pellets"];
a3e_arr_PrisonBackpackWeapons pushback ["sgun_HunterShotgun_01_F", "2Rnd_12Gauge_Pellets"];
a3e_arr_PrisonBackpackWeapons pushback ["sgun_HunterShotgun_01_F", "2Rnd_12Gauge_Pellets"];

// Random array. Civilian vehicle classes for ambient traffic.
a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses = [
	"C_Hatchback_01_F"
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_sport_F"
	,"C_Offroad_01_F"
	,"C_Offroad_01_F"
	,"C_Quadbike_01_F"
	,"C_Quadbike_01_F"
	,"C_Quadbike_01_F"
	,"C_SUV_01_F"
	,"C_SUV_01_F"
	,"C_Van_01_transport_F"
	,"C_Van_01_transport_F"
	,"C_Truck_02_covered_F"
	,"C_Truck_02_covered_F"
	,"C_Truck_02_transport_F"
	,"C_Truck_02_transport_F"
	//Supply Trucks
	,"C_Van_01_fuel_F"
	,"C_Van_01_box_F"
	,"C_Offroad_01_repair_F"
	,"C_Truck_02_fuel_F"
	,"C_Truck_02_box_F"
	//Western Sahara
	,"C_IDAP_Offroad_lxWS"
	,"C_IDAP_Truck_02_cargo_lxWS"
	,"C_IDAP_Truck_02_flatbed_lxWS"
	,"C_IDAP_Truck_02_box_lxWS"
	,"C_Offroad_lxWS"
	,"C_Offroad_lxWS"
	,"C_Offroad_lxWS"
	,"C_Offroad_lxWS"
	,"C_Offroad_lxWS"
	,"C_Offroad_lxWS"
	,"C_Truck_02_cargo_lxWS"
	,"C_Truck_02_flatbed_lxWS"
	,"C_Truck_02_racing_lxWS"];
	if(A3E_Param_UseDLCApex==1) then {
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_02_unarmed_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_02_unarmed_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_02_unarmed_F";
	};
	if(A3E_Param_UseDLCLaws==1) then {
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_medevac_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_vehicle_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_service_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_transport_F";
	};
	
// Random arrays. Enemy vehicle classes for ambient traffic.
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
switch (_enemyFrequency) do {
    case 1: {//Few (1-3)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		//Unarmed Cars/UAVs 2 sets
		"O_SFIA_Offroad_lxWS"  //1
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Truck_02_cargo_lxWS"
		,"O_SFIA_Truck_02_flatbed_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Offroad_lxWS"  //2
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Truck_02_cargo_lxWS"
		,"O_SFIA_Truck_02_flatbed_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		//Supply Trucks  2 sets
	    ,"O_SFIA_Truck_02_Ammo_lxWS"	//1
		,"O_SFIA_Truck_02_fuel_lxWS"
		,"O_SFIA_Truck_02_box_lxWS"	//repair
		,"O_SFIA_Truck_02_Ammo_lxWS"	//2
		,"O_SFIA_Truck_02_fuel_lxWS"
		,"O_SFIA_Truck_02_box_lxWS"	//repair
		//Armed cars  1 set
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		//Heavily Armed APCs or AA  1 set
		,"O_SFIA_APC_Tracked_02_AA_lxWS"
		,"O_SFIA_Truck_02_aa_lxWS"
		,"O_SFIA_APC_Tracked_02_cannon_lxWS"
		//Artillery  1 set
		,"O_SFIA_Truck_02_MRL_lxWS"
		//Tanks  1 set
		,"O_SFIA_MBT_02_cannon_lxWS"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		//Unarmed Cars/UAVs  1 set
		"I_Tura_Offroad_armor_lxWS"  //1
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		//Armed Cars  1 set
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"];
    };
    case 2: {//Some (4-6)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		//Unarmed Cars/UAVs 2 sets
		"O_SFIA_Offroad_lxWS"  //1
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Truck_02_cargo_lxWS"
		,"O_SFIA_Truck_02_flatbed_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Offroad_lxWS"  //2
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Truck_02_cargo_lxWS"
		,"O_SFIA_Truck_02_flatbed_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		//Supply Trucks  2 sets
	    ,"O_SFIA_Truck_02_Ammo_lxWS"	//1
		,"O_SFIA_Truck_02_fuel_lxWS"
		,"O_SFIA_Truck_02_box_lxWS"	//repair
		,"O_SFIA_Truck_02_Ammo_lxWS"	//2
		,"O_SFIA_Truck_02_fuel_lxWS"
		,"O_SFIA_Truck_02_box_lxWS"	//repair
		//Armed cars  1 set
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		//Heavily Armed APCs or AA  2 sets
		,"O_SFIA_APC_Tracked_02_AA_lxWS"	//1
		,"O_SFIA_Truck_02_aa_lxWS"
		,"O_SFIA_APC_Tracked_02_cannon_lxWS"
		,"O_SFIA_APC_Tracked_02_AA_lxWS"	//2
		,"O_SFIA_Truck_02_aa_lxWS"
		,"O_SFIA_APC_Tracked_02_cannon_lxWS"
		//Artillery
		,"O_SFIA_Truck_02_MRL_lxWS"
		,"O_SFIA_Truck_02_MRL_lxWS"
		//Tanks
		,"O_SFIA_MBT_02_cannon_lxWS"
		,"O_SFIA_MBT_02_cannon_lxWS"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		//Unarmed Cars/UAVs  1 set
		"I_Tura_Offroad_armor_lxWS"  //1
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		//Armed Cars  1 set
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"];
    };
    default {//A lot (7-8)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		//Unarmed Cars/UAVs 2 sets
		"O_SFIA_Offroad_lxWS"  //1
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Truck_02_cargo_lxWS"
		,"O_SFIA_Truck_02_flatbed_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Offroad_lxWS"  //2
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Truck_02_cargo_lxWS"
		,"O_SFIA_Truck_02_flatbed_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		//Supply Trucks  2 sets
	    ,"O_SFIA_Truck_02_Ammo_lxWS"	//1
		,"O_SFIA_Truck_02_fuel_lxWS"
		,"O_SFIA_Truck_02_box_lxWS"	//repair
		,"O_SFIA_Truck_02_Ammo_lxWS"	//2
		,"O_SFIA_Truck_02_fuel_lxWS"
		,"O_SFIA_Truck_02_box_lxWS"	//repair
		//Armed cars  1 set
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		//Heavily Armed APCs or AA  2 sets
		,"O_SFIA_APC_Tracked_02_AA_lxWS"	//1
		,"O_SFIA_Truck_02_aa_lxWS"
		,"O_SFIA_APC_Tracked_02_cannon_lxWS"
		,"O_SFIA_APC_Tracked_02_AA_lxWS"	//2
		,"O_SFIA_Truck_02_aa_lxWS"
		,"O_SFIA_APC_Tracked_02_cannon_lxWS"
		//Artillery
		,"O_SFIA_Truck_02_MRL_lxWS"
		,"O_SFIA_Truck_02_MRL_lxWS"
		//Tanks
		,"O_SFIA_MBT_02_cannon_lxWS"
		,"O_SFIA_MBT_02_cannon_lxWS"
		,"O_SFIA_MBT_02_cannon_lxWS"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		//Unarmed Cars/UAVs  1 set
		"I_Tura_Offroad_armor_lxWS"  //1
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		,"I_Tura_Offroad_armor_lxWS"
		//Armed Cars  1 set
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_AT_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"
		,"I_Tura_Offroad_armor_armed_lxWS"];
    };
};


// Random array. General infantry types. E.g. village patrols, ambient infantry, etc. (for ammo depot guards and communication center guards see further down in this file at fn_InitGuardedLocations)
a3e_arr_Escape_InfantryTypes = [
	"O_SFIA_repair_lxWS"
	,"O_SFIA_repair_lxWS"
	,"O_SFIA_medic_lxWS"
	,"O_SFIA_medic_lxWS"
	,"O_SFIA_medic_lxWS"
	,"O_SFIA_soldier_aa_lxWS"
	,"O_SFIA_soldier_aa_lxWS"
	,"O_SFIA_Soldier_AR_lxWS"
	,"O_SFIA_Soldier_AR_lxWS"
	,"O_SFIA_Soldier_AR_lxWS"
	,"O_SFIA_soldier_at_lxWS"
	,"O_SFIA_soldier_at_lxWS"
	,"O_SFIA_exp_lxWS"
	,"O_SFIA_exp_lxWS"
	,"O_SFIA_soldier_lxWS"
	,"O_SFIA_soldier_lxWS"
	,"O_SFIA_soldier_lxWS"
	,"O_SFIA_soldier_lxWS"
	,"O_SFIA_Soldier_universal_lxWS"
	,"O_SFIA_Soldier_universal_lxWS"
	,"O_SFIA_Soldier_GL_lxWS"
	,"O_SFIA_Soldier_GL_lxWS"
	,"O_SFIA_Soldier_GL_lxWS"
	,"O_SFIA_sharpshooter_lxWS"
	,"O_SFIA_sharpshooter_lxWS"
	,"O_SFIA_Soldier_AAA_lxWS"
	,"O_SFIA_Soldier_AAT_lxWS"
	,"O_SFIA_officer_lxWS"
	,"O_SFIA_Soldier_TL_lxWS"];
a3e_arr_Escape_InfantryTypes_Ind = [
	"I_SFIA_defector_lxWS"
	,"I_SFIA_deserter_lxWS"
	,"I_SFIA_enforcer_lxWS"
	,"I_SFIA_hireling_lxWS"
	,"I_SFIA_scout_lxWS"
	,"I_SFIA_medic2_lxWS"
	,"I_SFIA_thug_lxWS"
	,"I_SFIA_watcher_lxWS"];
a3e_arr_recon_InfantryTypes = [
	"O_SFIA_Soldier_TL_lxWS"
	,"O_SFIA_sharpshooter_lxWS"
	,"O_SFIA_exp_lxWS"];
a3e_arr_recon_I_InfantryTypes = [
	"I_SFIA_defector_lxWS"
	,"I_SFIA_deserter_lxWS"
	,"I_SFIA_Said_lxWS"
	,"I_PMC_Story_Gustavo_lxWS"];


// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
a3e_arr_Escape_RoadBlock_MannedVehicleTypes = [
	"O_SFIA_Offroad_armed_lxWS"
	,"O_SFIA_Offroad_armed_lxWS"
	,"O_SFIA_Offroad_AT_lxWS"
	,"O_SFIA_Truck_02_aa_lxWS"];
	
a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind = [
	"I_Tura_Offroad_armor_armed_lxWS"
	,"I_Tura_Offroad_armor_armed_lxWS"
	,"I_Tura_Offroad_armor_AT_lxWS"];

// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
a3e_arr_Escape_ReinforcementTruck_vehicleClasses = [
	"O_SFIA_Truck_02_covered_lxWS"
	,"O_SFIA_Truck_02_transport_lxWS"];
a3e_arr_Escape_ReinforcementTruck_vehicleClasses_Ind = [
	"I_Tura_Offroad_armor_lxWS"];


// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses = [
	"O_SFIA_Offroad_armed_lxWS"
	,"O_SFIA_Offroad_AT_lxWS"
	,"O_SFIA_APC_Tracked_02_cannon_lxWS"];


// A communication center is guarded by vehicles depending on variable _enemyFrequency. 1 = a random light armor. 2 = a random heavy armor. 3 = a random 
// light *and* a random heavy armor.

// Random array. Light armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_lightArmorClasses = [
	"O_SFIA_Truck_02_aa_lxWS"
	,"O_SFIA_APC_Tracked_02_cannon_lxWS"
	,"O_SFIA_APC_Tracked_02_AA_lxWS"];
// Random array. Heavy armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_heavyArmorClasses = [
	"O_SFIA_MBT_02_cannon_lxWS"];

// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
a3e_arr_ComCenStaticWeapons = [
	"O_SFIA_HMG_02_high_lxWS"];
// A communication center have two parked and empty vehicles of the following possible types.
a3e_arr_ComCenParkedVehicles = [
		"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Offroad_lxWS"
		,"O_SFIA_Truck_02_cargo_lxWS"
		,"O_SFIA_Truck_02_flatbed_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_transport_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		,"O_SFIA_Truck_02_covered_lxWS"
		//Supply Trucks
	    ,"O_SFIA_Truck_02_Ammo_lxWS"
		,"O_SFIA_Truck_02_fuel_lxWS"
		,"O_SFIA_Truck_02_box_lxWS"
		//Armed Cars
		,"O_SFIA_Offroad_armed_lxWS"
		,"O_SFIA_Offroad_AT_lxWS"
		//MRAPS
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_hmg_F"];

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types may be used.
a3e_arr_Escape_EnemyCivilianCarTypes = [
	"C_Hatchback_01_F"
	,"C_Offroad_lxWS"
	,"C_Offroad_lxWS"
	,"C_Offroad_lxWS"
	,"C_SUV_01_F"
	,"C_Truck_02_covered_F"];
	if(A3E_Param_UseDLCApex==1) then {
		a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Offroad_02_unarmed_F";
		a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Offroad_02_unarmed_F";
	};
	if(A3E_Param_UseDLCLaws==1) then {
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_medevac_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_vehicle_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_transport_F";
	};

// Vehicles, weapons and ammo at ammo depots

// Random array. An ammo depot contains one static weapon of the following types:
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses = [
	"O_SFIA_HMG_02_lxWS"
	,"O_SFIA_HMG_02_high_lxWS"
	,"O_SFIA_HMG_02_high_lxWS"
	,"O_SFIA_ZU23_lxWS"];

// An ammo depot have one parked and empty vehicle of the following possible types.
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses = a3e_arr_ComCenParkedVehicles;


//Random array. Types of helicopters to spawn
a3e_arr_O_attack_heli = [
	"O_SFIA_Heli_Attack_02_dynamicLoadout_lxWS"];
a3e_arr_O_transport_heli = [
	"I_Heli_light_03_unarmed_F"];
a3e_arr_O_pilots = [
	"O_SFIA_pilot_lxWS"];
a3e_arr_I_transport_heli = [
	"I_C_Heli_Light_01_civil_F"];
a3e_arr_I_pilots = [
	"I_PMC_Story_Gustavo_lxWS"];


// The following arrays define weapons and ammo contained at the ammo depots
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.

// Weapons and ammo in the basic weapons box
a3e_arr_AmmoDepotBasicWeapons = [];
// CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["LMG_03_F", 20, 1, 3, ["200Rnd_556x45_Box_Tracer_Red_F"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_SKS_TAN_F", 20, 1, 3, ["SMA_30Rnd_762x39_7n23_AP_Red","SMA_30Rnd_762x39_SKS_FMJ_Red"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_07_hex_F", 20, 1, 3, ["20Rnd_650x39_Cased_Mag_F"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_HK417_16in", 20, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_04_Tan_F", 20, 1, 3, ["10Rnd_127x54_Mag"], 12];
// non-CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["sma_minimi_mk3_762tlb_des", 20, 1, 3, ["SMA_150Rnd_762_M80A1_Tracer"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_SPAR_02_snd_F", 30, 1, 3, ["150Rnd_556x45_Drum_Mag_Tracer_F"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_ARX_hex_F", 20, 1, 3, ["30Rnd_65x39_caseless_green_mag_Tracer","10Rnd_50BW_Mag_F"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_SPAR_03_snd_F", 20, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_05_tan_f", 20, 1, 3, ["10Rnd_93x64_DMR_05_Mag"], 12];

// Weapons and ammo in the special weapons box
a3e_arr_AmmoDepotSpecialWeapons = [];
// CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["LMG_Zafir_F", 20, 1, 3, ["150Rnd_762x54_Box_Tracer"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["MMG_01_tan_F", 20, 1, 3, ["150Rnd_93x64_Mag"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_EBR_F", 20, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_06_camo_F", 20, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_GM6_camo_F", 30, 1, 3, ["5Rnd_127x108_Mag"], 15];
// non-CAST weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["LMG_Mk200_F", 20, 1, 3, ["200Rnd_65x39_cased_Box_Tracer"], 6];
a3e_arr_AmmoDepotSpecialWeapons pushback ["MMG_02_sand_F", 20, 1, 3, ["130Rnd_338_Mag"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Mk17_16", 30, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_03_tan_F", 20, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_02_sniper_F", 20, 1, 3, ["10Rnd_338_Mag"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_LRR_camo_F", 20, 1, 3, ["7Rnd_408_Mag"], 14];

// Weapons and ammo in the launchers box
a3e_arr_AmmoDepotLaunchers = [];
a3e_arr_AmmoDepotLaunchers pushback ["launch_RPG32_F", 50, 3, 5, ["RPG32_F", "RPG32_HE_F"], 6];
a3e_arr_AmmoDepotLaunchers pushback ["launch_O_Titan_F", 50, 1, 1, ["Titan_AA"], 6];
a3e_arr_AmmoDepotLaunchers pushback ["launch_O_Titan_short_F", 50, 1, 1, ["Titan_AP", "Titan_AT"], 6];
a3e_arr_AmmoDepotLaunchers pushback ["launch_O_Vorona_brown_F", 50, 1, 1, ["Vorona_HEAT"], 6];
a3e_arr_AmmoDepotLaunchers pushback ["launch_MRAWS_sand_rail_F", 50, 1, 1, ["MRAWS_HEAT_F"], 6];
a3e_arr_AmmoDepotLaunchers pushback ["launch_MRAWS_sand_F", 50, 1, 1, ["MRAWS_HEAT_F", "MRAWS_HE_F"], 6];

// Weapons and ammo in the ordnance box
a3e_arr_AmmoDepotOrdnance = [];
// General weapons
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["ClaymoreDirectionalMine_Remote_Mag", "SLAMDirectionalMine_Wire_Mag", "ATMine_Range_Mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["Laserbatteries"], 5];

// Weapons and ammo in the vehicle box (the big one)
// Some high volumes (mostly for immersion)
a3e_arr_AmmoDepotVehicle = [];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["HandGrenade", "MiniGrenade"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["SmokeShell", "SmokeShellYellow", "SmokeShellRed", "SmokeShellGreen", "SmokeShellPurple", "SmokeShellBlue", "SmokeShellOrange"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeOrange_Grenade_shell", "1Rnd_SmokePurple_Grenade_shell", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeYellow_Grenade_shell"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["3Rnd_Smoke_Grenade_shell", "3Rnd_SmokeBlue_Grenade_shell", "3Rnd_SmokeGreen_Grenade_shell", "3Rnd_SmokeOrange_Grenade_shell", "3Rnd_SmokePurple_Grenade_shell", "3Rnd_SmokeRed_Grenade_shell", "3Rnd_SmokeYellow_Grenade_shell"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["FlareWhite_F", "FlareGreen_F", "FlareRed_F", "FlareYellow_F"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["UGL_FlareWhite_F", "UGL_FlareGreen_F", "UGL_FlareRed_F", "UGL_FlareYellow_F", "UGL_FlareCIR_F"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["3Rnd_UGL_FlareWhite_F", "3Rnd_UGL_FlareGreen_F", "3Rnd_UGL_FlareRed_F", "3Rnd_UGL_FlareYellow_F", "3Rnd_UGL_FlareCIR_F"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["1Rnd_HE_Grenade_shell", "3Rnd_HE_Grenade_shell"], 5];
a3e_arr_AmmoDepotVehicleItems = [];
a3e_arr_AmmoDepotVehicleItems pushback ["ToolKit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["Medikit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["FirstAidKit", 100, 10, 50, [], 0];
a3e_arr_AmmoDepotVehicleBackpacks = ["B_Bergen_mcamo_F","B_Bergen_hex_F"];
// Items

// Index 0: Item classname.
// Index 1: Item's probability of presence (in percent, 0-100)..
// Index 2: Minimum amount.
// Index 3: Maximum amount.

a3e_arr_AmmoDepotItems = [];
a3e_arr_AmmoDepotItems pushback ["Laserdesignator", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["NVGoggles", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["Binocular", 50, 2, 3, [], 0];
a3e_arr_AmmoDepotItems pushback ["Rangefinder", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemCompass", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["ItemGPS", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["acc_flashlight", 20, 1, 5];
a3e_arr_AmmoDepotItems pushback ["acc_pointer_IR", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_m_snd_F", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_H_snd_F", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_93mmg_tan", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_H_MG", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_65_TI_hex_F", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_acp", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_B", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_H", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_H_MG", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_L", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_M", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_B_snd_F", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_338_sand", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["bnae_suppressor_covdrt_virtual", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SMA_supptan_762", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_supp2T_556", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_supp2btan_556", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_AAC_762_sdn6_d", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["sma_gemtech_one_blk", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["sma_gemtech_one_wdl", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SMA_Silencer_556_Bronze", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_supp2smaT_556", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_Arco", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_Hamr", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_MRCO", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_ERCO_snd_F", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_SOS", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_DMS", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_LRPS", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_AMS", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_AMS_snd", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_KHS_blk", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_KHS_tan", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["sma_gemtech_one_des", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_ELCAN_SPECTER_TAN_ARDRDS", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_ELCAN_SPECTER_TAN_ARDRDS_4z", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["sma_spitfire_03_rds_black", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["sma_spitfire_03_rds_low_ard_black", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["sma_spitfire_03_rds_low_black", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_Yorris", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_MRD", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bnae_scope_snd_virtual", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bnae_truglo_snd_virtual", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bnae_holder_virtual", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_tws", 10, 1, 1];
a3e_arr_AmmoDepotItems pushback ["optic_tws_mg", 10, 1, 1];
a3e_arr_AmmoDepotItems pushback ["optic_Nightstalker", 10, 1, 1];
a3e_arr_AmmoDepotItems pushback ["bipod_01_F_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_02_F_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_03_F_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_01_F_mtp", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_02_F_hex", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_03_F_oli", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["H_Bandanna_sand", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["H_Booniehat_tan", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["O_NVGoggles_hex_F", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["NVGogglesB_gry_F", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemGPS", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["H_Hat_tan", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_RAILGUARD_TAN_HK", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["H_Cap_marshal", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_FLASHHIDER2", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_supp1TT_556", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_supp1tan_556", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_rotex_tan", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["H_Hat_Safari_sand_F", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["H_ShemagOpen_tan", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["H_ShemagOpen_khk", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["H_StrawHat", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["SMA_SFFL_TAN", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["I_UavTerminal", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["C_UavTerminal", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["O_UavTerminal", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["B_UavTerminal", 20, 1, 2];


// Weapons that may show up in civilian cars

// Index 0: Weapon classname.
// Index 1: Magazine classname.
// Index 2: Number of magazines.
a3e_arr_CivilianCarWeapons = [];
a3e_arr_CivilianCarWeapons pushback ["hgun_P07_F", "16Rnd_9x21_Mag", 5];
a3e_arr_CivilianCarWeapons pushback ["hgun_P07_snds_F", "30Rnd_9x21_Mag", 11];
a3e_arr_CivilianCarWeapons pushback ["hgun_Rook40_snds_F", "30Rnd_9x21_Mag", 9];
a3e_arr_CivilianCarWeapons pushback ["hgun_ACPC2_F", "9Rnd_45ACP_Mag", 12];
a3e_arr_CivilianCarWeapons pushback ["arifle_MXM_Hamr_pointer_F", "30Rnd_65x39_caseless_mag_Tracer", 8];
a3e_arr_CivilianCarWeapons pushback ["arifle_MX_Hamr_pointer_F", "30Rnd_65x39_caseless_mag_Tracer", 6];
a3e_arr_CivilianCarWeapons pushback ["arifle_MXM_SOS_pointer_F", "30Rnd_65x39_caseless_mag_Tracer", 7];
a3e_arr_CivilianCarWeapons pushback ["arifle_Katiba_C_F", "30Rnd_65x39_caseless_green", 5];
a3e_arr_CivilianCarWeapons pushback ["arifle_Mk20_GL_ACO_F", "UGL_FlareWhite_F", 8];
a3e_arr_CivilianCarWeapons pushback ["SMG_01_Holo_F", "30Rnd_45ACP_Mag_SMG_01_Tracer_Green", 5];
a3e_arr_CivilianCarWeapons pushback ["SMG_02_ACO_F", "30Rnd_9x21_Mag", 12];
a3e_arr_CivilianCarWeapons pushback ["srifle_DMR_06_camo_khs_F", "20Rnd_762x51_Mag", 8];
a3e_arr_CivilianCarWeapons pushback ["launch_RPG32_F", "RPG32_F", 2];
a3e_arr_CivilianCarWeapons pushback ["MineDetector", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["Medikit", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["Toolkit", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["Binocular", objNull, 0];
a3e_arr_CivilianCarWeapons pushback [objNull, "SatchelCharge_Remote_Mag", 2];
a3e_arr_CivilianCarWeapons pushback [objNull, "HandGrenade", 5];
a3e_arr_CivilianCarWeapons pushback [objNull, "SmokeShell", 5];
a3e_arr_CivilianCarWeapons pushback ["srifle_DMR_06_camo_khs_F", "20Rnd_762x51_Mag", 8];
a3e_arr_CivilianCarWeapons pushback ["launch_RPG32_F", "RPG32_F", 2];
a3e_arr_CivilianCarWeapons pushback ["MineDetector", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["Binocular", objNull, 0];
a3e_arr_CivilianCarWeapons pushback [objNull, "SatchelCharge_Remote_Mag", 2];
a3e_arr_CivilianCarWeapons pushback [objNull, "HandGrenade", 5];
a3e_arr_CivilianCarWeapons pushback [objNull, "SmokeShell", 5];
a3e_arr_CivilianCarWeapons pushback ["optic_Yorris", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["sgun_HunterShotgun_01_F", "2Rnd_12Gauge_Pellets", 3];
a3e_arr_CivilianCarWeapons pushback ["sgun_HunterShotgun_01_sawedoff_F", "2Rnd_12Gauge_Pellets", 3];


// Here is a list of scopes, might get randomly added to enemy patrols:
a3e_arr_Scopes = [
	"optic_Aco"
	,"optic_ACO_grn"
	,"optic_Arco_blk_F"
	,"optic_Hamr"
	,"optic_MRCO"
	,"optic_Holosight_arid_F"];
a3e_arr_Scopes_SMG = [
	"optic_Aco_smg"
	,"optic_Holosight_smg"];
a3e_arr_Scopes_Sniper = [
	"optic_SOS"
	,"optic_DMS"
	,"optic_LRPS"
	,"optic_AMS"
	,"optic_AMS_khk"
	,"optic_AMS_snd"
	,"optic_KHS_blk"
	,"optic_KHS_old"
	,"optic_KHS_tan"];
a3e_arr_NightScopes = [
	"optic_NVS"];
a3e_arr_TWSScopes = [
	"optic_Nightstalker"
	,"optic_tws"
	,"optic_tws_mg"];

// Here is a list of bipods, might get randomly added to enemy patrols:
a3e_arr_Bipods = [
	"bipod_01_F_snd"
	,"bipod_01_F_blk"
	,"bipod_02_F_blk"
	,"bipod_02_F_tan"
	,"bipod_02_F_hex"
	,"bipod_03_F_blk"
	,"bipod_02_F_arid"];

//////////////////////////////////////////////////////////////////
// revive/functions/revive/fn_Check_Revive_FAK.sqf and fn_HandleRevive
// additional types of FAKs or Medkits that should work for revives
// arrays have to be global, because check is performed on client
// obviously not needed here, script has fallback for these vanilla baseclasses, but as an example
//////////////////////////////////////////////////////////////////
private _faks = [
	"FirstAidKit"];
missionNamespace setvariable ["a3e_arr_faks",_faks,true];
_medkits = [
	"Medikit"];
missionNamespace setvariable ["a3e_arr_medkits",_medkits,true];

//////////////////////////////////////////////////////////////////
// SelectExtractionZone.sqf
// Which type of extractions are supported/preferred by this unitclasses version?
// Only if supported by terrain, so if corresponding markers are placed
// Basic fallback is always Heli extraction
// Available types: a3e_arr_extractiontypes = ["air","land","sea"];
//////////////////////////////////////////////////////////////////
a3e_arr_extractiontypes = [
	"air",
	"land",
	"sea"];

//////////////////////////////////////////////////////////////////
// RunExtraction.sqf
// Helicopters that come to pick you up
// always the fallback option, use BIS units if mod has no helicopters
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_chopper = [
	"B_D_Heli_Transport_01_lxWS"
	,"B_D_Heli_Light_01_lxWS"];
a3e_arr_extraction_chopper_escort = [
	"B_D_Heli_Attack_01_dynamicLoadout_lxWS"];

//////////////////////////////////////////////////////////////////
// RunExtractionBoat.sqf
// Boats that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_boat = [
	"B_Boat_Armed_01_minigun_F"];
a3e_arr_extraction_boat_escort = [
	"B_Boat_Armed_01_minigun_F"];

//////////////////////////////////////////////////////////////////
// RunExtractionLand.sqf
// Boats that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_car = [
	"B_D_Truck_01_transport_lxWS"	//17
	,"B_D_Truck_01_covered_lxWS"	//17
	,"B_D_APC_Tracked_01_rcws_lxWS"	//8
	,"B_D_APC_Wheeled_01_cannon_lxWS"	//8
	,"B_D_APC_Wheeled_01_command_lxWS"];	//8
a3e_arr_extraction_car_escort = [
	"B_D_APC_Tracked_01_aa_lxWS",
	"B_D_APC_Wheeled_01_atgm_lxWS",
	"B_D_MBT_01_cannon_lxWS",
	"B_D_MBT_01_TUSK_lxWS"];

//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf and CreateSearchDrone.sqf
// Classnames of drones
//////////////////////////////////////////////////////////////////
a3e_arr_searchdrone = [
	"O_UAV_01_F"
	,"O_UAV_02_CAS_F"
	,"O_UAV_02_lxWS"
	,"O_UAV_02_lxWS"];

//////////////////////////////////////////////////////////////////
// CreateSearchChopper.sqf
// first chopper that's called when you escape
// Two arrays for "Easy" and "Hard" parameter, both used on stadard setting
//////////////////////////////////////////////////////////////////
a3e_arr_searchChopperEasy = [
	"I_Heli_light_03_unarmed_F"];
a3e_arr_searchChopperHard = [
	"I_C_Heli_Light_01_civil_F"];
a3e_arr_searchChopper_pilot = [
	"O_SFIA_pilot_lxWS"];
a3e_arr_searchChopper_crew = [
	"O_SFIA_pilot_lxWS"];

if(A3E_Param_SearchChopper==0) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy + a3e_arr_searchChopperHard;
};
if(A3E_Param_SearchChopper==1) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy;
};
if(A3E_Param_SearchChopper==2) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperHard;
};

//////////////////////////////////////////////////////////////////
// fn_AmbientInfantry
// only INS is used
//is this even used?
//////////////////////////////////////////////////////////////////
a3e_arr_AmbientInfantry_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_AmbientInfantry_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_InitGuardedLocations
// Units spawned to guard ammo camps and com centers
// Only INS used
//////////////////////////////////////////////////////////////////
a3e_arr_InitGuardedLocations_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_InitGuardedLocations_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_roadblocks
// units spawned on roadblocks
// Only INS used
// vehicle arrays not used, uses a3e_arr_Escape_RoadBlock_MannedVehicleTypes and a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind instead
//////////////////////////////////////////////////////////////////
a3e_arr_roadblocks_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_roadblocks_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

a3e_arr_roadblocks_Veh_INS = a3e_arr_Escape_RoadBlock_MannedVehicleTypes;
a3e_arr_roadblocks_Veh_GUE = a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_PopulateAquaticPatrol
// boats that are spawned
//////////////////////////////////////////////////////////////////
a3e_arr_AquaticPatrols = [
	"O_Boat_Armed_01_hmg_F"
	,"I_Boat_Armed_01_minigun_F"];

//////////////////////////////////////////////////////////////////
// fn_AmmoDepot
// What kind of weapon boxes are spawned when the parameter "additional weapons" is activated
// use to add boxes from mods to the ammo depots
//////////////////////////////////////////////////////////////////
a3e_additional_weapon_box_1 = "SFIA_Box_Wps_lxWS";
a3e_additional_weapon_box_2 = "ION_Box_Wps_lxWS";

//////////////////////////////////////////////////////////////////
// fn_MortarSite
// mortar spawned in the mortar camps
//////////////////////////////////////////////////////////////////
a3e_arr_MortarSite = [
	"O_SFIA_Mortar_lxWS"];

//////////////////////////////////////////////////////////////////
// fn_CallCAS.sqf
// Classnames of planes for the CAS module
//////////////////////////////////////////////////////////////////
a3e_arr_CASplane = [
	"O_Plane_CAS_02_F"
	,"I_Plane_Fighter_03_CAS_F"
	,"O_Plane_Fighter_02_Cluster_F"
	,"O_Plane_CAS_02_Cluster_F"
	,"I_Plane_Fighter_04_Cluster_F"
	,"I_Plane_Fighter_03_Cluster_F"];

//////////////////////////////////////////////////////////////////
// fn_CrashSite
// Random crashsite of west heli with west weapons
//////////////////////////////////////////////////////////////////
// The following arrays define weapons and ammo contained at crash sites
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.
a3e_arr_CrashSiteWrecks = [
	"Land_UWreck_MV22_F"
	,"Land_Wreck_Plane_Transport_01_F"
	,"Land_Wreck_Heli_Attack_01_F"];
a3e_arr_CrashSiteCrew = [
	"B_D_Pilot_lxWS"];
a3e_arr_CrashSiteWrecksCar = [
	"Land_Wreck_Hunter_F"
	,"Land_Wreck_Slammer_F"
	,"Land_Wreck_AFV_Wheeled_01_F"];
a3e_arr_CrashSiteCrewCar = [
	"B_D_crew_lxWS"];
// Weapons and ammo in crash site box
a3e_arr_CrashSiteWeapons = [];
a3e_arr_CrashSiteWeapons pushback ["launch_NLAW_F", 10, 1, 2, ["NLAW_F"], 3];
a3e_arr_CrashSiteWeapons pushback ["launch_O_Vorona_brown_F", 10, 1, 1, ["Vorona_HEAT", "Vorona_HE"], 6];
a3e_arr_CrashSiteWeapons pushback ["launch_MRAWS_sand_rail_F", 10, 1, 1, ["MRAWS_HEAT_F", "MRAWS_HE_F"], 6];
a3e_arr_CrashSiteWeapons pushback ["launch_MRAWS_sand_F", 10, 1, 1, ["MRAWS_HEAT_F", "MRAWS_HE_F"], 6];
a3e_arr_CrashSiteWeapons pushback ["srifle_EBR_F", 10, 1, 2, ["20Rnd_762x51_Mag"], 8];
a3e_arr_CrashSiteWeapons pushback ["srifle_LRR_F", 10, 1, 2, ["7Rnd_408_Mag"], 8];
a3e_arr_CrashSiteWeapons pushback ["arifle_MX_SW_F", 20, 1, 2, ["100Rnd_65x39_caseless_mag_Tracer"], 6];
a3e_arr_CrashSiteWeapons pushback ["SMG_01_Holo_pointer_snds_F", 10, 1, 2, ["30Rnd_45ACP_Mag_SMG_01"], 8];
a3e_arr_CrashSiteWeapons pushback ["SMA_SKS_TAN_F", 30, 1, 2, ["SMA_30Rnd_762x39_7n23_AP_Red","SMA_30Rnd_762x39_SKS_FMJ_Red"], 8];
a3e_arr_CrashSiteWeapons pushback ["SMA_HK417_16in", 30, 1, 2, ["SMA_20Rnd_762x51mm_M80A1_EPR_Tracer","SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer","SMA_20Rnd_762x51mm_Lapua_FMJ_Subsonic_Tracer"], 8];
a3e_arr_CrashSiteWeapons pushback ["sma_minimi_mk3_762tlb_des", 30, 1, 2, ["SMA_150Rnd_762_M80A1_Tracer"], 8];
a3e_arr_CrashSiteWeapons pushback ["SMA_Mk17_16", 30, 1, 2, ["SMA_20Rnd_762x51mm_M80A1_EPR_Tracer","SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer","SMA_20Rnd_762x51mm_Lapua_FMJ_Subsonic_Tracer"], 8];
// Attachments and other items in crash site box
a3e_arr_CrashSiteItems = [];
a3e_arr_CrashSiteItems pushback ["optic_Hamr", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["optic_SOS", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["muzzle_snds_H", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["sma_gemtech_one_blk", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["sma_gemtech_one_wdl", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SMA_ELCAN_SPECTER_TAN_ARDRDS", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SMA_ELCAN_SPECTER_TAN_ARDRDS_4z", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["optic_ERCO_snd_F", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["ItemGPS", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["H_Hat_tan", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["optic_LRPS", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["Medikit", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["NVGoggles", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["H_Hat_Safari_sand_F", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["H_ShemagOpen_khk", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["H_ShemagOpen_tan", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["muzzle_snds_338_sand", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["muzzle_snds_m_snd_F", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["muzzle_snds_H_snd_F", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["muzzle_snds_93mmg_tan", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["muzzle_snds_H_MG", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["muzzle_snds_65_TI_hex_F", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["H_StrawHat", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SMA_SFFL_TAN", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["I_UavTerminal", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["C_UavTerminal", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["O_UavTerminal", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["B_UavTerminal", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["sma_spitfire_03_rds_black", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["sma_spitfire_03_rds_low_ard_black", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["sma_spitfire_03_rds_low_black", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["muzzle_snds_B_snd_F", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SMA_rotex_tan", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SMA_supp1tan_556", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SMA_supp1TT_556", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SMA_FLASHHIDER2", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["H_Cap_marshal", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["ItemMap", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SMA_RAILGUARD_TAN_HK", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["optic_DMS", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["O_NVGoggles_hex_F", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["H_Booniehat_tan", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["H_Bandanna_sand", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["optic_Arco", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["optic_AMS_snd", 20, 1, 3];