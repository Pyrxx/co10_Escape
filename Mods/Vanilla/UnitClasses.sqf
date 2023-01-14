/*
 * Description: This file contains the vehicle types and unit types for the units spawned in the mission, and the weapons and magazines found in ammo boxes/cars.
 * "Random array" (used below) means that array will be used to spawn units, and that chance is 1/n that each element will be spawned on each spawn. The array can contain 
 * many elements of the same type, so the example array ["Offroad_DSHKM_INS", "Pickup_PK_INS", "Pickup_PK_INS"] will spawn an Offroad with 1/3 probability, and a 
 * Pickup with 2/3 probability.
 */

private ["_enemyFrequency"];

_enemyFrequency = _this select 0;

A3E_VAR_Side_Blufor = west;
A3E_VAR_Side_Opfor = east;
A3E_VAR_Side_Ind = resistance;

A3E_VAR_Flag_Opfor = "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
A3E_VAR_Flag_Ind = "\A3\Data_F\Flags\Flag_AAF_CO.paa";
 
A3E_VAR_Side_Blufor_Str = format["%1",A3E_VAR_Side_Blufor];
A3E_VAR_Side_Opfor_Str = format["%1",A3E_VAR_Side_Opfor];
A3E_VAR_Side_Ind_Str = format["%1",A3E_VAR_Side_Ind];

// Random array. Start position guard types around the prison
a3e_arr_Escape_StartPositionGuardTypes = [
	"I_Soldier_AR_F",
	"I_Soldier_GL_F",
	"I_Soldier_F",
	"I_Soldier_lite_F"];

// Prison backpack secondary weapon (and corresponding magazine type).
a3e_arr_PrisonBackpackWeapons = [];
//Pistols
a3e_arr_PrisonBackpackWeapons pushback ["hgun_ACPC2_snds_F","9Rnd_45ACP_Mag"];
a3e_arr_PrisonBackpackWeapons pushback ["hgun_Rook40_snds_F","30Rnd_9x21_Mag"];
a3e_arr_PrisonBackpackWeapons pushback ["hgun_Pistol_heavy_02_Yorris_F","6Rnd_45ACP_Cylinder"];
//SMGs
a3e_arr_PrisonBackpackWeapons pushback ["hgun_PDW2000_F","30Rnd_9x21_Mag"];
a3e_arr_PrisonBackpackWeapons pushback ["SMG_05_F", "30Rnd_9x21_Mag_SMG_02"];
a3e_arr_PrisonBackpackWeapons pushback ["SMG_03_TR_black", "50Rnd_570x28_SMG_03"];
a3e_arr_PrisonBackpackWeapons pushback ["SMG_01_F", "30Rnd_45ACP_Mag_SMG_01"];
//Shotguns
a3e_arr_PrisonBackpackWeapons pushback ["sgun_HunterShotgun_01_F", "2Rnd_12Gauge_Pellets"];
a3e_arr_PrisonBackpackWeapons pushback ["sgun_HunterShotgun_01_F", "2Rnd_12Gauge_Pellets"];
a3e_arr_PrisonBackpackWeapons pushback ["sgun_HunterShotgun_01_F", "2Rnd_12Gauge_Pellets"];
a3e_arr_PrisonBackpackWeapons pushback ["sgun_HunterShotgun_01_F", "2Rnd_12Gauge_Pellets"];

