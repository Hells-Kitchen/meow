private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "House Kandosii"] call _fnc_saveToTemplate;

["flag", "ls_flag_rebelAlliance_damaged"] call _fnc_saveToTemplate;
["flagTexture", "\ls\core\addons\data\flags\flag_mandalorian_damaged_ca.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "knd_ralFlag"] call _fnc_saveToTemplate;

["vehiclesBasic", ["JMSLLTE_B_veh_x34mk2_reb_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["JMSLLTE_O_veh_AA2mk2_reb_F"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["KND_RAT"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["JMSLLTE_O_veh_AA5mk2_reb_F"]] call _fnc_saveToTemplate;
["vehiclesAT", ["3AS_PX10_IMP_UP"]] call _fnc_saveToTemplate;
["vehiclesAA", ["3AS_Hailfire_SAM"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["O_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["knd_vehicles_skycat","knd_KomrkFighter_VTOL_Dynamic_F"]] call _fnc_saveToTemplate;
["vehiclesMedical", []] call _fnc_saveToTemplate;

["vehiclesCivCar", ["JMSLLTE_C_veh_g17_F"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["JMSLLTE_C_veh_v35c_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["3AS_Aegis_Shuttle_Civ_Blue"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivPlane", ["3AS_Civilian_Transport_02"]] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["JMSLLTE_C_veh_AA5sup_F"]] call _fnc_saveToTemplate;

["staticMGs", ["knd_turrets_imperial_eweb","knd_turrets_imperial_T21"]] call _fnc_saveToTemplate;
["staticAT", ["TKE_Turret_40mm_AC"]] call _fnc_saveToTemplate;
["staticAA", ["TKE_Turret_40mm_AA"]] call _fnc_saveToTemplate;
["staticMortars", ["ls_vehicle_mortar_mercenary"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "ls_5Rnd_82mm_mortar_HE"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ""] call _fnc_saveToTemplate;

["minesAT", ["HX_AT_Mine_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine_Range_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["ls_explosive_breachCharge_magazine", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["ls_explosive_demoCharge_magazine", 1]]] call _fnc_saveToTemplate;

["vehicleLightSource", "land_3AS_fob_light_reb_tall"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "knd_astromech_r2_base"] call _fnc_saveToTemplate;

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
["animations", [
    ["vehClass", ["animsource_example_1", 0.25, "animsource_example_2", 0.3]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["JMSLLTE_O_veh_AA5mk2_reb_F", ["Tex_AA5_blue", 1]],
    ["JMSLLTE_O_veh_AA2mk2_reb_F", ["Tex_AA2_bluestrips", 1]],
    ["JMSLLTE_B_veh_x34mk2_reb_F", ["Tex_x34_blue", 1]]
]] call _fnc_saveToTemplate;



//Enter #include "Modset_Reb_Vehicle_Attributes.sqf" here

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "knd_A180_Carbine_Stockless_F",
    "knd_A180_pistol_mag",
    "knd_spacek",
    "knd_spacek_mag",
    "knd_galaar_F",
    "knd_mag_galaar",
    "knd_a280_rotj",
    "knd_a280_rotj_solid",
    "knd_a280",
    "knd_a280_wood",
    "knd_mag_A300_Standard",
    "knd_A180_Carbine_F",
    "knd_A300_Carbine_F",
    "knd_A300_Carbine_Stock_F",
    "knd_A300_Rifle_F",
    "knd_A300_Rifle_UGL_F",
    "knd_A300_Sniper_F",
    "knd_a350",
    "knd_mag_a350",
    "knd_westar_bo",
    "knd_westar_dual",
    "knd_westar_pistol_mag",
    "knd_A280_mag",
	["knd_rps6_disposable", 15],
	["ls_explosive_demoCharge_magazine", 10],
	["ls_explosive_breachCharge_magazine", 10],
    ["ls_explosive_detpack_magazine", 7]
];

private _vests =  ("getNumber (_x /'scope') == 2 && getNumber (_x /'itemInfo' /'type') == 701" configClasses (configFile /"cfgWeapons") apply {configName _x}); 
private _uniforms = ("getNumber (_x /'scope') == 2 && getNumber (_x /'itemInfo' /'type') == 801" configClasses (configFile /"cfgWeapons") apply {configName _x});
private _nvgs = ("getNumber (_x /'scope') == 2 && getNumber (_x /'itemInfo' /'type') == 616" configClasses (configFile /"cfgWeapons") apply {configName _x});
private _headgear = ("getNumber (_x /'scope') == 2 && getNumber (_x /'itemInfo' /'type') == 605" configClasses (configFile /"cfgWeapons") apply {configName _x});
_uniforms = _uniforms select {
    private _displayName = getText (configFile >> "CfgWeapons" >> _x >> "DisplayName"); 
    !("[O]" in _displayName) && ("knd" in toLower _x) && !("opfor" in toLower _x)
};
_vests = _vests select {
    private _displayName = getText (configFile >> "CfgWeapons" >> _x >> "DisplayName"); 
    !("[O]" in _displayName) && ("knd" in toLower _x) && !("opfor" in toLower _x)
};
_nvgs = _nvgs select {
    private _displayName = getText (configFile >> "CfgWeapons" >> _x >> "DisplayName"); 
    !("[O]" in _displayName) && ("knd" in toLower _x) && !("opfor" in toLower _x)
};
_headgear = _headgear select {
    private _displayName = getText (configFile >> "CfgWeapons" >> _x >> "DisplayName"); 
    !("[O]" in _displayName) && toLower "knd" in toLower _x && !("opfor" in toLower _x)
};
_initialRebelEquipment append (_uniforms + _vests + _headgear + _nvgs);

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","ls_radios_hush98"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","Black_WM_Rebel_Radio"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","ls_radios_hush98"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["ls_radios_hush98","Black_WM_Rebel_Radio"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;
["vests", _vests] call _fnc_saveToTemplate;
["nvgs", _nvgs] call _fnc_saveToTemplate;

private _rebUniforms = [];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append [];
};

if (_hasApex) then {_dlcUniforms append [];
};

["uniforms", _uniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", [] + _headgear] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
["faces", [
    "WhiteHead_27",
    "Barklem",
    "ls_chiss_male2_blue",
    "ls_chiss_male1_purple",
    "ls_mirialan_male1_green",
    "ls_mirialan_male2_sand",
    "ls_mirialan_male3_yellow",
    "ls_zabrak_male1t0_base",
    "ls_zabrak_male1t1_pale",
    "ls_zeltron_male1_red",
    "ls_zeltron_male3_pink",
    "ls_cloneC",
    "GreekHead_A3_12",
    "AfricanHead_01",
    "WhiteHead_03",
    "WhiteHead_05",
    "GreekHead_A3_10_a"
    ]] call _fnc_saveToTemplate;
["voices", ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05GRE","Male10ENG","Male03POL","Male01CHI","Male02PER","Male01RUS","Male01ENGFRE","Male02FRE"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", ["ls_jabiimGlasses_goggles"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

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
    ["Petros", _squadLeaderTemplate],
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
