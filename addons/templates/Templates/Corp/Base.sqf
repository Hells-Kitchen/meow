//these variables determine whether specified dlcs are loaded
private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

private _hasSFA = isClass (configFile >> "CfgPatches" >> "SFA_Core");

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "CorpSec"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "CorpSec"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", QPATHTOF(Pictures\Markers\flag_csa_ca.paa)] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "CorpSec"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["ls_vehicle_v35"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["agd_newfactions_CorpSecV25"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["agd_newfactions_CorpSecV25"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["ls_vehicle_v35"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["agd_newfactions_Truck_Ammo"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["agd_newfactions_Truck_Ammo"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["agd_newfactions_Truck_Repair"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["agd_newfactions_Truck_Fuel"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["ls_vehicle_v35"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["agd_newfactions_CorpSecAAC","agd_newfactions_CorpSecAAC_Rocket"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["ls_vehicle_pkv5"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["AGD_AAC_AA"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", ["agd_newfactions_CorpSecV25"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["agd_newfactions_CorpSecAAC"]] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesDropPod", ["3AS_EscapePod"]] call _fnc_saveToTemplate; 
["vehiclesCapitalShip", ["ls_staticShip_diamondClassCruiser"]] call _fnc_saveToTemplate;	//capital ship QRF support (requires Sci-fi Support PLUS) -- Array, only needs to be non-empty
["vehiclesAirborne", ["ls_vehicle_laatle_transportGunship"]] call _fnc_saveToTemplate;	//orbital QRF support - aircraft that can carry troops