// Random array. Civilian vehicle classes for ambient traffic.
a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses = [
	"C_Hatchback_01_F"
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_sport_F"
	,"C_Hatchback_01_sport_F"
	,"C_Offroad_01_F"
	,"C_Offroad_01_F"
	,"C_Offroad_01_F"
	,"C_Offroad_01_F"
	,"C_Offroad_01_F"
	,"C_Quadbike_01_F"
	,"C_Quadbike_01_F"
	,"C_Quadbike_01_F"
	,"C_SUV_01_F"
	,"C_SUV_01_F"
	,"C_SUV_01_F"
	,"C_SUV_01_F"
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
	,"C_Truck_02_box_F"];
	if(A3E_Param_UseDLCApex==1) then {
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
		"O_MRAP_02_F"  //1
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Truck_03_device_F"
		,"O_Truck_03_medical_F"
		,"O_Truck_03_transport_F"
		,"O_Truck_03_covered_F"
		,"O_Truck_02_medical_F"
		,"O_Truck_02_transport_F"
		,"O_Truck_02_covered_F"
		,"O_UGV_01_F"
		,"O_MRAP_02_F"  //2
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Truck_03_device_F"
		,"O_Truck_03_medical_F"
		,"O_Truck_03_transport_F"
		,"O_Truck_03_covered_F"
		,"O_Truck_02_medical_F"
		,"O_Truck_02_transport_F"
		,"O_Truck_02_covered_F"
		,"O_UGV_01_F"
		//Supply Trucks  1 set
	    ,"O_Truck_03_ammo_F"
		,"O_Truck_03_fuel_F"
		,"O_Truck_03_repair_F"
		,"O_Truck_02_ammo_F"
		,"O_Truck_02_fuel_F"
		,"O_Truck_02_box_F"
		//Armed UAVs  1 set
		,"O_UGV_01_rcws_F"
		,"O_UGV_01_rcws_F"
		//MRAPS  1 set
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		//Heavily Armed APCs or AA  1 set
		,"O_APC_Wheeled_02_rcws_F"
		,"O_APC_Tracked_02_AA_F"
		,"O_APC_Tracked_02_cannon_F"
		//Artillery  1 set
		,"O_MBT_02_arty_F"
		//Tanks  1 set
		,"O_MBT_02_cannon_F"];
		if(A3E_Param_UseDLCApex==1) then {
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		};
		if(A3E_Param_UseDLCTanks==1) then {
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_04_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_04_command_F";
		};
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		//Unarmed Cars/UAVs  3 sets
		"I_Quadbike_01_F"  //1
		,"I_MRAP_03_F"
		,"I_Truck_02_medical_F"
		,"I_Truck_02_transport_F"
		,"I_Truck_02_covered_F"
		,"I_G_Offroad_01_F"
		,"I_G_Quadbike_01_F"
		,"I_G_Van_01_transport_F"
		,"I_UGV_01_F"
		,"I_Quadbike_01_F"  //2
		,"I_MRAP_03_F"
		,"I_Truck_02_medical_F"
		,"I_Truck_02_transport_F"
		,"I_Truck_02_covered_F"
		,"I_G_Offroad_01_F"
		,"I_G_Quadbike_01_F"
		,"I_G_Van_01_transport_F"
		,"I_UGV_01_F"
		,"I_Quadbike_01_F"  //3
		,"I_MRAP_03_F"
		,"I_Truck_02_medical_F"
		,"I_Truck_02_transport_F"
		,"I_Truck_02_covered_F"
		,"I_G_Offroad_01_F"
		,"I_G_Quadbike_01_F"
		,"I_G_Van_01_transport_F"
		,"I_UGV_01_F"
		//Supply Trucks  1 set
		,"I_Truck_02_ammo_F"
		,"I_Truck_02_fuel_F"
		,"I_Truck_02_box_F"
		,"I_G_Van_01_fuel_F"
		,"I_G_Offroad_01_repair_F"
		//Armed Cars  1 set
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		//Armed UAVs  1 set
		,"I_UGV_01_rcws_F"
		,"I_UGV_01_rcws_F"
		//MRAPS  1 set
		,"I_MRAP_03_gmg_F"
		,"I_MRAP_03_gmg_F"
		,"I_MRAP_03_hmg_F"
		,"I_MRAP_03_hmg_F"
		,"I_MRAP_03_hmg_F"
		,"I_MRAP_03_hmg_F"
		//Heavily Armed APCs or AA  1 set
		,"I_APC_Wheeled_03_cannon_F"
		,"I_APC_tracked_03_cannon_F"
		//Artillery  1 set
		,"I_Truck_02_MRL_F"
		//Tanks  1 set
		,"I_MBT_03_cannon_F"];
		if(A3E_Param_UseDLCTanks==1) then {
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_AA_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_scout_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_cannon_F";
		};
		if(A3E_Param_UseDLCLaws==1) then {
	    a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_transport_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_transport_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_transport_F";
	    a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_vehicle_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_vehicle_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_vehicle_F";
	    };
    };
    case 2: {//Some (4-6)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		//Unarmed Cars/UAVs 2 sets
		"O_MRAP_02_F"  //1
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Truck_03_device_F"
		,"O_Truck_03_medical_F"
		,"O_Truck_03_transport_F"
		,"O_Truck_03_covered_F"
		,"O_Truck_02_medical_F"
		,"O_Truck_02_transport_F"
		,"O_Truck_02_covered_F"
		,"O_UGV_01_F"
		,"O_MRAP_02_F"  //2
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Truck_03_device_F"
		,"O_Truck_03_medical_F"
		,"O_Truck_03_transport_F"
		,"O_Truck_03_covered_F"
		,"O_Truck_02_medical_F"
		,"O_Truck_02_transport_F"
		,"O_Truck_02_covered_F"
		,"O_UGV_01_F"
		//Supply Trucks  1 set
	    ,"O_Truck_03_ammo_F"
		,"O_Truck_03_fuel_F"
		,"O_Truck_03_repair_F"
		,"O_Truck_02_ammo_F"
		,"O_Truck_02_fuel_F"
		,"O_Truck_02_box_F"
		//Armed UAVs  2 sets
		,"O_UGV_01_rcws_F"  //1
		,"O_UGV_01_rcws_F"
		,"O_UGV_01_rcws_F"  //2
		,"O_UGV_01_rcws_F"
		//MRAPS  2 sets
		,"O_MRAP_02_gmg_F"  //1
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_gmg_F"  //2
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		//Heavily Armed APCs or AA  1 set
		,"O_APC_Wheeled_02_rcws_F"
		,"O_APC_Tracked_02_AA_F"
		,"O_APC_Tracked_02_cannon_F"
		//Artillery  1 set
		,"O_MBT_02_arty_F"
		//Tanks  1 set
		,"O_MBT_02_cannon_F"];
		if(A3E_Param_UseDLCApex==1) then {
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		};
		if(A3E_Param_UseDLCTanks==1) then {
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_04_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_04_command_F";
		};
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		//Unarmed Cars/UAVs  3 sets
		"I_Quadbike_01_F"  //1
		,"I_MRAP_03_F"
		,"I_Truck_02_medical_F"
		,"I_Truck_02_transport_F"
		,"I_Truck_02_covered_F"
		,"I_G_Offroad_01_F"
		,"I_G_Quadbike_01_F"
		,"I_G_Van_01_transport_F"
		,"I_UGV_01_F"
		,"I_Quadbike_01_F"  //2
		,"I_MRAP_03_F"
		,"I_Truck_02_medical_F"
		,"I_Truck_02_transport_F"
		,"I_Truck_02_covered_F"
		,"I_G_Offroad_01_F"
		,"I_G_Quadbike_01_F"
		,"I_G_Van_01_transport_F"
		,"I_UGV_01_F"
		,"I_Quadbike_01_F"  //3
		,"I_MRAP_03_F"
		,"I_Truck_02_medical_F"
		,"I_Truck_02_transport_F"
		,"I_Truck_02_covered_F"
		,"I_G_Offroad_01_F"
		,"I_G_Quadbike_01_F"
		,"I_G_Van_01_transport_F"
		,"I_UGV_01_F"
		//Supply Trucks  1 set
		,"I_Truck_02_ammo_F"
		,"I_Truck_02_fuel_F"
		,"I_Truck_02_box_F"
		,"I_G_Van_01_fuel_F"
		,"I_G_Offroad_01_repair_F"
		//Armed Cars  2 sets
		,"I_G_Offroad_01_AT_F"  //1
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_AT_F"  //2
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		//Armed UAVs  2 sets
		,"I_UGV_01_rcws_F"  //1
		,"I_UGV_01_rcws_F"
		,"I_UGV_01_rcws_F"  //2
		,"I_UGV_01_rcws_F"
		//MRAPS  1 set
		,"I_MRAP_03_gmg_F"
		,"I_MRAP_03_gmg_F"
		,"I_MRAP_03_gmg_F"
		,"I_MRAP_03_hmg_F"
		,"I_MRAP_03_hmg_F"
		,"I_MRAP_03_hmg_F"
		//Heavily Armed APCs or AA  1 set
		,"I_APC_Wheeled_03_cannon_F"
		,"I_APC_tracked_03_cannon_F"
		//Artillery  1 set
		,"I_Truck_02_MRL_F"
		//Tanks  1 set
		,"I_MBT_03_cannon_F"];
		if(A3E_Param_UseDLCTanks==1) then {
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_AA_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_scout_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_cannon_F";
		};
		if(A3E_Param_UseDLCLaws==1) then {
	    a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_transport_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_transport_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_transport_F";
	    a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_vehicle_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_vehicle_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_vehicle_F";
	    };
    };
    default {//A lot (7-8)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		//Unarmed Cars/UAVs 2 sets
		"O_MRAP_02_F"  //1
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Truck_03_device_F"
		,"O_Truck_03_medical_F"
		,"O_Truck_03_transport_F"
		,"O_Truck_03_covered_F"
		,"O_Truck_02_medical_F"
		,"O_Truck_02_transport_F"
		,"O_Truck_02_covered_F"
		,"O_UGV_01_F"
		,"O_MRAP_02_F"  //2
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Truck_03_device_F"
		,"O_Truck_03_medical_F"
		,"O_Truck_03_transport_F"
		,"O_Truck_03_covered_F"
		,"O_Truck_02_medical_F"
		,"O_Truck_02_transport_F"
		,"O_Truck_02_covered_F"
		,"O_UGV_01_F"
		//Supply Trucks  1 set
	    ,"O_Truck_03_ammo_F"
		,"O_Truck_03_fuel_F"
		,"O_Truck_03_repair_F"
		,"O_Truck_02_ammo_F"
		,"O_Truck_02_fuel_F"
		,"O_Truck_02_box_F"
		//Armed UAVs  2 sets
		,"O_UGV_01_rcws_F"  //1
		,"O_UGV_01_rcws_F"
		,"O_UGV_01_rcws_F"  //2
		,"O_UGV_01_rcws_F"
		//MRAPS  2 sets
		,"O_MRAP_02_gmg_F"  //1
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_gmg_F"  //2
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		,"O_MRAP_02_hmg_F"
		//Heavily Armed APCs or AA  2 sets
		,"O_APC_Wheeled_02_rcws_F"
		,"O_APC_Tracked_02_AA_F"
		,"O_APC_Tracked_02_cannon_F"
		,"O_APC_Wheeled_02_rcws_F"
		,"O_APC_Tracked_02_AA_F"
		,"O_APC_Tracked_02_cannon_F"
		//Artillery  1 set
		,"O_MBT_02_arty_F"
		//Tanks  2 sets
		,"O_MBT_02_cannon_F"
		,"O_MBT_02_cannon_F"];
		if(A3E_Param_UseDLCApex==1) then {
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_unarmed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_armed_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_LSV_02_AT_F";
		};
		if(A3E_Param_UseDLCTanks==1) then {
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_04_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_04_command_F";
		};
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		//Unarmed Cars/UAVs  3 sets
		"I_Quadbike_01_F"  //1
		,"I_MRAP_03_F"
		,"I_Truck_02_medical_F"
		,"I_Truck_02_transport_F"
		,"I_Truck_02_covered_F"
		,"I_G_Offroad_01_F"
		,"I_G_Quadbike_01_F"
		,"I_G_Van_01_transport_F"
		,"I_UGV_01_F"
		,"I_Quadbike_01_F"  //2
		,"I_MRAP_03_F"
		,"I_Truck_02_medical_F"
		,"I_Truck_02_transport_F"
		,"I_Truck_02_covered_F"
		,"I_G_Offroad_01_F"
		,"I_G_Quadbike_01_F"
		,"I_G_Van_01_transport_F"
		,"I_UGV_01_F"
		,"I_Quadbike_01_F"  //3
		,"I_MRAP_03_F"
		,"I_Truck_02_medical_F"
		,"I_Truck_02_transport_F"
		,"I_Truck_02_covered_F"
		,"I_G_Offroad_01_F"
		,"I_G_Quadbike_01_F"
		,"I_G_Van_01_transport_F"
		,"I_UGV_01_F"
		//Supply Trucks  1 set
		,"I_Truck_02_ammo_F"
		,"I_Truck_02_fuel_F"
		,"I_Truck_02_box_F"
		,"I_G_Van_01_fuel_F"
		,"I_G_Offroad_01_repair_F"
		//Armed Cars  2 sets
		,"I_G_Offroad_01_AT_F"  //1
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_AT_F"  //2
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_AT_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		,"I_G_Offroad_01_armed_F"
		//Armed UAVs  2 sets
		,"I_UGV_01_rcws_F"  //1
		,"I_UGV_01_rcws_F"
		,"I_UGV_01_rcws_F"  //2
		,"I_UGV_01_rcws_F"
		//MRAPS  1 set
		,"I_MRAP_03_gmg_F"
		,"I_MRAP_03_gmg_F"
		,"I_MRAP_03_gmg_F"
		,"I_MRAP_03_hmg_F"
		,"I_MRAP_03_hmg_F"
		,"I_MRAP_03_hmg_F"
		//Heavily Armed APCs or AA  2 sets
		,"I_APC_Wheeled_03_cannon_F"
		,"I_APC_tracked_03_cannon_F"
		,"I_APC_Wheeled_03_cannon_F"
		,"I_APC_tracked_03_cannon_F"
		//Artillery  1 set
		,"I_Truck_02_MRL_F"
		//Tanks  2 sets
		,"I_MBT_03_cannon_F"
		,"I_MBT_03_cannon_F"];
		if(A3E_Param_UseDLCTanks==1) then {
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_AA_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_scout_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_AA_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_AT_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_scout_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND pushback "I_LT_01_cannon_F";
		};
		if(A3E_Param_UseDLCLaws==1) then {
	    a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_transport_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_transport_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_transport_F";
	    a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_vehicle_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_vehicle_F";
		a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "I_G_Van_02_vehicle_F";
	    };
    };
};


