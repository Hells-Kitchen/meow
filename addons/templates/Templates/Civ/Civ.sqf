private _hasApex = "expansion" in A3A_enabledDLC;

private _hasSFA = isClass (configFile >> "CfgPatches" >> "SFA_Core");

//////////////////////////////
//   Civilian Information   //
//////////////////////////////

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesCivCar", [
    "ls_vehicle_v35", 1.8,
    "ls_vehicle_105kLancer_civ", 1.4
    ]] call _fnc_saveToTemplate;

["vehiclesCivIndustrial", [
    "JMSLLTE_C_veh_AA5_F", 1.0
]] call _fnc_saveToTemplate;

["vehiclesCivBoat", [
    "C_Boat_Civil_01_rescue_F", 0.1            // motorboats
    ,"C_Boat_Civil_01_F", 1.0
    ,"C_Rubberboat", 1.0                    // rescue boat
    ,"C_Boat_Transport_02_F", 1.0            // RHIB
    ,"C_Scooter_Transport_01_F", 0.5]] call _fnc_saveToTemplate;

["vehiclesCivRepair", [
    "JMSLLTE_C_veh_AA5sup_F", 0.3]] call _fnc_saveToTemplate;

["vehiclesCivMedical", ["AGD_Truck_Civ", 0.1]] call _fnc_saveToTemplate;

["vehiclesCivFuel", [
    "AGD_Truck_Civ_Fuel", 0.2]] call _fnc_saveToTemplate;


["vehiclesCivHeli", ["3AS_Aegis_Shuttle_Civ_Green"]] call _fnc_saveToTemplate;

/////////////////////////////////
///  Identities and currency  ///
////////////////////////////////

["currencySymbol", "Credits"] call _fnc_saveToTemplate;

["faces", [
    "GreekHead_A3_03",
	"GreekHead_A3_04",
	"GreekHead_A3_06",
	"WhiteHead_26",
	"LivonianHead_6",
	"GreekHead_A3_12",
	"ls_mirialan_male1_green",
	"ls_mirialan_male1_sand",
	"ls_mirialan_male1_yellow",
	"ls_mirialan_male2_green",
	"ls_mirialan_male2_sand",
	"ls_mirialan_male2_yellow",
	"ls_mirialan_male3_green",
	"ls_mirialan_male3_sand",
	"ls_mirialan_male3_yellow",
	"ls_zelosian_male1",
	"ls_zelosian_male2",
	"ls_zelosian_male3",
	"ls_zeltron_male1_crimson",
	"ls_zeltron_male1_pink",
	"ls_zeltron_male1_red",
	"ls_zeltron_male2_crimson",
	"ls_zeltron_male2_pink",
	"ls_zeltron_male2_red",
	"ls_zeltron_male3_crimson",
	"ls_zeltron_male3_pink",
	"ls_zeltron_male3_red",
	"LivonianHead_9",
	"ls_chiss_male1_blue",
	"ls_chiss_male1_ice",
	"ls_chiss_male1_purple",
	"ls_chiss_male2_blue",
	"ls_chiss_male2_ice",
	"ls_chiss_male2_purple",
	"ls_chiss_male3_blue",
	"ls_chiss_male3_ice",
	"ls_chiss_male3_purple",
	"WhiteHead_24",
	"AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem",
	"GreekHead_A3_05","GreekHead_A3_07","WhiteHead_01","WhiteHead_02",
	"WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07",
	"WhiteHead_08","WhiteHead_09","WhiteHead_11","WhiteHead_12","WhiteHead_14",
	"WhiteHead_15","WhiteHead_16","WhiteHead_18","WhiteHead_19","WhiteHead_20",
	"WhiteHead_21","WhiteHead_23", "WhiteHead_24", "WhiteHead_25",
	"WhiteHead_26", "WhiteHead_27", "WhiteHead_28", "WhiteHead_29", "WhiteHead_30", "WhiteHead_31", "WhiteHead_32",
	"TanoanHead_A3_02","TanoanHead_A3_04","TanoanHead_A3_03","TanoanHead_A3_05","TanoanHead_A3_07","TanoanHead_A3_01","TanoanHead_A3_06","TanoanHead_A3_09",
	"TanoanHead_A3_08","RussianHead_4","LivonianHead_5","LivonianHead_2","LivonianHead_9","RussianHead_1","LivonianHead_6","LivonianHead_3","RussianHead_3",
	"LivonianHead_1","RussianHead_2","LivonianHead_10","LivonianHead_8","LivonianHead_4","LivonianHead_7","RussianHead_5","Sturrock",
	"WhiteHead_22_l","WhiteHead_22_sa","WhiteHead_22_a"
]] call _fnc_saveToTemplate;
["faces", _faces] call _fnc_saveToTemplate;

if (_hasSFA) then {
    _faces append [
		"Head_SFA_Selkath_01",
        "Head_SFA_Selkath_02",
        "Head_SFA_Selkath_03",
        "Head_SFA_Selkath_04",
        "Head_SFA_Selkath_05",
        "Head_SFA_Selkath_06",
        "Head_SFA_Trandoshan_01",
        "Head_SFA_Trandoshan_02",
        "Head_SFA_Trandoshan_03",
        "Head_SFA_Trandoshan_04",
        "Head_SFA_Twilek_01",
        "Head_SFA_Twilek_02",
        "Head_SFA_Twilek_03",
        "Head_SFA_Twilek_04",
        "Head_SFA_Twilek_05"
	];
};
//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "AGD_Spacer_Uniform1",
    "AGD_Spacer_Uniform1_Alt",
    "AGD_Spacer_Uniform2",
    "AGD_Spacer_Uniform2_Alt",
    "AGD_Spacer_Uniform3",
    "AGD_Spacer_Uniform3_Alt",
    "AGD_Spacer_Uniform4",
    "AGD_Spacer_Uniform4_Alt",
    "AGD_Spacer_Uniform5",
    "AGD_Spacer_Uniform5_Alt",
    "AGD_Spacer_Uniform6",
    "AGD_Spacer_Uniform6_Alt",
    "AGD_Spacer_Uniform7",
    "AGD_Spacer_Uniform7_Alt",
    "AGD_Spacer_Uniform8",
    "AGD_Spacer_Uniform8_Alt",
    "AGD_Worker_Uniform6",
    "AGD_Worker_Uniform7",
    "AGD_Worker_Uniform8",
    "AGD_Worker_Uniform9",
    "ls_uniform_pathfinder",
    "WM_ParaMilitary_Tee",
    "WM_ParaMilitary_Dst_Shirt",
    "3AS_U_Imperial_Army_Recruit_F",
    "WM_ArmyUniform",
    "ls_mandalorianUniform"
];

private _pressUniforms = [
    "ls_orsfUniform_trooper"
    ];

private _workerUniforms = [
    "AGD_Worker_Uniform1",
    "AGD_Worker_Uniform2",
    "AGD_Worker_Uniform3",
    "AGD_Worker_Uniform4",
    "AGD_Worker_Uniform5",
    "AGD_Worker_Uniform6",
    "AGD_Worker_Uniform7",
    "AGD_Worker_Uniform8",
    "AGD_Worker_Uniform9"
    ];

private _dlcUniforms = [];
["uniforms", _civUniforms + _pressUniforms + _workerUniforms + _dlcUniforms] call _fnc_saveToTemplate;

private _civhats = [];

["headgear", _civHats] call _fnc_saveToTemplate;

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["V_Press_F"]];
_loadoutData set ["helmets", _civHats];
_loadoutData set ["pressHelmets", _civHats];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];


private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    ["helmets"] call _fnc_setHelmet;
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
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;