["vehicleRadar", "ls_vehicle_radarDish_desert_blufor"] call _fnc_saveToTemplate;
["vehicleSam", "3AS_Keeradak_Imperial"] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["ls_vehicle_pkv5"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["ls_vehicle_pkv5"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", ["ls_vehicle_pkv5"]] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["ls_vehicle_z95"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["ls_vehicle_starsaber"]] call _fnc_saveToTemplate; 			//this line determines air supperiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["3AS_Civilian_Transport_01"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["ls_vehicle_laatle_transportGunship"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["ls_vehicle_laatle_transportGunship"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["ls_vehicle_laatle"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["agd_newfactions_CorpSecMAF"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesAirPatrol", ["ls_vehicle_laatle_transportGunship"]] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", ["agd_newfactions_CorpSecMAF"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["agd_newfactions_CorpSecAAC_MRLS"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
["agd_newfactions_CorpSecAAC_MRLS", ["12Rnd_230mm_rockets"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["ls_vehicle_agtRaptor"]] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["JLTS_UAV_prowler_cis","JLTS_UGV_MSE6_GAR"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["3AS_ISP"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["ls_vehicle_v35"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["ls_vehicle_v35"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesMilitiaAPCs", ["agd_newfactions_CorpSecV25"]] call _fnc_saveToTemplate;     					//this line determines militia APCs

["vehiclesPolice", ["ls_vehicle_v35"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["ls_vehicle_mrbc", "3AS_HeavyRepeater_Armoured"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["AGD_Shellcracker_AT"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["AGD_Shellcracker_AA"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["3AS_Republic_Mortar"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", ["agd_newfactions_CorpSecAAC_MRLS"]] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["mortarMagazineHE", "3AS_8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "3AS_8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "3AS_8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;		//this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", "3AS_8Rnd_300mm_Mo_shells"] call _fnc_saveToTemplate;			//this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

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

["variants", [
    ["ls_vehicle_v35", ["Grey", 1]]
]] call _fnc_saveToTemplate;
/////////////////////
///  Identities   ///
/////////////////////

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
		"Head_SFA_Cathar_01",
		"Head_SFA_Cathar_02",
		"Head_SFA_Cyborg_01",
		"Head_SFA_Mirakulan_01",
		"Head_SFA_Mirakulan_03",
		"Head_SFA_Mirakulan_06"
	];
};

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
["WM_Launch_PTL", "", "", "", [], [], ""]
]];
_loadoutData set ["ATLaunchers", ["WM_Launch_HH15"]];
_loadoutData set ["missileATLaunchers", [
["agd_weapon_AT_Launcher", "", "", "", [], [], ""]
]];
_loadoutData set ["AALaunchers", [
["agd_weapon_AA_Launcher", "", "3AS_Imp_Light_E11", "", ["agd_mag_AA_Yellow"], [], ""]
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
_loadoutData set ["radios", ["ls_radios_hush98"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["ls_nvg_headlamp_invisible"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["Laserdesignator_03"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["Laserdesignator_03"]];

_loadoutData set ["stormUniforms", ["agd_newfactions_uniform_B1"]];
_loadoutData set ["stormVests", ["ls_vest_invisible_armorLevel1"]];
_loadoutData set ["stormHats", ["ls_helmet_invisible_armorLevel2"]];

_loadoutData set ["stormSniperUniforms", ["agd_newfactions_uniform_law1_o"]];
_loadoutData set ["stormSniperVests", ["agd_newfactions_vest_CorpMedium"]];
_loadoutData set ["stormSniperHats", ["ls_helmet_invisible_armorLevel0"]];

_loadoutData set ["traitorUniforms", ["AGD_Spacer_Uniform4_Alt"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["agd_newfactions_vest_CorpMedium"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["agd_newfactions_helmet_CorpCQCM"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["WM_StormUniform"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["agd_newfactions_vest_CorpHeavy"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["agd_newfactions_helmet_CorpCQCMRed"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["sniUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["agd_newfactions_vest_CorpMedium"]];
_loadoutData set ["slVests", ["agd_newfactions_vest_CorpHeavy"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["ls_orsfBackpack_trooper_radio"]];
_loadoutData set ["atBackpacks", ["ls_jabiimBackpack_nimbusCommando"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", ["agd_newfactions_helmet_CorpCQCMAlt"]];
_loadoutData set ["sniHats", ["agd_newfactions_helmet_CorpCQCMVisor"]];

_loadoutData set ["glasses", ["G_Bandanna_blk","None","G_Balaclava_TI_blk_F","ls_imperial_rebreather","ls_imperial_satchel","ls_imperial_satchelOthers","ls_imperial_army_shoulderPouch","ls_jabiimGlasses_goggles","ls_rebel_chestPouches","AGD_AmmoPack_F","ls_glasses_chestRig","ls_glasses_chestRigPouch","ls_imperial_earPiece","ls_glasses_coif","ls_glasses_goggles_orange","ls_glasses_goggles"]];	//cosmetics
_loadoutData set ["goggles", ["G_Bandanna_blk","None","G_Balaclava_TI_blk_F","ls_imperial_rebreather","ls_imperial_satchel","ls_imperial_satchelOthers","ls_imperial_army_shoulderPouch","ls_jabiimGlasses_goggles","ls_rebel_chestPouches","AGD_AmmoPack_F","ls_glasses_chestRig","ls_glasses_chestRigPouch","ls_imperial_earPiece","ls_glasses_coif","ls_glasses_goggles_orange","ls_glasses_goggles"]];		//cosmetics

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
_sfLoadoutData set ["uniforms", ["agd_newfactions_uniform_law4_o_operative"]];
_sfLoadoutData set ["slUniforms", ["agd_newfactions_uniform_law4_o_operative"]];
_sfLoadoutData set ["vests", ["agd_newfactions_vest_CorpSpec"]];
_sfLoadoutData set ["Hvests", ["agd_newfactions_vest_CorpSpec"]];
_sfLoadoutData set ["slVests", ["agd_newfactions_vest_CorpSpec"]];
_sfLoadoutData set ["backpacks", ["B_ViperHarness_blk_F"]];
_sfLoadoutData set ["helmets", ["agd_newfactions_helmet_CorpCQCMFullGrey"]];
_sfLoadoutData set ["binoculars", ["JLTS_CloneBinocular_black"]];
_sfLoadoutData set ["slHat", ["agd_newfactions_helmet_CorpCQCMFullGrey"]];
_sfLoadoutData set ["stormUniforms", ["agd_newfactions_uniform_law4_o_operative"]];
_sfLoadoutData set ["stormVests", ["agd_newfactions_vest_CorpSpec"]];
_sfLoadoutData set ["stormHats", ["agd_newfactions_helmet_CorpCQCMFullGrey"]];
_sfLoadoutData set ["stormSniperUniforms", ["agd_newfactions_uniform_law4_o_operative"]];
_sfLoadoutData set ["stormSniperVests", ["agd_newfactions_vest_CorpSpec"]];
_sfLoadoutData set ["stormSniperHats", ["agd_newfactions_helmet_CorpCQCMFullGrey"]];
_sfLoadoutData set ["atBackpacks", ["ls_gar_arc_backpack"]];
_sfLoadoutData set ["longRangeRadios", ["ls_gar_arc_backpack"]];

_sfLoadoutData set ["slRifles", [
["agd_weapons_Arkanian_Stock_F", "3AS_Imp_Muzzle_DLT19x", "3AS_Flashlight_Arkanian_1_F", "WM_E11_Optic", [], [], "3AS_Imp_Bipod_DLT19"]
]];
_sfLoadoutData set ["rifles", [
["agd_weapons_Arkanian_Stock_F", "3AS_Imp_Muzzle_DLT19x", "3AS_Flashlight_Arkanian_1_F", "WM_E11_Optic", [], [], "3AS_Imp_Bipod_DLT19"]
]];
_sfLoadoutData set ["carbines", [
["agd_weapons_Arkanian_Stock_F", "3AS_Imp_Muzzle_DLT19x", "3AS_Flashlight_Arkanian_1_F", "WM_E11_Optic", [], [], "3AS_Imp_Bipod_DLT19"]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["agd_weapons_Arkanian_Stock_F", "3AS_Imp_Muzzle_DLT19x", "3AS_Flashlight_Arkanian_1_F", "WM_E11_Optic", [], [], "3AS_Imp_Bipod_DLT19"]
]];

_sfLoadoutData set ["SMGs", [
["agd_weapons_Arkanian_Stock_F", "3AS_Imp_Muzzle_DLT19x", "3AS_Flashlight_Arkanian_1_F", "WM_E11_Optic", [], [], "3AS_Imp_Bipod_DLT19"]
]];

private _mgs = [
    ["agd_weapons_Arkanian_Stock_F", "3AS_Imp_Muzzle_DLT19x", "3AS_Flashlight_Arkanian_1_F", "WM_E11_Optic", [], [], "3AS_Imp_Bipod_DLT19"]
];

_sfLoadoutData set ["machineGuns", _mgs];

_sfLoadoutData set ["marksmanRifles", [
    ["agd_weapons_Arkanian_Stock_F", "3AS_Imp_Muzzle_DLT19x", "3AS_Flashlight_Arkanian_1_F", "WM_E11_Optic", [], [], "3AS_Imp_Bipod_DLT19"]
]];
_sfLoadoutData set ["sniperRifles", [
["agd_weapons_DymekSniperRifle_F", "", "3AS_Imp_Light_E11", "ls_cows_mercenarySniper_scope", [], [], "3AS_Imp_Bipod_DLT19"]
]];
_sfLoadoutData set ["sidearms", [
["3AS_S5_f", "", "", "", [], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["agd_newfactions_uniform_law3_o"]];
_eliteLoadoutData set ["slUniforms", ["agd_newfactions_uniform_law3_o_sql"]];
_eliteLoadoutData set ["vests", ["agd_newfactions_vest_CorpHeavy"]];
_eliteLoadoutData set ["Hvests", ["agd_newfactions_vest_CorpHeavy"]];
_eliteLoadoutData set ["slVests", ["agd_newfactions_vest_CorpHeavy"]];
_eliteLoadoutData set ["backpacks", ["ls_orsfBackpack_trooper"]];
_eliteLoadoutData set ["helmets", ["agd_newfactions_helmet_CorpCQCMGrey","agd_newfactions_helmet_CorpCQCMFullGrey","agd_newfactions_helmet_CorpCQCMRed","agd_newfactions_helmet_CorpCQCMAltRed","agd_newfactions_helmet_CorpCQCMVisorGrey","agd_newfactions_helmet_CorpCQCMVisorRed","agd_newfactions_helmet_CorpCQCMAltGrey"]];
_eliteLoadoutData set ["slHat", ["agd_newfactions_helmet_CorpCQCMFullRed"]];
_eliteLoadoutData set ["binoculars", ["ls_clone_electrobinocularsCommander"]];
_eliteLoadoutData set ["stormUniforms", ["ls_droidUniform_bx_bountyHunter"]];
_eliteLoadoutData set ["stormVests", ["ls_vest_invisible_armorLevel4"]];
_eliteLoadoutData set ["stormHats", ["ls_helmet_invisible_armorLevel4"]];
_eliteLoadoutData set ["stormSniperUniforms", ["agd_newfactions_uniform_law3_o"]];
_eliteLoadoutData set ["stormSniperVests", ["ls_vest_poncho_sidestripeRed"]];
_eliteLoadoutData set ["stormSniperHats", ["agd_newfactions_helmet_CorpCQCMFullRed"]];
_eliteLoadoutData set ["atBackpacks", ["ls_mandalorianBackpack"]];
_eliteLoadoutData set ["longRangeRadios", ["ls_mandalorianBackpack_radio"]];

_eliteLoadoutData set ["slRifles", [
["agd_weapons_Arkanian_F", "3AS_Muzzle_Arkanian_Pistol_1_F", "3AS_Imp_Light_E11", "optic_ACO_grn", [], [], ""],
["agd_weapons_Arkanian_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["agd_weapons_WestarM5_GL", "", "3AS_Imp_Laser_E11", "ls_cows_e11_optic_thermal", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "3AS_Muzzle_Arkanian_Pistol_1_F", "3AS_Imp_Laser_E11", "3AS_Optic_Arkanian_1_F", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_Cinnagaran_Carbine_F", "", "3AS_Imp_Light_E11", "3AS_optic_DC15X_F", ["3AS_60Rnd_EM50_RedPlasma"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["agd_weapons_Arkanian_F", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_Arkanian_F", "ls_muzzle_westar35s_suppressor", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_Cinnagaran_Carbine_F", "", "", "3AS_Optic_Arkanian_1_F", [], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["agd_weapons_zh73", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_Cinnagaran_Carbine_F", "", "", "3AS_Optic_Arkanian_1_F", [], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["agd_weapons_WestarM5_GL", "", "3AS_Imp_Light_E11", "optic_ACO_grn", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "optic_Aco", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["agd_weapons_Arkanian_F", "", "3AS_Imp_Light_E11", "optic_Aco", [], [], ""],
["agd_weapons_Arkanian_F", "", "3AS_Imp_Light_E11", "optic_Aco", [], [], ""]
]];

_eliteLoadoutData set ["machineGuns", [
    ["agd_weapons_Cinnagaran_Carbine_F", "", "", "3AS_optic_DC15X_F", [], [], ""],
    ["agd_weapons_DLT19", "", "3AS_Imp_Light_E11", "WM_E11_Optic", [], [], "3AS_bipod_VK38X_F"],
    ["agd_weapons_Flamer_Base", "", "3AS_Imp_Light_E11", "", [], [], ""]
]];


private _marksmanRifles = [
    ["agd_weapons_mercenarySniper", "3AS_muzzle_DC17S_F", "", "3AS_Imp_Optic_4", [], [], "3AS_Imp_Bipod_DLT19"]
];

_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

_eliteLoadoutData set ["sniperRifles", [
["agd_weapons_DymekSniperRifle_F", "", "", "", [], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["3AS_S5_f", "", "", "", [], [], ""],
["3AS_Arkanian_Pistol_F", "", "", "", [], [], ""],
["3AS_A180_F", "", "", "", [], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["agd_newfactions_uniform_law2_o"]];
_militaryLoadoutData set ["slUniforms", ["agd_newfactions_uniform_law2_o_sql"]];
_militaryLoadoutData set ["vests", ["agd_newfactions_vest_CorpMedium","agd_newfactions_vest_Corp"]];
_militaryLoadoutData set ["Hvests", ["agd_newfactions_vest_CorpHeavy"]];
_militaryLoadoutData set ["slVests", ["agd_newfactions_vest_CorpHeavy"]];
_militaryLoadoutData set ["backpacks", ["ls_orsfBackpack_trooper"]];
_militaryLoadoutData set ["helmets", ["agd_newfactions_helmet_Corp","agd_newfactions_helmet_corpred","agd_newfactions_helmet_CorpCQCM","agd_newfactions_helmet_CorpCQCMRed"]];
_militaryLoadoutData set ["binoculars", ["ls_clone_electrobinocularsCommander_night"]];
_militaryLoadoutData set ["stormUniforms", ["agd_newfactions_uniform_B1"]];
_militaryLoadoutData set ["stormVests", ["ls_vest_invisible_armorLevel3"]];
_militaryLoadoutData set ["stormHats", ["ls_helmet_invisible_armorLevel2"]];
_militaryLoadoutData set ["stormSniperUniforms", ["agd_newfactions_uniform_law2_o"]];
_militaryLoadoutData set ["stormSniperVests", ["agd_newfactions_vest_CorpLight"]];
_militaryLoadoutData set ["stormSniperHats", ["agd_newfactions_helmet_CorpCQCMVisorRed"]];
_militaryLoadoutData set ["atBackpacks", ["ls_mandalorianBackpack_demo"]];
_militaryLoadoutData set ["longRangeRadios", ["ls_orsfBackpack_trooper_radio"]];

_militaryLoadoutData set ["slRifles", [
["agd_weapons_zh73", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_Arkanian_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["rifles", [
["agd_weapons_zh73", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_Arkanian_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["agd_weapons_zh73", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_Arkanian_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["agd_weapons_zh73", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", ["3AS_60Rnd_EM30_mag"], [], ""]
]];

private _mgs = [
    ["agd_weapons_T21", "", "", "", [], [], ""],
    ["agd_weapons_DC15L_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["3AS_200Rnd_EM40_Mag"], [], "3AS_bipod_DC15L_F"]
];

_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["agd_weapons_mercenarySniper", "", "3AS_Imp_Light_E11", "3AS_optic_VK38X_F", [], [], "3AS_bipod_VK38X_F"],
    ["agd_weapons_Arkanian_F", "3AS_muzzle_DC15LE_F", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], "3AS_Imp_Bipod_DLT19"]
];

_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

_militaryLoadoutData set ["sniperRifles", [
["agd_weapons_mercenarySniper", "", "", "ls_cows_mercenarySniper_scope", ["3AS_10Rnd_EM100_Mag"], [], "3AS_Imp_Bipod_DLT19"],
["agd_weapons_DymekSniperRifle_F", "", "", "", [], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["3AS_S5_f", "", "", "", [], [], ""],
["3AS_Arkanian_Pistol_F", "", "", "", [], [], ""],
["3AS_A180_F", "", "", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["agd_newfactions_uniform_law1_o"]];
_policeLoadoutData set ["vests", ["ls_vest_holster_maroon"]];
private _helmets = ["agd_newfactions_corpcap"];
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["agd_weapons_DP23_F", "", "3AS_Imp_Light_E11", "ls_cows_westar35s_scope", [], [], ""],
["agd_weapons_zh73", "", "3AS_Imp_Light_E11", "", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["3AS_S5_f", "DymekBlasterPistol_F"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["agd_newfactions_uniform_law1_o"]];
_militiaLoadoutData set ["slUniforms", ["agd_newfactions_uniform_law2_o"]];
_militiaLoadoutData set ["vests", ["agd_newfactions_vest_CorpLight"]];
_militiaLoadoutData set ["Hvests", ["agd_newfactions_vest_CorpMedium"]];
_militiaLoadoutData set ["slVests", ["agd_newfactions_vest_CorpHeavy"]];
_militiaLoadoutData set ["backpacks", ["ls_jabiimBackpack_nimbusCommando"]];
_militiaLoadoutData set ["helmets", ["agd_newfactions_corpcap"]];
_militiaLoadoutData set ["slHat", ["ls_orsfHelmet_trooper"]];

_militiaLoadoutData set ["slRifles", [
["agd_weapons_Arkanian_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_zh73", "", "3AS_Imp_Light_E11", "", [], [], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell", "3Rnd_SmokeRed_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell", "3Rnd_SmokeRed_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["rifles", [
["agd_weapons_zh73", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_Arkanian_F", "", "3AS_Imp_Light_E11", "", ["3AS_45Rnd_EM50_Mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["agd_weapons_zh73", "", "ACE_DBAL_A3_Green", "3AS_Imp_Optic_1", ["3AS_60Rnd_EM30_mag"], [], ""],
["agd_weapons_zh73", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_3Rnd_G75_HE","ls_magazine_40mm_3Rnd_G75_HE","ls_magazine_40mm_3Rnd_G75_HE"], ""]
]];
_militiaLoadoutData set ["SMGs", ["agd_weapons_DP23_F", "agd_weapons_Cinnagaran_Carbine_F"]];
_militiaLoadoutData set ["machineGuns", [
["agd_weapons_T21", "", "", "", [], [], ""]
]];

private _marksmanRifles = [["agd_weapons_mercenarySniper", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""]];
private _sniperRifles = [["agd_weapons_mercenarySniper", "", "", "3AS_optic_DC15C_F", [], [], ""]];

_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["3AS_S5_f"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["agd_newfactions_uniform_law3_o"]];
_crewLoadoutData set ["vests", ["agd_newfactions_vest_CorpSpec"]];
_crewLoadoutData set ["helmets", ["H_CrewHelmetHeli_B"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["agd_newfactions_uniform_law3_o_sql"]];
_pilotLoadoutData set ["vests", ["agd_newfactions_vest_CorpSpec"]];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetFighter_B"]];





/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["slHat", 2]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["slVests"] call _fnc_fallback] call _fnc_setVest;
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