// Random array. General infantry types. E.g. village patrols, ambient infantry, etc. (for ammo depot guards and communication center guards see further down in this file at fn_InitGuardedLocations)
a3e_arr_Escape_InfantryTypes = [
	"O_engineer_F"
	,"O_medic_F"
	,"O_medic_F"
	,"O_medic_F"
	,"O_Soldier_A_F"
	,"O_Soldier_A_F"
	,"O_Soldier_A_F"
	,"O_Soldier_AA_F"
	,"O_Soldier_AA_F"
	,"O_Soldier_AR_F"
	,"O_Soldier_AR_F"
	,"O_Soldier_AR_F"
	,"O_Soldier_AT_F"
	,"O_Soldier_AT_F"
	,"O_Soldier_exp_F"
	,"O_soldier_F"
	,"O_soldier_F"
	,"O_soldier_F"
	,"O_soldier_F"
	,"O_soldier_F"
	,"O_Soldier_GL_F"
	,"O_Soldier_GL_F"
	,"O_Soldier_GL_F"
	,"O_Soldier_LAT_F"
	,"O_Soldier_LAT_F"
	,"O_Soldier_lite_F"
	,"O_Soldier_lite_F"
	,"O_Soldier_lite_F"
	,"O_Soldier_M_F"
	,"O_Soldier_M_F"
	,"O_Soldier_repair_F"
	,"O_officer_F"
    ,"O_ghillie_lsh_F"
    ,"O_ghillie_sard_F"
	,"O_soldier_UAV_F"
	,"O_soldier_UAV_F"
	,"O_Soldier_AAR_F"
	,"O_support_AMG_F"
	,"O_support_AMort_F"
	,"O_Soldier_AAA_F"
	,"O_Soldier_AAT_F"
	,"O_support_GMG_F"
	,"O_support_MG_F"
	,"O_support_Mort_F"
	,"O_Soldier_AHAT_F"
	,"O_Soldier_HAT_F"
	,"O_Soldier_SL_F"
	,"O_Soldier_TL_F"];
	if(A3E_Param_UseDLCMarksmen==1) then {
		a3e_arr_Escape_InfantryTypes pushback "O_HeavyGunner_F";
		a3e_arr_Escape_InfantryTypes pushback "O_Pathfinder_F";
		a3e_arr_Escape_InfantryTypes pushback "O_Sharpshooter_F";
	};
	if(A3E_Param_UseDLCLaws==1) then {
		a3e_arr_Escape_InfantryTypes pushback "O_soldier_mine_F";
		a3e_arr_Escape_InfantryTypes pushback "O_soldier_UAV_06_F";
		a3e_arr_Escape_InfantryTypes pushback "O_soldier_UAV_06_medical_F";
	};
