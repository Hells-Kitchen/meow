private _hasKND = isClass (configFile >> "CfgPatches" >> "knd_common");
private _hasLLTE = isClass (configFile >> "CfgPatches" >> "JMSLLTE_empire_mod");

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Galactic Empire"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "Imperial"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", "\ls\core\addons\data\flags\flag_imperial_ca.paa"] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "Galactic_Empire"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

private _vehiclesBasic = ["WM_ITT_Imperial"];
private _vehiclesLightUnarmed = ["WM_74Z_Imperial_Brown"];
private _vehiclesLightArmed = ["WM_ITT_Imperial"];
private _vehiclesTrucks = ["WM_ITT_Imperial"];
private _vehiclesCargoTrucks = ["3AS_ITT_Logistic"];
private _vehiclesAmmoTrucks = ["AGD_Truck_Imp_Ammo"];
private _vehiclesRepairTrucks = ["AGD_Truck_Imp_Repair"];
private _vehiclesFuelTrucks = ["AGD_Truck_Imp_Fuel"];
private _vehiclesMedical = ["3AS_ITT_Medical"];
private _vehiclesAPCs = ["3AS_PX10_IMP_F", "3AS_PX10_IMP_UP", "WM_ATST"];
private _vehiclesTanks = ["WM_M1", "3AS_Jug_Imperial", "3AS_ATAT", "3AS_ATTE_Imperial"];
private _vehiclesAA = ["3AS_RX200_Base"];
private _vehiclesLightAPCs = ["WM_74Z_Imperial_Brown"];
private _vehiclesIFVs = [];

private _vehiclesDropPod = ["3AS_EscapePod"];
private _vehiclesCapitalShip = ["WM_ImperialISD"];
private _vehiclesAirborne = ["WM_Lambda","3AS_LAAT_Mk2_Imperial"];

private _vehiclesTransportBoats = ["WM_ITT_Imperial"];
private _vehiclesGunBoats = ["WM_ITT_Imperial"];
private _vehiclesAmphibious = ["3AS_Jug_Imperial"];

private _vehiclesPlanesCAS = ["WM_TieBomber"];
private _vehiclesPlanesAA = ["WM_Tiefighter", "WM_TieInterceptor", "3AS_VWing_Imperial"];
private _vehiclesPlanesTransport = ["3AS_Nu_IMP_F"];

private _vehiclesHelisLight = ["ls_vehicle_laatle_transportGunship","3AS_Imp_LAS_F"];
private _vehiclesHelisTransport = ["WM_Lambda","3AS_LAAT_Mk2_Imperial"];
private _vehiclesHelisLightAttack = ["ls_vehicle_laatle"];
private _vehiclesHelisAttack = ["3AS_LAAT_Mk2_Imperial"];

private _vehiclesAirPatrol = ["ls_vehicle_laatle_transportGunship"];
private _vehiclesPlanesLargeCAS = ["3AS_Gozanti_F"];
private _vehiclesPlanesLargeAA = ["3AS_Gozanti_F"];
private _vehiclesPlanesGunship = ["3AS_LAAT_Mk1_Imperial"];

private _vehiclesArtillery = ["3AS_AV7"];

private _uavsAttack = [];
private _uavsPortable = ["3AS_H3NR1_Drone_Scout_Imperial"];

private _vehiclesMilitiaLightArmed = ["3AS_ITT_Logistic"];
private _vehiclesMilitiaTrucks = ["3AS_ITT_Logistic"];
private _vehiclesMilitiaCars = ["WM_74Z_Imperial_Brown"];
private _vehiclesMilitiaAPCs = ["3AS_PX10_IMP_F"];

private _vehiclesPolice = ["WM_74Z_Imperial_Brown"];

if (_hasKND) then {
	_vehiclesBasic append ["knd_vehicles_imperial_cph"];
    _vehiclesPolice append ["knd_vehicles_imperial_cph"];
    _vehiclesCargoTrucks append ["knd_vehicles_agrihauler_freight"];
    _vehiclesFuelTrucks append ["knd_vehicles_agrihauler_fuel"];
    _vehiclesAmmoTrucks append ["knd_vehicles_agrihauler_freight"];
    _vehiclesRepairTrucks append ["knd_vehicles_agrihauler_freight"];
    _vehiclesMilitiaTrucks append ["knd_vehicles_agrihauler_base"];
};
if (_hasLLTE) then {
    _vehiclesBasic append ["JMSLLTE_B_veh_LIUSt_imp_F"];
    _vehiclesLightArmed append ["JMSLLTE_B_veh_LIUSeweb_imp_F"];
    _vehiclesPolice append ["JMSLLTE_B_veh_LIUSt_imp_F"];
    _vehiclesTanks append ["JMSLLTE_veh_S1firehawke_emp_F"];
    _vehiclesAPCs append ["JMSLLTE_vehgr_ATST_F"];
    _vehiclesHelisTransport append ["JMSLLTE_veh_IDT_inf_empire"];
    _vehiclesHelisAttack append ["JMSLLTE_veh_IDT_inf_empire"];
    _vehiclesPlanesAA append ["JMSLLTE_TIEag_emp_F","JMSLLTE_TIEinterceptor_veh_F","JMSLLTE_TIEstriker_emp_F"];
    _uavsAttack append ["JMSLLTE_veh_viper_empire"];
};

