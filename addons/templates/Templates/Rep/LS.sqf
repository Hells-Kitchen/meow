//these variables determine whether specified dlcs are loaded
private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Galactic Republic"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "Republic"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", "\ls\core\addons\data\flags\flag_republic_ca.paa"] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["3AS_BarcSideCar"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["3AS_ISP"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["3AS_PX10_REP_F"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["3AS_RTT_Wheeled"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["3AS_PX10_REP_UP"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["AGD_Truck_Imp_Ammo"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["AGD_Truck_Imp_Repair"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["AGD_Truck_Imp_Fuel"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["3AS_RTT_Wheeled"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["3AS_PX10_REP_R3"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["3AS_Saber_M1","3AS_Saber_Super","3AS_ATTE_TCW","3AS_ATAP_Base"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["3AS_RX200_Base"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", ["3AS_PX10_REP_F"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["3AS_Jug"]] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesDropPod", ["3AS_EscapePod"]] call _fnc_saveToTemplate; 
["vehiclesCapitalShip", ["ls_staticShip_venator","ls_staticShip_acclamator"]] call _fnc_saveToTemplate;	//capital ship QRF support (requires Sci-fi Support PLUS) -- Array, only needs to be non-empty
["vehiclesAirborne", ["3AS_LAAT_Mk2"]] call _fnc_saveToTemplate;	//orbital QRF support - aircraft that can carry troops

["vehicleRadar", "3AS_Republic_FCP"] call _fnc_saveToTemplate;
["vehicleSam", "3AS_Keeradak_F"] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["ls_vehicle_pkv5"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["ls_vehicle_pkv5"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", ["ls_vehicle_pkv5"]] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["3AS_BTLB_Bomber_Shadow"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["3AS_Delta7_F","3AS_Vwing_base","3AS_Z95_Republic","3AS_ARC_170_Republic","3as_V19_base"]] call _fnc_saveToTemplate; 			//this line determines air supperiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["3AS_Gozanti_Republic"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["ls_vehicle_laatle_transportGunship","3AS_Rep_LAS_Z6_F","3AS_LAATC"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["3AS_LAAT_Mk2","3AS_Nu_REP_F"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["3AS_Rep_LAS_Z6_F"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["3AS_LAAT_Mk2_Imperial"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesAirPatrol", ["ls_vehicle_laatle_transportGunship"]] call _fnc_saveToTemplate;
["vehiclesPlanesLargeCAS", ["3AS_Gozanti_Republic"]] call _fnc_saveToTemplate;
["vehiclesPlanesLargeAA", ["3AS_Gozanti_Republic"]] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", ["3AS_LAAT_Mk2Lights"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["3AS_AV7"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
["3AS_AV7", ["3AS_32Rnd_300mm_Mo_shells"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", []] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["JLTS_UAV_prowler_gar","JLTS_UGV_MSE6_GAR"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["3AS_ISP"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["3AS_RTT_Wheeled"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["3AS_BarcSideCar"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesMilitiaAPCs", ["3AS_PX10_IMP_F"]] call _fnc_saveToTemplate;     					//this line determines militia APCs

["vehiclesPolice", ["3AS_BarcSideCar"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["ls_vehicle_mrbc", "3AS_HeavyRepeater_Armoured"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["AGD_Shellcracker_AT"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["AGD_Shellcracker_AA"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["3AS_Republic_Mortar"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", ["3AS_AV7"]] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

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

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "ls_cloneA"
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
_loadoutData set ["radios", ["JLTS_clone_comlink"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["JLTS_CloneNVG","JLTS_CloneNVG_black","JLTS_CloneNVG_spec"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["Binocular"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["stormUniforms", ["ls_gar_phase2_uniform"]];
_loadoutData set ["stormVests", ["ls_gar_holster_vest"]];
_loadoutData set ["stormHats", ["ls_gar_phase1_helmet"]];

_loadoutData set ["stormSniperUniforms", ["ls_gar_phase2_uniform"]];
_loadoutData set ["stormSniperVests", ["ls_gar_reconSurvival_vest"]];
_loadoutData set ["stormSniperHats", ["ls_gar_phase1_helmet"]];

_loadoutData set ["traitorUniforms", ["AGD_Spacer_Uniform4_Alt"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["ls_gar_holster_vest"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["ls_helmet_jockey_alt"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["ls_cloneUniform_misc_commander"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["lsd_gar_alphaArc_vest_yellow"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["ls_cloneHelmet_phase1_misc_commander"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["sniUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["ls_cloneVest_recon"]];
_loadoutData set ["slVests", ["ls_gar_reconSurvival_vest"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["ls_gar_rto_mini_backpack"]];
_loadoutData set ["atBackpacks", ["ls_gar_heavy_backpack"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", ["ls_gar_phase1_helmet"]];
_loadoutData set ["sniHats", ["ls_gar_phase1_helmet"]];

_loadoutData set ["glasses", ["ls_clone_headlampPhase1_hud","ls_clone_headlampPhase1_double_hud","ls_clone_headlampPhase1_left_hud","ls_clone_phase1_hud","lsd_gar_p1ArtilleryGunner_hud","ls_clone_p1Rangefinder_hud"]];	//cosmetics
_loadoutData set ["goggles", ["ls_clone_headlampPhase1_hud","ls_clone_headlampPhase1_double_hud","ls_clone_headlampPhase1_left_hud","ls_clone_phase1_hud","lsd_gar_p1ArtilleryGunner_hud","ls_clone_p1Rangefinder_hud"]];		//cosmetics

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
_sfLoadoutData set ["uniforms", ["ls_sob_commando_uniform"]];
_sfLoadoutData set ["slUniforms", ["ls_cloneUniform_commando_mpRecon"]];
_sfLoadoutData set ["vests", ["ls_sob_commando_vest"]];
_sfLoadoutData set ["Hvests", ["ls_sob_commando_eod_vest"]];
_sfLoadoutData set ["slVests", ["ls_sob_commando_sl_vest"]];
_sfLoadoutData set ["backpacks", ["ls_sob_commando_backpack","ls_sob_commando_tech_backpack"]];
_sfLoadoutData set ["helmets", ["ls_sob_commando_helmet"]];
_sfLoadoutData set ["binoculars", ["JLTS_CloneBinocular_black"]];
_sfLoadoutData set ["slHat", ["ls_cloneHelmet_commando_mpRecon"]];
_sfLoadoutData set ["stormUniforms", ["ls_cloneUniform_commando_mpGunner"]];
_sfLoadoutData set ["stormVests", ["ls_sob_commando_vest"]];
_sfLoadoutData set ["stormHats", ["ls_cloneHelmet_commando_mpGunner"]];
_sfLoadoutData set ["stormSniperUniforms", ["ls_cloneUniform_commando_mpMarksman"]];
_sfLoadoutData set ["stormSniperVests", ["ls_sob_commando_sniper_vest"]];
_sfLoadoutData set ["stormSniperHats", ["ls_cloneHelmet_commando_mpMarksman"]];
_sfLoadoutData set ["atBackpacks", ["ls_sob_commando_eod_backpack"]];
_sfLoadoutData set ["longRangeRadios", ["ls_sob_commando_longRangeRadio"]];

_sfLoadoutData set ["slRifles", [
["agd_weapons_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag","3AS_5Rnd_EC80_mag"], [], ""]
]];
_sfLoadoutData set ["rifles", [
["agd_weapons_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag","3AS_5Rnd_EC80_mag"], [], ""]
]];
_sfLoadoutData set ["carbines", [
["agd_weapons_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag","3AS_5Rnd_EC80_mag"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["agd_weapons_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag","3AS_5Rnd_EC80_mag"], [], ""]
]];

_sfLoadoutData set ["SMGs", [
["agd_weapons_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag","3AS_5Rnd_EC80_mag"], [], ""]
]];

private _mgs = [
    ["agd_weapons_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag","3AS_5Rnd_EC80_mag"], [], ""]
];

_sfLoadoutData set ["machineGuns", _mgs];

_sfLoadoutData set ["marksmanRifles", [
    ["agd_weapons_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag","3AS_5Rnd_EC80_mag"], [], ""]
]];
_sfLoadoutData set ["sniperRifles", [
["agd_weapons_firepuncher", "", "3AS_Imp_Light_E11", "ls_cows_mercenarySniper_scope", [], [], "3AS_Imp_Bipod_DLT19"]
]];
_sfLoadoutData set ["sidearms", [
["3AS_pistol_DC15SA_F", "", "", "", [], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["ls_gar_phase2_uniform"]];
_eliteLoadoutData set ["slUniforms", ["ls_cloneUniform_misc_captain"]];
_eliteLoadoutData set ["vests", ["ls_gar_holster_vest"]];
_eliteLoadoutData set ["Hvests", ["ls_gar_tacticalOfficer_vest"]];
_eliteLoadoutData set ["slVests", ["lsd_gar_alphaArc_vest_red"]];
_eliteLoadoutData set ["backpacks", ["ls_cloneBackpack_arc"]];
_eliteLoadoutData set ["helmets", ["ls_gar_phase1_helmet"]];
_eliteLoadoutData set ["slHat", ["ls_cloneHelmet_phase1_misc_captain"]];
_eliteLoadoutData set ["binoculars", ["ls_clone_electrobinocularsCommander"]];
_eliteLoadoutData set ["stormUniforms", ["ls_cloneUniform_misc_sergeant"]];
_eliteLoadoutData set ["stormVests", ["ls_gar_arc_vest"]];
_eliteLoadoutData set ["stormHats", ["ls_cloneHelmet_phase1_misc_sergeant"]];
_eliteLoadoutData set ["stormSniperUniforms", ["ls_cloneUniform_misc_lieutenant"]];
_eliteLoadoutData set ["stormSniperVests", ["lsd_gar_alphaArc_vest_blue"]];
_eliteLoadoutData set ["stormSniperHats", ["ls_cloneHelmet_phase1_misc_lieutenant"]];

_eliteLoadoutData set ["slRifles", [
["agd_weapons_DC15A_F", "3AS_Muzzle_Arkanian_Pistol_1_F", "3AS_Imp_Light_E11", "optic_ACO_grn", [], [], ""],
["agd_weapons_DC15A_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["agd_weapons_WestarM5_GL", "", "3AS_Imp_Laser_E11", "ls_cows_e11_optic_thermal", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_DC15S_GL", "3AS_Muzzle_Arkanian_Pistol_1_F", "3AS_Imp_Laser_E11", "3AS_Optic_Arkanian_1_F", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_WestarM5_F", "", "3AS_Imp_Light_E11", "3AS_optic_DC15X_F", ["3AS_60Rnd_EM50_RedPlasma"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["agd_weapons_DC15A_F", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_DC15A_F", "ls_muzzle_westar35s_suppressor", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_WestarM5_F", "", "", "3AS_Optic_Arkanian_1_F", [], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", ["3AS_40Rnd_EM40_Mag"], [], ""],
["agd_weapons_WestarM5_F", "", "", "3AS_Optic_Arkanian_1_F", [], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["agd_weapons_WestarM5_GL", "", "3AS_Imp_Light_E11", "optic_ACO_grn", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "optic_Aco", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["agd_weapons_DC15A_F", "", "3AS_Imp_Light_E11", "optic_Aco", [], [], ""],
["agd_weapons_DC15A_F", "", "3AS_Imp_Light_E11", "optic_Aco", [], [], ""]
]];

_eliteLoadoutData set ["machineGuns", [
    ["agd_weapons_WestarM5_F", "", "", "3AS_optic_DC15X_F", [], [], ""],
    ["agd_weapons_DLT19", "", "3AS_Imp_Light_E11", "WM_E11_Optic", [], [], "3AS_bipod_VK38X_F"],
    ["agd_weapons_Flamer_Base", "", "3AS_Imp_Light_E11", "", [], [], ""]
]];


private _marksmanRifles = [
    ["agd_weapons_DC15X_F", "3AS_muzzle_DC17S_F", "", "3AS_Imp_Optic_4", [], [], "3AS_Imp_Bipod_DLT19"]
];

_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

_eliteLoadoutData set ["sniperRifles", [
["ls_weapon_firepuncher", "", "", "", [], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["3AS_pistol_DC15SA_F", "", "", "", [], [], ""],
["3AS_DC17S_F", "", "", "", [], [], ""],
["3AS_DC17S_Dual_F", "", "", "", [], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["ls_gar_phase2_uniform"]];
_militaryLoadoutData set ["slUniforms", ["ls_cloneUniform_misc_sergeant"]];
_militaryLoadoutData set ["vests", ["ls_gar_holster_vest"]];
_militaryLoadoutData set ["Hvests", ["ls_gar_heavy_vest"]];
_militaryLoadoutData set ["slVests", ["ls_gar_holster_vest"]];
_militaryLoadoutData set ["backpacks", ["ls_gar_medium_backpack"]];
_militaryLoadoutData set ["helmets", ["ls_gar_phase1_helmet"]];
_militaryLoadoutData set ["binoculars", ["ls_clone_electrobinocularsCommander_night"]];
_militaryLoadoutData set ["stormUniforms", ["ls_gar_phase2_uniform"]];
_militaryLoadoutData set ["stormVests", ["ls_gar_engineer_vest","ls_gar_grenadier_vest"]];
_militaryLoadoutData set ["stormHats", ["ls_sob_phase1SpecOp_helmet"]];
_militaryLoadoutData set ["stormSniperUniforms", ["ls_gar_phase2_uniform"]];
_militaryLoadoutData set ["stormSniperVests", ["ls_gar_recon_vest","ls_gar_reconSurvival_vest","ls_gar_forceRecon_vest"]];
_militaryLoadoutData set ["stormSniperHats", ["ls_gar_phase1Arf_helmet"]];
_militaryLoadoutData set ["atBackpacks", ["ls_gar_rocket_backpack"]];
_militaryLoadoutData set ["longRangeRadios", ["ls_gar_mediumRadio_backpack"]];

_militaryLoadoutData set ["slRifles", [
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_DC15A_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["rifles", [
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_DC15A_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_DC15A_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", ["3AS_60Rnd_EM30_mag"], [], ""]
]];

private _mgs = [
    ["agd_weapons_Z6_F", "", "", "", [], [], ""],
    ["agd_weapons_DC15L_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["3AS_200Rnd_EM40_Mag"], [], "3AS_bipod_DC15L_F"]
];

_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["agd_weapons_Valken38X_F", "", "3AS_Imp_Light_E11", "3AS_optic_VK38X_F", ["3AS_10Rnd_EM80_Mag"], [], "3AS_bipod_VK38X_F"],
    ["agd_weapons_DC15A_F", "3AS_muzzle_DC15LE_F", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], "3AS_Imp_Bipod_DLT19"]
];

_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

_militaryLoadoutData set ["sniperRifles", [
["agd_weapons_DC15X_F", "", "", "ls_cows_mercenarySniper_scope", ["3AS_10Rnd_EM100_Mag"], [], "3AS_Imp_Bipod_DLT19"],
["agd_weapons_firepuncher", "", "", "", ["ls_magazine_firepuncher"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["3AS_pistol_DC15SA_F", "", "", "", [], [], ""],
["3AS_DC17S_F", "", "", "", [], [], ""],
["3AS_DC17S_Dual_F", "", "", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["ls_cloneUniform_coruscantguard_thorn"]];
_policeLoadoutData set ["vests", ["ls_gar_cfr_vest"]];
private _helmets = ["ls_cloneHelmet_phase1_coruscantguard_trooper"];
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["agd_weapons_DP23_F", "", "3AS_Imp_Light_E11", "ls_cows_westar35s_scope", [], [], ""],
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["3AS_pistol_DC15SA_F", "3AS_DC17S_F", "3AS_DC17S_Dual_F"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["ls_gar_phase2_uniform"]];
_militiaLoadoutData set ["slUniforms", ["ls_gar_phase2_uniform"]];
_militiaLoadoutData set ["vests", ["ls_gar_holster_vest"]];
_militiaLoadoutData set ["Hvests", ["ls_gar_heavyAlt_vest","ls_gar_heavy_vest"]];
_militiaLoadoutData set ["slVests", ["ls_gar_reconNCO_vest"]];
_militiaLoadoutData set ["backpacks", ["ls_gar_standard_backpack"]];
_militiaLoadoutData set ["helmets", ["ls_gar_phase1_helmet"]];
_militiaLoadoutData set ["slHat", ["ls_sob_phase1SpecOp_helmet"]];

_militiaLoadoutData set ["slRifles", [
["agd_weapons_DC15A_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "", [], [], ""],
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell", "3Rnd_SmokeRed_Grenade_shell"], ""],
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_3Rnd_G75_HE", "3Rnd_Smoke_Grenade_shell", "3Rnd_SmokeRed_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["rifles", [
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_DC15A_F", "", "3AS_Imp_Light_E11", "", ["3AS_45Rnd_EM50_Mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["agd_weapons_DC15C_F", "", "ACE_DBAL_A3_Green", "3AS_Imp_Optic_1", ["3AS_60Rnd_EM30_mag"], [], ""],
["agd_weapons_DC15C_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["3AS_40Rnd_EM40_Mag"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["3AS_40Rnd_EM40_Mag"], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_DC15S_GL", "", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_3Rnd_G75_HE","ls_magazine_40mm_3Rnd_G75_HE","ls_magazine_40mm_3Rnd_G75_HE"], ""]
]];
_militiaLoadoutData set ["SMGs", ["agd_weapons_DC15C_F", "agd_weapons_DP23_F", "agd_weapons_Cinnagaran_Carbine_F"]];
_militiaLoadoutData set ["machineGuns", [
["agd_weapons_Z6_F", "", "", "", [], [], ""]
]];

private _marksmanRifles = [["agd_weapons_Valken38X_F", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""]];
private _sniperRifles = [["agd_weapons_DC15X_F", "", "", "3AS_optic_DC15C_F", [], [], ""]];

_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["3AS_pistol_DC15SA_F"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["lsd_gar_phase2Insulated_uniform"]];
_crewLoadoutData set ["vests", ["ls_gar_engineer_vest"]];
_crewLoadoutData set ["helmets", ["ls_gar_engineer_helmet"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["ls_gar_phase2_uniform"]];
_pilotLoadoutData set ["vests", ["ls_gar_holster_vest"]];
_pilotLoadoutData set ["helmets", ["ls_gar_phase1Pilot_republic_helmet"]];





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