a3e_arr_Escape_InfantryTypes_Ind = [
	"I_engineer_F"
	,"I_medic_F"
	,"I_medic_F"
	,"I_medic_F"
	,"I_Soldier_A_F"
	,"I_Soldier_A_F"
	,"I_Soldier_A_F"
	,"I_Soldier_AA_F"
	,"I_Soldier_AA_F"
	,"I_Soldier_AR_F"
	,"I_Soldier_AR_F"
	,"I_Soldier_AR_F"
	,"I_Soldier_AT_F"
	,"I_Soldier_exp_F"
	,"I_soldier_F"
	,"I_soldier_F"
	,"I_soldier_F"
	,"I_soldier_F"
	,"I_soldier_F"
	,"I_Soldier_GL_F"
	,"I_Soldier_GL_F"
	,"I_Soldier_GL_F"
	,"I_Soldier_LAT_F"
	,"I_Soldier_LAT_F"
	,"I_Soldier_lite_F"
	,"I_Soldier_lite_F"
	,"I_Soldier_lite_F"
	,"I_Soldier_M_F"
	,"I_Soldier_M_F"
	,"I_Soldier_M_F"
	,"I_Soldier_repair_F"
	,"I_officer_F"
	,"I_soldier_UAV_F"
	,"I_soldier_UAV_F"
	,"I_Soldier_AAR_F"
	,"I_support_AMG_F"
	,"I_support_AMort_F"
	,"I_Soldier_AAA_F"
	,"I_Soldier_AAT_F"
	,"I_support_GMG_F"
	,"I_support_MG_F"
	,"I_support_Mort_F"
	,"I_Soldier_LAT2_F"
	,"I_Soldier_LAT2_F"
	,"I_Spotter_F"
    ,"I_ghillie_lsh_F"
    ,"I_ghillie_sard_F"
	,"I_Soldier_SL_F"
	,"I_Soldier_TL_F"];
	if(A3E_Param_UseDLCLaws==1) then {
		a3e_arr_Escape_InfantryTypes_Ind pushback "I_soldier_mine_F";
		a3e_arr_Escape_InfantryTypes_Ind pushback "I_soldier_UAV_06_F";
		a3e_arr_Escape_InfantryTypes_Ind pushback "I_soldier_UAV_06_medical_F";
	};
	if(A3E_Param_UseDLCTanks==1) then {
		a3e_arr_Escape_InfantryTypes_Ind pushback "I_Soldier_LAT2_F";
	};
a3e_arr_recon_InfantryTypes = [
	"O_recon_exp_F"
	,"O_recon_JTAC_F"
	,"O_recon_M_F"
	,"O_recon_medic_F"
	,"O_recon_F"
	,"O_recon_LAT_F"
	,"O_recon_TL_F"
	,"O_V_Soldier_Exp_hex_F"
	,"O_V_Soldier_JTAC_hex_F"
	,"O_V_Soldier_M_hex_F"
	,"O_V_Soldier_hex_F"
	,"O_V_Soldier_Medic_hex_F"
	,"O_V_Soldier_LAT_hex_F"
	,"O_V_Soldier_TL_hex_F"];
	if(A3E_Param_UseDLCMarksmen==1) then {
		a3e_arr_recon_InfantryTypes pushback "O_Pathfinder_F";
	};
a3e_arr_recon_I_InfantryTypes = [
	"I_G_Soldier_A_F"
	,"I_G_Soldier_LAT_F"
	,"I_G_Soldier_M_F"
	,"I_G_Soldier_GL_F"
	,"I_G_Soldier_exp_F"
	,"I_G_engineer_F"
	,"I_G_medic_F"
	,"I_G_Soldier_AR_F"
	,"I_G_Soldier_TL_F"
	,"I_G_Soldier_SL_F"
	,"I_G_Soldier_lite_F"
	,"I_G_Soldier_F"
	,"I_G_Soldier_LAT2_F"];


// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
a3e_arr_Escape_RoadBlock_MannedVehicleTypes = [
	"O_MRAP_02_hmg_F"
	,"O_MRAP_02_hmg_F"
	,"O_MRAP_02_gmg_F"
	,"O_UGV_01_rcws_F"];
	
a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind = [
	"I_MRAP_03_hmg_F"
	,"I_MRAP_03_hmg_F"
	,"I_MRAP_03_gmg_F"
	,"I_UGV_01_rcws_F"];
	if(A3E_Param_UseDLCTanks==1) then {
		a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind pushback "I_LT_01_AT_F";
		a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind pushback "I_LT_01_cannon_F";	
	};


// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
a3e_arr_Escape_ReinforcementTruck_vehicleClasses = [
	"O_Truck_02_covered_F"
	,"O_Truck_02_transport_F"
	,"O_Truck_03_transport_F"
	,"O_Truck_03_covered_F"];
a3e_arr_Escape_ReinforcementTruck_vehicleClasses_Ind = [
	"I_Truck_02_transport_F"
	,"I_Truck_02_covered"];


// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses = [
	"O_APC_Wheeled_02_rcws_F"
	,"O_APC_Wheeled_02_rcws_F"
	,"O_APC_Tracked_02_cannon_F"];


// A communication center is guarded by vehicles depending on variable _enemyFrequency. 1 = a random light armor. 2 = a random heavy armor. 3 = a random 
// light *and* a random heavy armor.

// Random array. Light armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_lightArmorClasses = [
	"O_MRAP_02_gmg_F"
	,"O_MRAP_02_hmg_F"
	,"O_APC_Wheeled_02_rcws_F"];
// Random array. Heavy armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_heavyArmorClasses = [
	"O_MBT_02_cannon_F"
	,"O_APC_Tracked_02_AA_F"];
	if(A3E_Param_UseDLCTanks==1) then {
		a3e_arr_ComCenDefence_heavyArmorClasses pushback "O_MBT_04_command_F";
	};

// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
a3e_arr_ComCenStaticWeapons = [
	"O_HMG_01_high_F"
	,"O_HMG_01_high_F"
	,"O_GMG_01_high_F"];
// A communication center have two parked and empty vehicles of the following possible types.
a3e_arr_ComCenParkedVehicles = [
		"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_MRAP_02_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Quadbike_01_F"
		,"O_Truck_03_device_F"
		,"O_Truck_03_medical_F"
		,"O_Truck_03_transport_F"
		,"O_Truck_03_covered_F"
		,"O_Truck_02_medical_F"
		,"O_Truck_02_transport_F"
		,"O_Truck_02_covered_F"
		//Supply Trucks
	    ,"O_Truck_03_ammo_F"
		,"O_Truck_03_fuel_F"
		,"O_Truck_03_repair_F"
		,"O_Truck_02_ammo_F"
		,"O_Truck_02_fuel_F"
		,"O_Truck_02_box_F"
		//Armed Cars
		,"O_UGV_01_rcws_F"
		//MRAPS
		,"O_MRAP_02_gmg_F"
		,"O_MRAP_02_hmg_F"];
	if(A3E_Param_UseDLCApex==1) then {
		a3e_arr_ComCenParkedVehicles pushback "O_LSV_02_unarmed_F";
		a3e_arr_ComCenParkedVehicles pushback "O_LSV_02_armed_F";
		a3e_arr_ComCenParkedVehicles pushback "O_LSV_02_AT_F";
	};

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types may be used.
a3e_arr_Escape_EnemyCivilianCarTypes = [
	"C_Hatchback_01_F"
	,"C_Hatchback_01_sport_F"
	,"C_SUV_01_F"
	,"C_Truck_02_covered_F"];
	if(A3E_Param_UseDLCApex==1) then {
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
	"O_HMG_01_high_F"
	,"O_HMG_01_high_F"
	,"O_GMG_01_high_F"
	,"O_static_AT_F"
	,"O_static_AA_F"];

// An ammo depot have one parked and empty vehicle of the following possible types.
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses = a3e_arr_ComCenParkedVehicles;


//Random array. Types of helicopters to spawn
a3e_arr_O_attack_heli = [
	"O_Heli_Attack_02_F"
	,"O_Heli_Attack_02_black_F"];
a3e_arr_O_transport_heli = [
	"O_Heli_Light_02_unarmed_F"];
	if(A3E_Param_UseDLCHelis==1) then {
	a3e_arr_O_transport_heli pushback "O_Heli_Transport_04_bench_F";
	a3e_arr_O_transport_heli pushback "O_Heli_Transport_04_covered_F";
	};
a3e_arr_O_pilots = [
	"O_Pilot_F"
	,"O_helicrew_F"];
a3e_arr_I_transport_heli = [
	"I_Heli_Transport_02_F"];
