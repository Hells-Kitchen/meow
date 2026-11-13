private _hasKND = isClass (configFile >> "CfgPatches" >> "knd_common");
private _hasLLTE = isClass (configFile >> "CfgPatches" >> "JMSLLTE_empire_mod");

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Rebel Alliance"] call _fnc_saveToTemplate;

["flag", "ls_flag_rebelAlliance_damaged"] call _fnc_saveToTemplate;
["flagTexture", "3AS\3as_props\Flags\Data\camo_flag_vanilla\camo_flag_vanilla_Reb\camo_flag_vanilla_Reb_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "Rebel_Alliance"] call _fnc_saveToTemplate;

private _vehiclesBasic = ["AGD_Rebel_Speeder_Unarmed"];
private _vehiclesLightUnarmed = ["AGD_Rebel_Speeder_armed"];
private _vehiclesLightArmed = ["AGD_Rebel_ITT","WM_V25_Speeder"];
private _vehiclesTrucks = ["AGD_ITT_Rebel_Unarmed"];
private _vehiclesAT = ["WM_AAC_Speeder","WM_AAC_Speeder_Rocket"];
private _vehiclesAA = ["AGD_AAC_AA"];
private _vehiclesBoat = ["O_G_Boat_Transport_01_F"];

private _vehiclesPlane = ["3AS_Reb_LAS_F"];
private _vehiclesMedical = ["AGD_Rebel_ITT_Logistic"];

private _vehiclesCivCar = ["ls_vehicle_105kLancer_civ","AGD_Fennek_Civ"];
private _vehiclesCivTruck = ["ls_vehicle_v35"];
private _vehiclesCivHeli = ["3AS_Aegis_Carrier_Civ_Blue"];
private _vehiclesCivBoat = [];
private _vehiclesCivPlane = [];
private _vehiclesCivSupply = ["AGD_Truck_Civ"];

["staticMGs", ["ls_vehicle_mrbc"]] call _fnc_saveToTemplate;
["staticAT", ["AGD_Shellcracker_AT"]] call _fnc_saveToTemplate;
["staticAA", ["AGD_Shellcracker_AA"]] call _fnc_saveToTemplate;
["staticMortars", ["WM_ImperialMortar"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["HX_AT_Mine_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine_Range_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", ["ls_explosive_breachCharge_magazine"]] call _fnc_saveToTemplate;
["breachingExplosivesTank", ["ls_explosive_demoCharge_magazine"]] call _fnc_saveToTemplate;

["vehicleLightSource", "land_3AS_light_s_imp"] call _fnc_saveToTemplate;


if (_hasKND) then {
    _vehiclesCivTruck append ["knd_vehicles_agrihauler_base"];
    _vehiclesCivSupply append ["knd_vehicles_agrihauler_freight_viv"];
};

if (_hasLLTE) then {
    _vehiclesLightArmed append ["JMSLLTE_B_veh_LIUSeweb_imp_F","JMSLLTE_B_veh_x34mk2_reb_F","JMSLLTE_O_veh_AA2mk2_reb_F","JMSLLTE_O_veh_AA5mk2_reb_F"];
    _vehiclesCivCar append ["JMSLLTE_C_veh_g17_F","JMSLLTE_C_veh_x34_F"];
    _vehiclesCivTruck append ["JMSLLTE_C_veh_AA2_F","JMSLLTE_C_veh_AA5_F"];
    _vehiclesCivSupply append ["JMSLLTE_C_veh_AA5sup_F"];
};

["vehiclesBoat", _vehiclesBoat] call _fnc_saveToTemplate;
["vehiclesBasic", _vehiclesBasic] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed",  _vehiclesLightUnarmed] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", _vehiclesTrucks] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAT", _vehiclesAT] call _fnc_saveToTemplate;
["vehiclesAA", _vehiclesAA] call _fnc_saveToTemplate;
["vehiclesPlane", _vehiclesPlane] call _fnc_saveToTemplate;
["vehiclesMedical", _vehiclesMedical] call _fnc_saveToTemplate;

["vehiclesCivCar", _vehiclesCivCar] call _fnc_saveToTemplate;
["vehiclesCivTruck", _vehiclesCivTruck] call _fnc_saveToTemplate;
["vehiclesCivHeli", _vehiclesCivHeli] call _fnc_saveToTemplate;
["vehiclesCivBoat", _vehiclesCivBoat] call _fnc_saveToTemplate;
["vehiclesCivPlane", _vehiclesCivPlane] call _fnc_saveToTemplate;
["vehiclesCivSupply", _vehiclesCivSupply] call _fnc_saveToTemplate;
//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "3AS_Double_Imp_Stand"] call _fnc_saveToTemplate;

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
["animations", [
    ["vehClass", ["animsource_example_1", 0.25, "animsource_example_2", 0.3]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["vehClass", ["paint", 1]]
]] call _fnc_saveToTemplate;


//Enter #include "Modset_Reb_Vehicle_Attributes.sqf" here

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "ls_vest_holster_brown",
	"ls_vest_holster_maroon",
	"ls_vest_spacer",
	"ls_vest_spacer_holster",
    "agd_weapons_ScatterGun_F",
    "3AS_8Rnd_ESlugY_Mag",
    "agd_weapons_A280_F",
    "3AS_EC17_F",
    "3AS_18Rnd_EM20_EC17_Mag",
    ["3AS_50Rnd_EM50_Mag", 15],
	["3AS_RPS6_F", 7],
	["3AS_DetPack", 10],
	["ls_explosive_breachCharge_magazine", 10],
	["ls_explosive_demoCharge_magazine", 7]
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","ls_radios_hush98"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","ls_orsfBackpack_trooper_radio"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","ls_radios_hush98"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["ls_radios_hush98","ls_orsfBackpack_trooper_radio"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "ls_uniform_pathfinder",
	"ls_uniform_pathfinder_brown",
	"ls_uniform_pathfinder_brown_r",
	"ls_uniform_pathfinder_navy_alt",
	"ls_uniform_pathfinder_navy_alt_r",
	"ls_uniform_pathfinder_navy",
	"ls_uniform_pathfinder_navy_r",
	"ls_uniform_pathfinder_r",
	"ls_orsfUniform_trooper"
   ];
private _officerUniform = ["ls_rebelUniform_honorGuard"];
private _officerHat = ["ls_helmet_jockey_navy_alt"];

if (_hasLLTE) then {
    _rebUniforms append [
        "JMSLLTE_ScumNavy_black_F_CombatUniform",
		"JMSLLTE_ScumNavy_blue_F_CombatUniform",
		"JMSLLTE_ScumNavy_red_F_CombatUniform",
		"JMSLLTE_ScumNavy_white_F_CombatUniform",
		"JMSLLTE_ScumOfficer_orange_F_CombatUniform",
		"JMSLLTE_ScumAlCommando_cloud_F_CombatUniform",
		"JMSLLTE_ScumAlCommando_desert_F_CombatUniform",
		"JMSLLTE_ScumPart_bl_F_CombatUniform",
		"JMSLLTE_ScumPart_br_F_CombatUniform",
		"JMSLLTE_ScumPart_gr_F_CombatUniform"
    ];
};

["uniforms", _rebUniforms + _officerUniform] call _fnc_saveToTemplate;         //These Items get added to the Arsenal
["officerUniform", _officerUniform] call _fnc_saveToTemplate;
["officerHat", _officerHat] call _fnc_saveToTemplate;

private _headgear = [
    "ls_helmet_jockey_alt",
	"ls_helmet_jockey",
	"ls_helmet_jockey_navy",
	"H_Beret_blk",
	"H_MilCap_gry"
];
["headgear", _headgear] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

["petrosIdentity", createHashMapFromArray [
        ["face", "WhiteHead_27"],
        ["speaker", "Male04ENGB"],
        ["pitch", 1.1],
        ["firstName", "Janu"],
        ["lastName", "Coin"]
]] call _fnc_saveToTemplate;
["petrosPrimary", ["agd_weapons_T21", 4]] call _fnc_saveToTemplate;
["petrosHandgun", ["3AS_EC17_F", 5]] call _fnc_saveToTemplate;
["petrosHeadgear", "WM_StormCap"] call _fnc_saveToTemplate;
["petrosGoggles", "ls_imperial_earPiece"] call _fnc_saveToTemplate;
["petrosUniform", "WM_StormUniform"] call _fnc_saveToTemplate;
/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
["faces", [
    "WhiteHead_07",
    "WhiteHead_15",
    "GreekHead_A3_04",
    "AfricanHead_02",
    "WhiteHead_29",
    "LivonianHead_4",
    "RussianHead_5",
    "LivonianHead_9",
    "GreekHead_A3_11",
    "RussianHead_1",
    "WhiteHead_26",
    "AsianHead_A3_06",
    "TanoanHead_A3_04",
    "WhiteHead_30"
]] call _fnc_saveToTemplate;
["voices", ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];
_loadoutData set ["officerUniform", _officerUniform];
_loadoutData set ["officerHat", _officerHat];

_loadoutData set ["facewear", [
	"ls_glasses_goggles",
	"ls_glasses_goggles_blue",
	"ls_glasses_goggles_green",
	"ls_glasses_goggles_orange",
	"ls_glasses_goggles_white",
	"ls_glasses_poncho",
	"ls_rebel_chestPouches"
]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
////////////////////////

private _petrosTemplate = {
    ["officerHat"] call _fnc_setHeadgear;
    ["officerUniform"] call _fnc_setUniform;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _petrosTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