["vehiclesBasic", _vehiclesBasic] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed",  _vehiclesLightUnarmed] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", _vehiclesTrucks] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", _vehiclesCargoTrucks] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", _vehiclesAmmoTrucks] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", _vehiclesRepairTrucks] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", _vehiclesFuelTrucks] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", _vehiclesMedical] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", _vehiclesAPCs] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", _vehiclesTanks] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", _vehiclesAA] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", _vehiclesLightAPCs] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", _vehiclesIFVs] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesDropPod", _vehiclesDropPod] call _fnc_saveToTemplate;
["vehiclesCapitalShip", _vehiclesCapitalShip] call _fnc_saveToTemplate;	//capital ship QRF support (requires Sci-fi Support PLUS) -- Array, only needs to be non-empty
["vehiclesAirborne", _vehiclesAirborne] call _fnc_saveToTemplate;	//orbital QRF support - aircraft that can carry troops

["vehicleRadar", "ls_vehicle_radarDish_blufor"] call _fnc_saveToTemplate;
["vehicleSam", "3as_XX9"] call _fnc_saveToTemplate;

["vehiclesTransportBoats", _vehiclesTransportBoats] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", _vehiclesGunBoats] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", _vehiclesAmphibious] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", _vehiclesPlanesCAS] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", _vehiclesPlanesAA] call _fnc_saveToTemplate; 			//this line determines air supperiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", _vehiclesPlanesTransport] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", _vehiclesHelisLight] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", _vehiclesHelisTransport] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", _vehiclesHelisLightAttack] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", _vehiclesHelisAttack] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesAirPatrol", _vehiclesAirPatrol] call _fnc_saveToTemplate;
["vehiclesPlanesLargeCAS", _vehiclesPlanesLargeCAS] call _fnc_saveToTemplate;
["vehiclesPlanesLargeAA", _vehiclesPlanesLargeAA] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", _vehiclesPlanesGunship] call _fnc_saveToTemplate;

["vehiclesArtillery", _vehiclesArtillery] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
["3AS_AV7", ["3AS_32Rnd_300mm_Mo_shells"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", _uavsAttack] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", _uavsPortable] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", _vehiclesMilitiaLightArmed] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", _vehiclesMilitiaTrucks] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", _vehiclesMilitiaCars] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesMilitiaAPCs", _vehiclesMilitiaAPCs] call _fnc_saveToTemplate;     					//this line determines militia APCs

["vehiclesPolice", _vehiclesPolice] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

private _StaticMGsOptions = ["ls_vehicle_mrbc", "3AS_HeavyRepeater_Armoured"];
["staticMGs", _StaticMGsOptions] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
private _StaticATOptions = ["AGD_Shellcracker_AT"];
["staticAT", _StaticATOptions] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
private _StaticAAOptions = ["AGD_Shellcracker_AA"];
["staticAA", _StaticAAOptions] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
private _StaticMortarsOptions = ["WM_ImperialMortar"];
["staticMortars", _StaticMortarsOptions] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
private _StaticHowitzersOptions = [];
["staticHowitzers", _StaticHowitzersOptions] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;		//this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;			//this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