a3e_arr_I_pilots = [
	"I_helipilot_F"
	,"I_helicrew_F"];


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
a3e_arr_AmmoDepotBasicWeapons pushback ["LMG_03_F", 10, 1, 3, ["200Rnd_556x45_Box_Tracer_Red_F"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["LMG_03_F", 10, 1, 3, ["200Rnd_556x45_Box_Tracer_Red_F"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["LMG_03_F", 10, 1, 3, ["200Rnd_556x45_Box_Tracer_Red_F"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["sma_minimi_mk3_762tlb", 10, 1, 3, ["SMA_150Rnd_762_M80A1_Tracer"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["sma_minimi_mk3_762tlb_des", 10, 1, 3, ["SMA_150Rnd_762_M80A1_Tracer"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["sma_minimi_mk3_762tlb_wdl", 10, 1, 3, ["SMA_150Rnd_762_M80A1_Tracer"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["MMG_01_hex_F", 10, 1, 3, ["150Rnd_93x64_Mag"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["MMG_01_tan_F", 10, 1, 3, ["150Rnd_93x64_Mag"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["MMG_02_black_F", 10, 1, 3, ["130Rnd_338_Mag"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["MMG_02_sand_F", 10, 1, 3, ["130Rnd_338_Mag"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_CTARS_blk_F", 10, 1, 3, ["100Rnd_580x42_Mag_Tracer_F"], 7];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_CTARS_hex_F", 10, 1, 3, ["100Rnd_580x42_hex_Mag_Tracer_F"], 7];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_CTARS_ghex_F", 10, 1, 3, ["100Rnd_580x42_ghex_Mag_Tracer_F"], 7];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_RPK12_F", 10, 1, 3, ["75rnd_762x39_AK12_Mag_Tracer_F"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_RPK12_arid_F", 10, 1, 3, ["75rnd_762x39_AK12_Arid_Mag_Tracer_F"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_RPK12_lush_F", 10, 1, 3, ["75rnd_762x39_AK12_Lush_Mag_Tracer_F"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_ACRREMMOE", 10, 1, 3, ["SMA_30Rnd_68x43_SPC_FMJ_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_ACRREMMOEblk", 10, 1, 3, ["SMA_30Rnd_68x43_SPC_FMJ_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_ACRREMGL", 10, 1, 3, ["SMA_30Rnd_68x43_SPC_FMJ_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_ACRREMGL_B", 10, 1, 3, ["SMA_30Rnd_68x43_SPC_FMJ_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_L85RIS", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_L85RISNR", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_M4MOE", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_M4MOE_OD", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_M4MOE_Tan", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_M4_GL", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_STG_E4_OD_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_STG_E4_BLACK_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Steyr_AUG_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Steyr_AUG_BLACK_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_MK16", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Mk16_black", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Mk16_Green", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Mk16_EGLM", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_ARX_blk_F", 15, 1, 3, ["30Rnd_65x39_caseless_green_mag_Tracer","10Rnd_50BW_Mag_F"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_ARX_ghex_F", 15, 1, 3, ["30Rnd_65x39_caseless_green_mag_Tracer","10Rnd_50BW_Mag_F"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_ARX_hex_F", 15, 1, 3, ["30Rnd_65x39_caseless_green_mag_Tracer","10Rnd_50BW_Mag_F"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_03_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_03_khaki_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_03_woodland_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_SPAR_03_blk_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_SPAR_03_khk_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_SPAR_03_snd_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Mk17_16", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Mk17_16_black", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Mk17_16_Green", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Mk17_EGLM", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_02_F", 10, 1, 3, ["10Rnd_338_Mag"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_02_camo_F", 10, 1, 3, ["10Rnd_338_Mag"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_02_sniper_F", 10, 1, 3, ["10Rnd_338_Mag"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_GM6_F", 15, 1, 3, ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], 15];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_GM6_ghex_F", 15, 1, 3, ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], 15];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_GM6_camo_F", 15, 1, 3, ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], 15];
// non-CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["LMG_Mk200_F", 10, 1, 3, ["200Rnd_65x39_cased_Box_Tracer"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["LMG_Mk200_F", 10, 1, 3, ["200Rnd_65x39_cased_Box_Tracer"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_SPAR_02_blk_F", 10, 1, 3, ["150Rnd_556x45_Drum_Mag_Tracer_F"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_SPAR_02_khk_F", 10, 1, 3, ["150Rnd_556x45_Drum_Green_Mag_Tracer_F"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_SPAR_02_snd_F", 10, 1, 3, ["150Rnd_556x45_Drum_Sand_Mag_Tracer_F"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["LMG_Zafir_F", 10, 1, 3, ["150Rnd_762x54_Box_Tracer"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["LMG_Zafir_F", 10, 1, 3, ["150Rnd_762x54_Box_Tracer"], 5];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_MXM_F", 10, 1, 3, ["100Rnd_65x39_caseless_mag_Tracer"], 7];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_MXM_Black_F", 10, 1, 3, ["100Rnd_65x39_caseless_black_mag_tracer"], 7];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_MXM_khk_F", 10, 1, 3, ["100Rnd_65x39_caseless_khaki_mag_tracer"], 7];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_AK12_GL_F", 10, 1, 3, ["75Rnd_762x39_Mag_Tracer_F","1Rnd_HE_Grenade_shell"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_AK12_GL_arid_F", 10, 1, 3, ["75rnd_762x39_AK12_Arid_Mag_Tracer_F","1Rnd_HE_Grenade_shell"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_AK12_GL_lush_F", 10, 1, 3, ["75rnd_762x39_AK12_Lush_Mag_Tracer_F","1Rnd_HE_Grenade_shell"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMG_03_TR_black", 10, 1, 3, ["50Rnd_570x28_SMG_03"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMG_03_TR_camo", 10, 1, 3, ["50Rnd_570x28_SMG_03"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMG_03_TR_hex", 10, 1, 3, ["50Rnd_570x28_SMG_03"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMG_03_TR_khaki", 10, 1, 3, ["50Rnd_570x28_SMG_03"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_ACRMOE_Blk", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_ACRMOE", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_ACRGL_B", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_ACRGL", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_HK416CUSTOMvfgB", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_HK416CUSTOMvfg", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_HK416CUSTOMvfgODP", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_HK416GLOD", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_MK18MOETAN", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_MK18MOEOD", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_MK18TANBLK_GL", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_MK18BLK_GL", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_SAR21_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_SAR21_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_Tavor_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_TavorBLK_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_TavorOD_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_MSBS65_UBS_F", 10, 1, 3, ["30Rnd_65x39_caseless_msbs_mag_Tracer","6Rnd_12Gauge_Pellets"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_MSBS65_UBS_black_F", 10, 1, 3, ["30Rnd_65x39_caseless_msbs_mag_Tracer","6Rnd_12Gauge_Pellets"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_MSBS65_UBS_camo_F", 10, 1, 3, ["30Rnd_65x39_caseless_msbs_mag_Tracer","6Rnd_12Gauge_Pellets"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["arifle_MSBS65_UBS_sand_F", 10, 1, 3, ["30Rnd_65x39_caseless_msbs_mag_Tracer","6Rnd_12Gauge_Pellets"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_07_blk_F", 10, 1, 3, ["20Rnd_650x39_Cased_Mag_F"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_07_hex_F", 10, 1, 3, ["20Rnd_650x39_Cased_Mag_F"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_07_ghex_F", 10, 1, 3, ["20Rnd_650x39_Cased_Mag_F"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_06_camo_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_06_hunter_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_06_olive_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_HK417_16in", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_HK417_16in", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SMA_HK417_16in", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_05_blk_F", 10, 1, 3, ["10Rnd_93x64_DMR_05_Mag"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_05_hex_f", 10, 1, 3, ["10Rnd_93x64_DMR_05_Mag"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_DMR_05_tan_f", 10, 1, 3, ["10Rnd_93x64_DMR_05_Mag"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_LRR_F", 10, 1, 3, ["7Rnd_408_Mag"], 14];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_LRR_camo_F", 10, 1, 3, ["7Rnd_408_Mag"], 14];
a3e_arr_AmmoDepotBasicWeapons pushback ["srifle_LRR_tna_F", 10, 1, 3, ["7Rnd_408_Mag"], 14];

// Weapons and ammo in the special weapons box
a3e_arr_AmmoDepotSpecialWeapons = [];
// CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["LMG_03_F", 10, 1, 3, ["200Rnd_556x45_Box_Tracer_Red_F"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LMG_03_F", 10, 1, 3, ["200Rnd_556x45_Box_Tracer_Red_F"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LMG_03_F", 10, 1, 3, ["200Rnd_556x45_Box_Tracer_Red_F"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["sma_minimi_mk3_762tlb", 10, 1, 3, ["SMA_150Rnd_762_M80A1_Tracer"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["sma_minimi_mk3_762tlb_des", 10, 1, 3, ["SMA_150Rnd_762_M80A1_Tracer"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["sma_minimi_mk3_762tlb_wdl", 10, 1, 3, ["SMA_150Rnd_762_M80A1_Tracer"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["MMG_01_hex_F", 10, 1, 3, ["150Rnd_93x64_Mag"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["MMG_01_tan_F", 10, 1, 3, ["150Rnd_93x64_Mag"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["MMG_02_black_F", 10, 1, 3, ["130Rnd_338_Mag"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["MMG_02_sand_F", 10, 1, 3, ["130Rnd_338_Mag"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_CTARS_blk_F", 10, 1, 3, ["100Rnd_580x42_Mag_Tracer_F"], 7];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_CTARS_hex_F", 10, 1, 3, ["100Rnd_580x42_hex_Mag_Tracer_F"], 7];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_CTARS_ghex_F", 10, 1, 3, ["100Rnd_580x42_ghex_Mag_Tracer_F"], 7];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_RPK12_F", 10, 1, 3, ["75rnd_762x39_AK12_Mag_Tracer_F"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_RPK12_arid_F", 10, 1, 3, ["75rnd_762x39_AK12_Arid_Mag_Tracer_F"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_RPK12_lush_F", 10, 1, 3, ["75rnd_762x39_AK12_Lush_Mag_Tracer_F"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_ACRREMMOE", 10, 1, 3, ["SMA_30Rnd_68x43_SPC_FMJ_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_ACRREMMOEblk", 10, 1, 3, ["SMA_30Rnd_68x43_SPC_FMJ_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_ACRREMGL", 10, 1, 3, ["SMA_30Rnd_68x43_SPC_FMJ_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_ACRREMGL_B", 10, 1, 3, ["SMA_30Rnd_68x43_SPC_FMJ_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_L85RIS", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_L85RISNR", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_M4MOE", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_M4MOE_OD", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_M4MOE_Tan", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_M4_GL", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_STG_E4_OD_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_STG_E4_BLACK_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Steyr_AUG_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Steyr_AUG_BLACK_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_MK16", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Mk16_black", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Mk16_Green", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Mk16_EGLM", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_ARX_blk_F", 15, 1, 3, ["30Rnd_65x39_caseless_green_mag_Tracer","10Rnd_50BW_Mag_F"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_ARX_ghex_F", 15, 1, 3, ["30Rnd_65x39_caseless_green_mag_Tracer","10Rnd_50BW_Mag_F"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_ARX_hex_F", 15, 1, 3, ["30Rnd_65x39_caseless_green_mag_Tracer","10Rnd_50BW_Mag_F"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_03_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_03_khaki_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_03_woodland_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_SPAR_03_blk_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_SPAR_03_khk_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_SPAR_03_snd_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Mk17_16", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Mk17_16_black", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Mk17_16_Green", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Mk17_EGLM", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_02_F", 10, 1, 3, ["10Rnd_338_Mag"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_02_camo_F", 10, 1, 3, ["10Rnd_338_Mag"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_02_sniper_F", 10, 1, 3, ["10Rnd_338_Mag"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_GM6_F", 15, 1, 3, ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], 15];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_GM6_ghex_F", 15, 1, 3, ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], 15];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_GM6_camo_F", 15, 1, 3, ["5Rnd_127x108_Mag","5Rnd_127x108_APDS_Mag"], 15];
// non-CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["LMG_Mk200_F", 10, 1, 3, ["200Rnd_65x39_cased_Box_Tracer"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LMG_Mk200_F", 10, 1, 3, ["200Rnd_65x39_cased_Box_Tracer"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_SPAR_02_blk_F", 10, 1, 3, ["150Rnd_556x45_Drum_Mag_Tracer_F"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_SPAR_02_khk_F", 10, 1, 3, ["150Rnd_556x45_Drum_Green_Mag_Tracer_F"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_SPAR_02_snd_F", 10, 1, 3, ["150Rnd_556x45_Drum_Sand_Mag_Tracer_F"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LMG_Zafir_F", 10, 1, 3, ["150Rnd_762x54_Box_Tracer"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LMG_Zafir_F", 10, 1, 3, ["150Rnd_762x54_Box_Tracer"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_MXM_F", 10, 1, 3, ["100Rnd_65x39_caseless_mag_Tracer"], 7];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_MXM_Black_F", 10, 1, 3, ["100Rnd_65x39_caseless_black_mag_tracer"], 7];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_MXM_khk_F", 10, 1, 3, ["100Rnd_65x39_caseless_khaki_mag_tracer"], 7];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_AK12_GL_F", 10, 1, 3, ["75Rnd_762x39_Mag_Tracer_F","1Rnd_HE_Grenade_shell"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_AK12_GL_arid_F", 10, 1, 3, ["75rnd_762x39_AK12_Arid_Mag_Tracer_F","1Rnd_HE_Grenade_shell"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_AK12_GL_lush_F", 10, 1, 3, ["75rnd_762x39_AK12_Lush_Mag_Tracer_F","1Rnd_HE_Grenade_shell"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMG_03_TR_black", 10, 1, 3, ["50Rnd_570x28_SMG_03"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMG_03_TR_camo", 10, 1, 3, ["50Rnd_570x28_SMG_03"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMG_03_TR_hex", 10, 1, 3, ["50Rnd_570x28_SMG_03"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMG_03_TR_khaki", 10, 1, 3, ["50Rnd_570x28_SMG_03"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_ACRMOE_Blk", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_ACRMOE", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_ACRGL_B", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_ACRGL", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_HK416CUSTOMvfgB", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_HK416CUSTOMvfg", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_HK416CUSTOMvfgODP", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_HK416GLOD", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_MK18MOETAN", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_MK18MOEOD", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_MK18TANBLK_GL", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_MK18BLK_GL", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer","1Rnd_HE_Grenade_shell"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_SAR21_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_SAR21_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_Tavor_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_TavorBLK_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_TavorOD_F", 10, 1, 3, ["SMA_30Rnd_556x45_Mk262_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_MSBS65_UBS_F", 10, 1, 3, ["30Rnd_65x39_caseless_msbs_mag_Tracer","6Rnd_12Gauge_Pellets"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_MSBS65_UBS_black_F", 10, 1, 3, ["30Rnd_65x39_caseless_msbs_mag_Tracer","6Rnd_12Gauge_Pellets"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_MSBS65_UBS_camo_F", 10, 1, 3, ["30Rnd_65x39_caseless_msbs_mag_Tracer","6Rnd_12Gauge_Pellets"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["arifle_MSBS65_UBS_sand_F", 10, 1, 3, ["30Rnd_65x39_caseless_msbs_mag_Tracer","6Rnd_12Gauge_Pellets"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_07_blk_F", 10, 1, 3, ["20Rnd_650x39_Cased_Mag_F"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_07_hex_F", 10, 1, 3, ["20Rnd_650x39_Cased_Mag_F"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_07_ghex_F", 10, 1, 3, ["20Rnd_650x39_Cased_Mag_F"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_06_camo_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_06_hunter_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_06_olive_F", 10, 1, 3, ["20Rnd_762x51_Mag"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_HK417_16in", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_HK417_16in", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SMA_HK417_16in", 15, 1, 3, ["SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_05_blk_F", 10, 1, 3, ["10Rnd_93x64_DMR_05_Mag"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_05_hex_f", 10, 1, 3, ["10Rnd_93x64_DMR_05_Mag"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_DMR_05_tan_f", 10, 1, 3, ["10Rnd_93x64_DMR_05_Mag"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_LRR_F", 10, 1, 3, ["7Rnd_408_Mag"], 14];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_LRR_camo_F", 10, 1, 3, ["7Rnd_408_Mag"], 14];
a3e_arr_AmmoDepotSpecialWeapons pushback ["srifle_LRR_tna_F", 10, 1, 3, ["7Rnd_408_Mag"], 14];

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
a3e_arr_CivilianCarWeapons pushback ["SMG_03_TR_black", "50Rnd_570x28_SMG_03", 5];
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
	,"optic_Arco"
	,"optic_Hamr"
	,"optic_MRCO"
	,"optic_Holosight"];
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
	,"optic_KHS_hex"
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
	,"bipod_01_F_mtp"
	,"bipod_02_F_blk"
	,"bipod_02_F_tan"
	,"bipod_02_F_hex"
	,"bipod_03_F_blk"
	,"bipod_03_F_oli"];

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
	"B_Heli_Transport_01_F"];
	if(A3E_Param_UseDLCHelis==1) then {
	a3e_arr_extraction_chopper pushback "B_Heli_Transport_03_F";
	};
a3e_arr_extraction_chopper_escort = [
	"B_Heli_Attack_01_F"];

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
	"B_Truck_01_transport_F",	//17
	"B_Truck_01_covered_F",	//17
	"B_APC_Tracked_01_rcws_F",	//8
	"B_APC_Wheeled_01_cannon_F"];	//8
	if(A3E_Param_UseDLCApex==1) then {
	a3e_arr_extraction_car pushback "B_T_LSV_01_unarmed_F";	//6
	};
a3e_arr_extraction_car_escort = [
	"B_APC_Tracked_01_AA_F",
	"B_APC_Wheeled_01_cannon_F",
	"B_MBT_01_cannon_F",
	"B_MBT_01_TUSK_F"];

//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf and CreateSearchDrone.sqf
// Classnames of drones
//////////////////////////////////////////////////////////////////
a3e_arr_searchdrone = [
	"O_UAV_01_F"
	,"O_UAV_02_CAS_F"
	,"O_UAV_02_F"
	,"O_UAV_02_F"];

//////////////////////////////////////////////////////////////////
// CreateSearchChopper.sqf
// first chopper that's called when you escape
// Two arrays for "Easy" and "Hard" parameter, both used on stadard setting
//////////////////////////////////////////////////////////////////
a3e_arr_searchChopperEasy = [
	"I_Heli_light_03_unarmed_F"];
a3e_arr_searchChopperHard = [
	"I_Heli_light_03_F"];
a3e_arr_searchChopper_pilot = [
	"I_helipilot_F"];
a3e_arr_searchChopper_crew = [
	"I_helicrew_F"];

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
a3e_additional_weapon_box_1 = "Box_NATO_Equip_F";
a3e_additional_weapon_box_2 = "Box_NATO_WpsSpecial_F";

//////////////////////////////////////////////////////////////////
// fn_MortarSite
// mortar spawned in the mortar camps
//////////////////////////////////////////////////////////////////
a3e_arr_MortarSite = [
	"O_Mortar_01_F"];

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
	"B_Pilot_F"
	,"B_helicrew_F"];
a3e_arr_CrashSiteWrecksCar = [
	"Land_Wreck_Hunter_F"
	,"Land_Wreck_Slammer_F"
	,"Land_Wreck_AFV_Wheeled_01_F"];
a3e_arr_CrashSiteCrewCar = [
	"B_crew_F"];
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