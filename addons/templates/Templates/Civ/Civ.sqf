//////////////////////////////
//   Civilian Information   //
//////////////////////////////

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesCivCar", [
    "JMSLLTE_C_veh_x34_F", 1.0,
    "JMSLLTE_C_veh_v35c_F", 0.5,
    "JMSLLTE_C_veh_v35_F", 0.5,
    "JMSLLTE_C_veh_g17_F", 1.0
]] call _fnc_saveToTemplate;

["vehiclesCivIndustrial", [
    "JMSLLTE_C_veh_AA5_F", 0.5,
    "JMSLLTE_C_veh_AA2_F", 0.5
]] call _fnc_saveToTemplate;

["vehiclesCivBoat", [
    "C_Boat_Civil_01_F", 0.5,
    "C_Scooter_Transport_01_F", 0.5
]] call _fnc_saveToTemplate;

["vehiclesCivRepair", ["JMSLLTE_C_veh_AA5sup_F", 0.3]] call _fnc_saveToTemplate;

["vehiclesCivMedical", ["JMSLLTE_C_veh_AA2_F", 0.1]] call _fnc_saveToTemplate;

["vehiclesCivFuel", [
    "C_Van_01_fuel_F", 0.2,
    "C_Truck_02_fuel_F", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivHeli", ["3AS_Aegis_Shuttle_Civ_Green"]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////
["currencySymbol", "₹"] call _fnc_saveToTemplate;

["faces", ["GreekHead_A3_02", "GreekHead_A3_03", "GreekHead_A3_04", "GreekHead_A3_05", "GreekHead_A3_06",
"GreekHead_A3_07", "GreekHead_A3_08", "GreekHead_A3_09", "Ioannou", "Barklem", "AfricanHead_02",
"AsianHead_A3_02", "AsianHead_A3_03", "WhiteHead_05","B_female_bun_01",
"ls_zeltron_male1_crimson",
"ls_zeltron_male3_crimson",
 "ls_zabrak_male1t0_base",
 "ls_mirialan_male2_yellow",
 "ls_mirialan_male1_green",
 "ls_mirialan_male3_yellow",
 "Head_Chiss1",
 "Head_Chiss2",
 "Head_DurosBlue",
 "Head_DurosBlue2",
 "Head_DurosGreen",
 "Head_DurosGrey",
 "Head_IshiGreen",
 "Head_QuarrenPink",
 "Head_RodianOlive",
 "Head_RodianGreen",
 "Head_AbedDark",
 "Head_AqualishGreen",
 "Head_AqualishLight",
 "Head_AbedPink",
 "Head_AqualishBrown",
 "max_female15",
 "max_female7",
 "max_female9"
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "JMSLLTE_EmpNavyCrew_red_F_CombatUniform",
    "JMSLLTE_c_genshirt_beige_F_CombatUniform",
    "JMSLLTE_c_genshirt_blue_F_CombatUniform",
    "JMSLLTE_c_genshirt2_beige_F_CombatUniform",
    "JMSLLTE_c_genshirt2_black_F_CombatUniform",
    "ls_uniform_pathfinder",
    "ls_uniform_pathfinder_brown",
    "ls_uniform_pathfinder_brown_r",
    "ls_uniform_pathfinder_navy_alt",
    "ls_uniform_pathfinder_navy_alt_r",
    "ls_uniform_pathfinder_navy",
    "ls_uniform_pathfinder_navy_r",
    "ls_uniform_pathfinder_r",
    "ls_uniform_spacer",
    "ls_uniform_spacer_alt",
    "ls_uniform_spacer_brown",
    "ls_uniform_spacer_brown_alt"
];

private _pressUniforms = [
    "ls_orsfUniform_trooper"
];

private _workerUniforms = [
    "JMSLLTE_c_jumpsuit_blue_F_CombatUniform",
    "JMSLLTE_c_jumpsuit_green_F_CombatUniform",
    "JMSLLTE_c_jumpsuit_sand_F_CombatUniform"
];

private _dlcUniforms = [];

private _vipUniforms = [
    "JMSLLTE_ScumOfficer_orange_F_CombatUniform"
];

["uniforms", _civUniforms + _pressUniforms + _workerUniforms + _dlcUniforms + _vipUniforms] call _fnc_saveToTemplate;

private _civhats = [
    "ls_helmet_jockey_alt",
    "ls_helmet_jockey",
    "ls_helmet_jockey_navy_alt",
    "ls_helmet_jockey_navy",
    "JMSLLTE_OfheadPh_helmet",
    "JMSLLTE_Ofcap_helmet",
    "JMSLLTE_PathL_brown_cap"
];

["headgear", _civHats] call _fnc_saveToTemplate;

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["JMSLLTE_NavyChest_armor"]];
_loadoutData set ["helmets", _civHats];
_loadoutData set ["pressHelmets", ["JMSLLTE_PlastHv_bl_helmet"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["vipUniforms", _vipUniforms];
_loadoutData set ["sidearms", ["knd_A300_Pistol_F","knd_dl40"]];

private _manTemplate = {
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _vipTemplate = {
    ["vipUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;
};

private _prefix = "militia";
private _unitTypes = [
    ["VIP", _vipTemplate],
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;