//Minefield definition
["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

["sandbagRound", "3AS_Barricade_2_C_Prop"] call _fnc_saveToTemplate;

["animations", [
    ["I_APC_Wheeled_03_cannon_F", ["showCamonetHull", 0.25, "showSLATHull", 0.3]],
    ["I_MBT_03_cannon_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.25, "HideTurret", 0.3, "HideHull", 0.3]],
    ["I_APC_tracked_03_cannon_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.3, "showTools", 0.3, "showSLATHull", 0.3, "showSLATTurret", 0.3]],
    ["I_LT_01_AA_F", ["showCamonetHull", 0.3, "showTools", 0.25, "showSLATHull", 0.3]],
    ["I_LT_01_AT_F", ["showCamonetHull", 0.3, "showTools", 0.25, "showSLATHull", 0.3]],
    ["I_LT_01_cannon_F", ["showCamonetHull", 0.3, "showTools", 0.25, "showSLATHull", 0.3]]
]] call _fnc_saveToTemplate;		//this makes specified vehicles randomly spawn with specified cosmetics applied

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "WhiteHead_20",
    "WhiteHead_15",
    "WhiteHead_30",
    "WhiteHead_14",
    "TanoanHead_A3_01",
    "WhiteHead_29",
    "WhiteHead_10",
    "AsianHead_A3_04",
    "WhiteHead_27",
    "WhiteHead_28",
    "RussianHead_1",
    "WhiteHead_26",
    "AfricanHead_02",
    "WhiteHead_24",
    "ls_cloneA",
    "Ioannou",
    "Mavros"
]] call _fnc_saveToTemplate;
["voices", ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB","Male06ENGB"]] call _fnc_saveToTemplate;

["insignia", ["", "", ""]] call _fnc_saveToTemplate;
["milInsignia", ["", "", ""]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", [
["3AS_RPS6_F", "", "", "", [], [], ""],
["3AS_RPS6_G", "", "3AS_Imp_Light_E11", "", [], [], ""],
["JLTS_RPS6", "", "3AS_Imp_Light_E11", "", ["JLTS_RPS6_HE_mag", "JLTS_RPS6_mag"], [], ""]
]];
_loadoutData set ["ATLaunchers", ["3AS_HH12_F", "3AS_RPS6_HP"]];
_loadoutData set ["missileATLaunchers", [
["3AS_PLX1_F", "", "3AS_Imp_Light_E11", "", ["3AS_JLTS_MK43_AT"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["3AS_PLX1_AA", "", "3AS_Imp_Light_E11", "", ["3AS_JLTS_MK39_AA"], [], ""]
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]]; 					//this line determines the AT mines which can be carried by units -- Example: ["ATMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]]; 					//this line determines the APERS mines which can be carried by units -- Example: ["APERSMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["lightExplosives", ["ls_explosive_demoCharge_magazine"]]; 			//this line determines light explosives -- Example: ["DemoCharge_Remote_Mag"] -- Array, can contain multiple assets
_loadoutData set ["heavyExplosives", ["ls_explosive_detpack_magazine"]]; 			//this line determines heavy explosives -- Example: ["SatchelCharge_Remote_Mag"] -- Array, can contain multiple assets

_loadoutData set ["antiInfantryGrenades", ["ls_grenade_thermalDetClassA_magazine", "3AS_SonicDet"]]; 		//this line determines anti infantry grenades (frag and such) -- Example: ["HandGrenade", "MiniGrenade"] -- Array, can contain multiple assets
_loadoutData set ["antiTankGrenades", ["3AS_ThrowableCharge"]]; 			//this line determines anti tank grenades. Leave empty when not available. -- Array, can contain multiple assets
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellBlue"]];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];				//this line determines map
_loadoutData set ["watches", ["ItemWatch"]];		//this line determines watch
_loadoutData set ["compasses", ["ItemCompass"]];	//this line determines compass
_loadoutData set ["radios", ["ItemRadio"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["ls_nvg_goggles"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["Binocular"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["stormUniforms", ["WM_StormArmor"]];
_loadoutData set ["stormVests", ["WM_Basic_armor","WM_Pauldron","ls_gar_cfr_vest","ls_vest_holster_maroon"]];
_loadoutData set ["stormHats", ["WM_StormHelmet"]];

_loadoutData set ["stormSniperUniforms", ["WM_ScoutArmor"]];
_loadoutData set ["stormSniperVests", ["WM_ScoutVest"]];
_loadoutData set ["stormSniperHats", ["WM_ScoutHelmet"]];

_loadoutData set ["traitorUniforms", ["WM_ParaMilitary_Shirt_Rolled"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["ls_imperialVest_army_damaged"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["ls_helmet_jockey_alt"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["ls_imperialUniform_army_armored_black"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["ls_imperialVest_officer"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["WM_OfficerHelmet", "ls_imperialHelmet_kepi_g_black"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["sniUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["ls_cloneVest_recon"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["WM_Stormtrooper_Backpack_RTO"]];
_loadoutData set ["atBackpacks", ["WM_Artillery_Pack"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", ["H_Beret_blk", "H_MilCap_dgtl"]];
_loadoutData set ["sniHats", ["H_Booniehat_dgtl"]];

_loadoutData set ["glasses", ["ls_imperial_earPiece"]];	//cosmetics
_loadoutData set ["goggles", ["ls_imperial_earPiece"]];		//cosmetics

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
private _sfUniformsOptions = ["ls_imperialUniform_army_armored_isb", "ls_imperialUniform_army_armored_r_isb"];
_sfLoadoutData set ["uniforms", _sfUniformsOptions];
private _sfSlUniformsOptions = ["ls_imperialUniform_army_armored_r_isb"];
_sfLoadoutData set ["slUniforms", _sfSlUniformsOptions];
private _sfVestsOptions = ["ls_imperialVest_army_ISB_h", "ls_imperialVest_army_ISB"];
_sfLoadoutData set ["vests", _sfVestsOptions];
private _sfHvestsOptions = ["ls_imperialVest_isb_heavy_h"];
_sfLoadoutData set ["Hvests", _sfHvestsOptions];
private _sfBackpacksOptions = ["ls_imperialBackpack_chestRigPouch", "ls_imperialBackpack_chestRig"];
_sfLoadoutData set ["backpacks", _sfBackpacksOptions];
private _sfHelmetsOptions = ["ls_imperialHelmet_army_isb", "ls_imperialHelmet_army_gd_isb", "ls_imperialHelmet_army_gu_isb", "ls_imperialHelmet_army_gur_isb", "ls_imperialHelmet_army_gdr_isb"];
_sfLoadoutData set ["helmets", _sfHelmetsOptions];
private _sfBinocularsOptions = ["JLTS_CloneBinocular_black"];
_sfLoadoutData set ["binoculars", _sfBinocularsOptions];
private _sfSlHatOptions = ["ls_imperialHelmet_kepi_g_isb"];
_sfLoadoutData set ["slHat", _sfSlHatOptions];
private _sfStormUniformsOptions = ["WM_ShadowArmor"];
_sfLoadoutData set ["stormUniforms", _sfStormUniformsOptions];
private _sfStormVestsOptions = ["WM_Pauldron"];
_sfLoadoutData set ["stormVests", _sfStormVestsOptions];
private _sfStormHatsOptions = ["WM_ShadowHelmet"];
_sfLoadoutData set ["stormHats", _sfStormHatsOptions];
private _sfStormSniperUniformsOptions = ["WM_StormCommandoArmor"];
_sfLoadoutData set ["stormSniperUniforms", _sfStormSniperUniformsOptions];
private _sfStormSniperVestsOptions = ["WM_ScoutVest"];
_sfLoadoutData set ["stormSniperVests", _sfStormSniperVestsOptions];
private _sfStormSniperHatsOptions = ["WM_StormCommandoHelmet"];
_sfLoadoutData set ["stormSniperHats", _sfStormSniperHatsOptions];

private _sfSlRiflesOptions = [
["agd_weapons_E11Stock", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "ls_cows_e11_optic_thermal", [], [], ""],
["agd_weapons_E11Stock", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "3AS_optic_DC15L_F", [], [], ""],
["agd_weapons_E11_GL", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "optic_tws_mg", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "ls_cows_e11_optic_thermal", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""]
];
_sfLoadoutData set ["slRifles", _sfSlRiflesOptions];
private _sfRiflesOptions = [
["agd_weapons_E11D", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_optic_DC15X_F", [], [], ""]
];
_sfLoadoutData set ["rifles", _sfRiflesOptions];
private _sfCarbinesOptions = [
["agd_weapons_E11D", "", "3AS_Imp_Light_E11", "3AS_optic_DC15C_F", [], [], ""],
["agd_weapons_DC17M_F", "", "", "", [], [], ""]
];
_sfLoadoutData set ["carbines", _sfCarbinesOptions];
private _sfGrenadeLaunchersOptions = [
["agd_weapons_MPL_F", "", "", "", ["3AS_3Rnd_HE_Grenade_shell", "3AS_3Rnd_HEAT_Grenade_shell"], [], ""],
["agd_weapons_E11_GL", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""]
];
_sfLoadoutData set ["grenadeLaunchers", _sfGrenadeLaunchersOptions];

private _sfSMGsOptions = [
["agd_weapons_E11D", "", "3AS_Imp_Light_E11", "", [], [], ""]
];
_sfLoadoutData set ["SMGs", _sfSMGsOptions];

private _mgs = [
    ["agd_weapons_DLT19", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_1", ["3AS_200Rnd_EM40_DLT19_Mag"], [], "bipod_03_F_blk"],
    ["agd_weapons_DC15L_F", "3AS_muzzle_DC15LE_F", "3AS_Imp_Light_E11", "optic_tws_mg", ["3AS_200Rnd_EM40_Mag"], [], "3AS_bipod_DC15L_F"]
];

_sfLoadoutData set ["machineGuns", _mgs];

private _sfMarksmanRiflesOptions = [
    ["agd_weapons_firepuncher", "", "3AS_Imp_Light_E11", "ls_cows_mercenarySniper_scope", [], [], "3AS_Imp_Bipod_DLT19"],
    ["agd_weapons_DLT19D", "", "3AS_Imp_Light_E11", "", [], [], "3AS_Imp_Bipod_DLT19"]
];
_sfLoadoutData set ["marksmanRifles", _sfMarksmanRiflesOptions];
private _sfSniperRiflesOptions = [
["agd_weapons_firepuncher", "", "3AS_Imp_Light_E11", "ls_cows_mercenarySniper_scope", [], [], "3AS_Imp_Bipod_DLT19"]
];
_sfLoadoutData set ["sniperRifles", _sfSniperRiflesOptions];
private _sfSidearmsOptions = [
["3AS_FE20_GrenadeLauncherPistol", "", "", "", ["3AS_1UGL_MK54_HE_shell"], [], ""]
];
_sfLoadoutData set ["sidearms", _sfSidearmsOptions];

if (_hasKND) then {
    (_sfLoadoutData get "rifles") append [
        ["agd_plusknd_DC19_F", "", "", "knd_t21B_scope_attachment", [], [], ""]
    ];
    (_sfLoadoutData get "machineGuns") append [
        ["agd_plusknd_m32", "", "", "", [], [], ""],
        ["agd_plusknd_roba_F", "", "", "knd_dl44_scope_attachment", [], [], ""]
    ];
    (_sfLoadoutData get "marksmanRifles") append [
        ["agd_plusknd_relby_sap", "", "", "", [], [], ""]
    ];
    (_sfLoadoutData get "sniperRifles") append [
        ["agd_plusknd_AMR_F", "", "", "knd_amr_scope_attachment", [], [], "3AS_bipod_DC15X_F"],
        ["agd_plusknd_NT242", "", "", "", [], [], ""]
    ];
};

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
private _eliteUniformsOptions = ["WM_StormArmor"];
_eliteLoadoutData set ["uniforms", _eliteUniformsOptions];
private _eliteSlUniformsOptions = ["WM_ArtilleryArmor"];
_eliteLoadoutData set ["slUniforms", _eliteSlUniformsOptions];
private _eliteVestsOptions = ["ls_gar_cfr_vest", "ls_vest_holster"];
_eliteLoadoutData set ["vests", _eliteVestsOptions];
private _eliteHvestsOptions = ["WM_Pauldron"];
_eliteLoadoutData set ["Hvests", _eliteHvestsOptions];
private _eliteBackpacksOptions = ["3AS_B_Imperial_Stormtrooper_Backpack_F", "3AS_B_Imperial_Stormtrooper_Backpack_RTO_F", "3AS_B_Imperial_Stormtrooper_Backpack_Sand_F", "3AS_B_Imperial_Stormtrooper_Backpack_Medic_F"];
_eliteLoadoutData set ["backpacks", _eliteBackpacksOptions];
private _eliteHelmetsOptions = ["WM_StormHelmet"];
_eliteLoadoutData set ["helmets", _eliteHelmetsOptions];
private _eliteSlHatOptions = ["WM_ArtilleryHelmet"];
_eliteLoadoutData set ["slHat", _eliteSlHatOptions];
private _eliteBinocularsOptions = ["ls_clone_electrobinocularsCommander"];
_eliteLoadoutData set ["binoculars", _eliteBinocularsOptions];
private _eliteStormUniformsOptions = ["WM_ShockArmor"];
_eliteLoadoutData set ["stormUniforms", _eliteStormUniformsOptions];
private _eliteStormVestsOptions = ["WM_Basic_armor"];
_eliteLoadoutData set ["stormVests", _eliteStormVestsOptions];
private _eliteStormHatsOptions = ["WM_ShockHelmet"];
_eliteLoadoutData set ["stormHats", _eliteStormHatsOptions];
private _eliteStormSniperUniformsOptions = ["WM_StormCommando_ForestArmor"];
_eliteLoadoutData set ["stormSniperUniforms", _eliteStormSniperUniformsOptions];
private _eliteStormSniperVestsOptions = ["WM_ScoutVest"];
_eliteLoadoutData set ["stormSniperVests", _eliteStormSniperVestsOptions];
private _eliteStormSniperHatsOptions = ["WM_StormCommando_ForestHelmet"];
_eliteLoadoutData set ["stormSniperHats", _eliteStormSniperHatsOptions];

private _eliteSlRiflesOptions = [
["agd_weapons_E11", "3AS_Muzzle_Arkanian_Pistol_1_F", "3AS_Imp_Light_E11", "optic_ACO_grn", [], [], ""],
["agd_weapons_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Laser_E11", "ls_cows_e11_optic_thermal", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "3AS_Muzzle_Arkanian_Pistol_1_F", "3AS_Imp_Laser_E11", "3AS_Optic_Arkanian_1_F", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_WestarM5_F", "", "3AS_Imp_Light_E11", "3AS_optic_DC15X_F", ["3AS_60Rnd_EM50_RedPlasma"], [], ""]
];
_eliteLoadoutData set ["slRifles", _eliteSlRiflesOptions];
private _eliteRiflesOptions = [
["agd_weapons_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_E11", "ls_muzzle_westar35s_suppressor", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_T21", "", "", "3AS_Optic_Arkanian_1_F", [], [], ""]
];
_eliteLoadoutData set ["rifles", _eliteRiflesOptions];
private _eliteCarbinesOptions = [
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", ["3AS_40Rnd_EM40_Mag"], [], ""],
["agd_weapons_DC15C_F", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", ["3AS_40Rnd_EM40_Mag"], [], ""]
];
_eliteLoadoutData set ["carbines", _eliteCarbinesOptions];
private _eliteGrenadeLaunchersOptions = [
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "optic_ACO_grn", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "optic_Aco", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""]
];
_eliteLoadoutData set ["grenadeLaunchers", _eliteGrenadeLaunchersOptions];
private _eliteSMGsOptions = [
["agd_weapons_E11", "", "3AS_Imp_Light_E11", "optic_Aco", [], [], ""],
["agd_weapons_E11", "", "3AS_Imp_Light_E11", "optic_Aco", [], [], ""]
];
_eliteLoadoutData set ["SMGs", _eliteSMGsOptions];

private _eliteMachineGunsOptions = [
    ["agd_weapons_T21", "", "", "", [], [], ""],
    ["agd_weapons_DLT19", "", "3AS_Imp_Light_E11", "WM_E11_Optic", [], [], "3AS_bipod_VK38X_F"],
    ["agd_weapons_Flamer_Base", "", "3AS_Imp_Light_E11", "", [], [], ""]
];
_eliteLoadoutData set ["machineGuns", _eliteMachineGunsOptions];


private _marksmanRifles = [
    ["agd_weapons_DLT19X", "", "", "", [], [], "WM_DLT_Bipod"],
    ["agd_weapons_DC15X_F", "3AS_muzzle_DC17S_F", "", "3AS_Imp_Optic_4", [], [], "3AS_Imp_Bipod_DLT19"]
];

if (_hasMarksman) then {
    _marksmanRifles append [
        ["agd_weapons_DLT19X", "", "", "", [], [], "WM_DLT_Bipod"]
    ];
};
_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

private _eliteSniperRiflesOptions = [
["ls_weapon_firepuncher", "", "", "", [], [], ""]
];
_eliteLoadoutData set ["sniperRifles", _eliteSniperRiflesOptions];
private _eliteSidearmsOptions = [
["agd_weapons_E11P", "ls_muzzle_impulsor", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_1", [], [], ""]
];
_eliteLoadoutData set ["sidearms", _eliteSidearmsOptions];


if (_hasKND) then {
    (_eliteLoadoutData get "rifles") append [
        ["agd_plusknd_e22_F", "", "", "", [], [], ""]
    ];
    (_eliteLoadoutData get "machineGuns") append [
        ["agd_plusknd_TL50_Base", "", "acc_flashlight", "", [], [], ""],
        ["agd_plusknd_roba_F", "", "", "knd_dl44_scope_attachment", [], [], ""]
    ];
    (_eliteLoadoutData get "marksmanRifles") append [
        ["agd_plusknd_t21B", "", "", "knd_t21B_scope_attachment", [], [], "3AS_bipod_DC15L_F"]
    ];
    (_eliteLoadoutData get "sniperRifles") append [
        ["agd_plusknd_AMR_F", "", "", "knd_amr_scope_attachment", [], [], "3AS_bipod_DC15X_F"],
        ["agd_plusknd_NT242", "", "", "", [], [], ""]
    ];
};

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
private _militaryUniformsOptions = ["ls_imperialUniform_army_armored", "ls_imperialUniform_army_armored_r", "ls_imperialUniform_army_trooper"];
_militaryLoadoutData set ["uniforms", _militaryUniformsOptions];
private _militarySlUniformsOptions = ["ls_imperialUniform_army_armored_r_black"];
_militaryLoadoutData set ["slUniforms", _militarySlUniformsOptions];
private _militaryVestsOptions = ["ls_imperialVest_army_medium", "ls_imperialVest_army", "ls_imperialVest_army_h", "ls_imperialVest_medic"];
_militaryLoadoutData set ["vests", _militaryVestsOptions];
private _militaryHvestsOptions = ["ls_imperialVest_army_h"];
_militaryLoadoutData set ["Hvests", _militaryHvestsOptions];
private _militaryBackpacksOptions = ["ls_orsfBackpack_trooper", "WM_Stormtrooper_Backpack_RTO", "ls_backpack_chestRigPouch", "ls_imperialBackpack_shoulderPouch"];
_militaryLoadoutData set ["backpacks", _militaryBackpacksOptions];
private _militaryHelmetsOptions = ["ls_imperialHelmet_army", "ls_imperialHelmet_army_gd", "ls_imperialHelmet_army_gu", "ls_imperialHelmet_army_gur", "ls_imperialHelmet_army_gdr"];
_militaryLoadoutData set ["helmets", _militaryHelmetsOptions];
private _militaryBinocularsOptions = ["ls_clone_electrobinocularsCommander_night"];
_militaryLoadoutData set ["binoculars", _militaryBinocularsOptions];

private _militarySlRiflesOptions = [
["agd_weapons_E11Stock", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""]
];
_militaryLoadoutData set ["slRifles", _militarySlRiflesOptions];
private _militaryRiflesOptions = [
["agd_weapons_E11Stock", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""]
];
_militaryLoadoutData set ["rifles", _militaryRiflesOptions];
private _militaryCarbinesOptions = [
["agd_weapons_E11Stock", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""]
];
_militaryLoadoutData set ["carbines", _militaryCarbinesOptions];
private _militaryGrenadeLaunchersOptions = [
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""]
];
_militaryLoadoutData set ["grenadeLaunchers", _militaryGrenadeLaunchersOptions];
private _militarySMGsOptions = [
["agd_weapons_DC15S_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", ["3AS_60Rnd_EM30_mag"], [], ""]
];
_militaryLoadoutData set ["SMGs", _militarySMGsOptions];

private _mgs = [
    ["agd_weapons_DLT19", "", "3AS_Imp_Light_E11", "", ["3AS_200Rnd_EM40_DLT19_Mag"], [], "bipod_03_F_blk"],
    ["agd_weapons_DC15L_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["3AS_200Rnd_EM40_Mag"], [], "3AS_bipod_DC15L_F"]
];

_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["agd_weapons_Valken38X_F", "", "3AS_Imp_Light_E11", "3AS_optic_VK38X_F", ["3AS_10Rnd_EM80_Mag"], [], "3AS_bipod_VK38X_F"],
    ["agd_weapons_DC15A_F", "3AS_muzzle_DC15LE_F", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], "3AS_Imp_Bipod_DLT19"]
];

_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

private _militarySniperRiflesOptions = [
["agd_weapons_DC15X_F", "", "", "ls_cows_mercenarySniper_scope", ["3AS_10Rnd_EM100_Mag"], [], "3AS_Imp_Bipod_DLT19"],
["agd_weapons_firepuncher", "", "", "", ["ls_magazine_firepuncher"], [], ""]
];
_militaryLoadoutData set ["sniperRifles", _militarySniperRiflesOptions];
private _militarySidearmsOptions = [
["agd_weapons_E11P", "3AS_Muzzle_Arkanian_Pistol_1_F", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_1", [], [], ""]
];
_militaryLoadoutData set ["sidearms", _militarySidearmsOptions];

if (_hasKND) then {
    (_militaryLoadoutData get "rifles") append [
        ["agd_plusknd_e22_F", "", "", "", [], [], ""]
    ];
    (_militaryLoadoutData get "machineGuns") append [
        ["agd_plusknd_TL50_Base", "", "acc_flashlight", "", [], [], ""]
    ];
    (_militaryLoadoutData get "marksmanRifles") append [
        ["agd_plusknd_t21B", "", "", "knd_t21B_scope_attachment", [], [], "3AS_bipod_DC15L_F"]
    ];
};


///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
private _policeUniformsOptions = ["ls_imperialUniform_army_black", "ls_imperialUniform_army_r_black"];
_policeLoadoutData set ["uniforms", _policeUniformsOptions];
private _policeVestsOptions = ["ls_imperialVest_army_tacbelt_black"];
_policeLoadoutData set ["vests", _policeVestsOptions];
private _helmets = ["ls_imperialHelmet_kepi_black"];
_policeLoadoutData set ["helmets", _helmets];

private _policeSMGsOptions = [
["agd_weapons_DP23_F", "", "3AS_Imp_Light_E11", "ls_cows_westar35s_scope", [], [], ""],
["agd_weapons_E11Stock", "", "3AS_Imp_Light_E11", "", [], [], ""],
["agd_weapons_DC15S_F", "", "3AS_Imp_Light_E11", "", [], [], ""]
];
_policeLoadoutData set ["SMGs", _policeSMGsOptions];
private _policeSidearmsOptions = ["3AS_A180_F"];
_policeLoadoutData set ["sidearms", _policeSidearmsOptions];


if (_hasKND) then {
    private _policeUniformsOptions2 = ["knd_opfor_Patroltrooper"];
    _policeLoadoutData set ["uniforms", _policeUniformsOptions2];
    private _policeVestsOptions2 = ["knd_opfor_Patroltrooper_vest"];
    _policeLoadoutData set ["vests", _policeVestsOptions2];
    private _policeHelmetsOptions = ["knd_opfor_patroltrooper_helmet"];
    _policeLoadoutData set ["helmets", _policeHelmetsOptions];
};


////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
private _militiaUniformsOptions = ["ls_imperialUniform_army_trooper", "ls_imperialUniform_army_r"];
_militiaLoadoutData set ["uniforms", _militiaUniformsOptions];
private _militiaSlUniformsOptions = ["ls_imperialUniform_army_armored_r"];
_militiaLoadoutData set ["slUniforms", _militiaSlUniformsOptions];
private _militiaVestsOptions = ["ls_imperialVest_army_tacbelt", "ls_imperialVest_army_light", "ls_imperialVest_army_light_h"];
_militiaLoadoutData set ["vests", _militiaVestsOptions];
private _militiaHvestsOptions = ["ls_imperialVest_army_medium","ls_imperialVest_army_medium_h","ls_imperialVest_army"];
_militiaLoadoutData set ["Hvests", _militiaHvestsOptions];
private _militiaBackpacksOptions = ["ls_imperialBackpack_chestRig", "ls_imperialBackpack_satchel", "ls_backpack_shoulderPouch"];
_militiaLoadoutData set ["backpacks", _militiaBackpacksOptions];
private _militiaHelmetsOptions = ["ls_imperialHelmet_kepi", "ls_imperialHelmet_kepi_g"];
_militiaLoadoutData set ["helmets", _militiaHelmetsOptions];
private _militiaSlHatOptions = ["ls_imperialHelmet_army_black"];
_militiaLoadoutData set ["slHat", _militiaSlHatOptions];

private _militiaSlRiflesOptions = [
["agd_weapons_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_E11Stock", "", "3AS_Imp_Light_E11", "", [], [], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell", "3Rnd_SmokeRed_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell", "3Rnd_SmokeRed_Grenade_shell"], ""]
];
_militiaLoadoutData set ["slRifles", _militiaSlRiflesOptions];
private _militiaRiflesOptions = [
["agd_weapons_E11Stock", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_DC15A_F", "", "3AS_Imp_Light_E11", "", ["3AS_45Rnd_EM50_Mag"], [], ""]
];
_militiaLoadoutData set ["rifles", _militiaRiflesOptions];
private _militiaCarbinesOptions = [
["agd_weapons_DC15S_F", "", "ACE_DBAL_A3_Green", "3AS_Imp_Optic_1", ["3AS_60Rnd_EM30_mag"], [], ""],
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["3AS_40Rnd_EM40_Mag"], [], ""]
];
_militiaLoadoutData set ["carbines", _militiaCarbinesOptions];
private _militiaGrenadeLaunchersOptions = [
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["3AS_40Rnd_EM40_Mag"], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_3Rnd_G75_HE","ls_magazine_40mm_3Rnd_G75_HE","ls_magazine_40mm_3Rnd_G75_HE"], ""]
];
_militiaLoadoutData set ["grenadeLaunchers", _militiaGrenadeLaunchersOptions];
private _militiaSMGsOptions = ["agd_weapons_E11Stock", "agd_weapons_DP23_F", "agd_weapons_Cinnagaran_Carbine_F"];
_militiaLoadoutData set ["SMGs", _militiaSMGsOptions];
private _militiaMachineGunsOptions = [
["agd_weapons_DLT19", "", "3AS_Imp_Light_E11", "", ["3AS_200Rnd_EM40_DLT19_Mag"], [], "bipod_03_F_blk"]
];
_militiaLoadoutData set ["machineGuns", _militiaMachineGunsOptions];

private _marksmanRifles = [["agd_weapons_Valken38X_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""]];
private _sniperRifles = [["agd_weapons_DLT19X", "", "", "", ["3AS_10Rnd_EM100_DLT19X_Mag"], [], ""]];

_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
private _militiaSidearmsOptions = ["agd_weapons_RK3"];
_militiaLoadoutData set ["sidearms", _militiaSidearmsOptions];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
private _crewUniformsOptions = ["ls_imperialUniform_army_armored"];
_crewLoadoutData set ["uniforms", _crewUniformsOptions];
private _crewVestsOptions = ["ls_imperialVest_army_mudtrooper_h"];
_crewLoadoutData set ["vests", _crewVestsOptions];
private _crewHelmetsOptions = ["AGD_Imp_DriverHelmet"];
_crewLoadoutData set ["helmets", _crewHelmetsOptions];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
private _pilotUniformsOptions = ["WM_PilotArmor"];
_pilotLoadoutData set ["uniforms", _pilotUniformsOptions];
private _pilotVestsOptions = ["ls_imperialVest_army_tacbelt_black"];
_pilotLoadoutData set ["vests", _pilotVestsOptions];
private _pilotHelmetsOptions = ["WM_PilotHelmet"];
_pilotLoadoutData set ["helmets", _pilotHelmetsOptions];





/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["slHat", 2]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["stormHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["stormVests"] call _fnc_setVest;
    ["stormUniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["stormHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["stormVests"] call _fnc_setVest;
    ["stormUniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    [selectRandomWeighted ["helmets", 2]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["stormSniperHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["stormSniperVests"] call _fnc_fallback] call _fnc_setVest;
    ["stormSniperUniforms"] call _fnc_setUniform;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};


////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;