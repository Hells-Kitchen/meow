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

["vehiclesBasic", ["knd_imp_LIU"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["JMSLLTE_B_veh_LIUSt_imp_F"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["JMSLLTE_B_veh_LIUSfwmb_imp_F","JMSLLTE_B_veh_ITT_imp_F"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["JMSLLTE_B_veh_LIUSfwmb_imp_F","JMSLLTE_B_veh_ITT_imp_F"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["JMSLLTE_B_veh_ITTc_imp_F"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["JMSLLTE_B_veh_ITTc_imp_F"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["JMSLLTE_B_veh_ITTc_imp_F"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["JMSLLTE_B_veh_ITTc_imp_F"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["3AS_ITT_Medical"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["knd_imp_walker","ls_vehicle_pkv5_imperial"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["knd_imp_tank", "knd_imp_saber_GMG", "knd_imp_hovertank","knd_imp_ATAT","knd_imp_atte"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["knd_imp_hovertank"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", ["knd_imp_px10"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["knd_imp_px10"]] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesDropPod", ["3AS_EscapePod"]] call _fnc_saveToTemplate; 

["vehicleRadar", "ls_vehicle_radarDish_blufor"] call _fnc_saveToTemplate;
["vehicleSam", "knd_turrets_imperial_xx9"] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["JMSLLTE_B_veh_ITT_imp_F"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["JMSLLTE_B_veh_ITT_imp_F"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", ["knd_imp_jug"]] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["knd_imp_bomber","knd_imp_z95","knd_imp_tie_fighter"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["knd_imp_striker","knd_imp_z98","knd_FangFighter_imp_F","knd_imp_tie_fighter"]] call _fnc_saveToTemplate; 			//this line determines air supperiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["3AS_Nu_IMP_F"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["knd_imp_patrol_laat","3AS_Imp_LAS_Z6_F"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["knd_imp_lambda","3AS_LAAT_Mk2_Imperial"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["knd_imp_Nuclass","ls_vehicle_laatle"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["knd_imp_newRothanal","3AS_LAAT_Mk1_Imperial"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesAirPatrol", ["knd_imp_striker"]] call _fnc_saveToTemplate;
["vehiclesPlanesLargeCAS", ["3AS_Imperial_Transport_01"]] call _fnc_saveToTemplate;
["vehiclesPlanesLargeAA", ["knd_imp_gozanti"]] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", ["knd_o_corvette_F"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["3AS_AV7"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
["3AS_AV7", ["3AS_32Rnd_300mm_Mo_shells"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["JMSLLTE_veh_viper_empire"]] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["3AS_H3NR1_Drone_Scout_Imperial"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["knd_imp_LIU"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["knd_imp_LIU"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["JMSLLTE_B_veh_LIUSt_imp_F"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesMilitiaAPCs", ["knd_imp_px10"]] call _fnc_saveToTemplate;     					//this line determines militia APCs

["vehiclesPolice", ["JMSLLTE_B_veh_LIUSt_imp_F"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["knd_turrets_imperial_eweb", "knd_turrets_imperial_T21"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["B_static_AT_F"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["B_static_AA_F"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["ls_vehicle_mortar_cis"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", ["3AS_Heavy_AAT_Defoliator_F"]] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["mortarMagazineHE", "ls_5Rnd_82mm_mortar_HE"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "ls_5Rnd_82mm_mortar_HE"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "ls_5Rnd_82mm_mortar_HE"] call _fnc_saveToTemplate;		//this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", "3AS_6Rnd_200mm_Mo_shells"] call _fnc_saveToTemplate;			//this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

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
["knd_rps6_disposable", "", "", "", [], [], ""]
]];
_loadoutData set ["ATLaunchers", ["knd_rps6"]];
_loadoutData set ["missileATLaunchers", [
["knd_HH12", "", "", "", ["knd_mag_AT_missile"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["knd_HH12", "", "", "", ["knd_mag_AA_missile"], [], ""]
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]]; 					//this line determines the AT mines which can be carried by units -- Example: ["ATMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]]; 					//this line determines the APERS mines which can be carried by units -- Example: ["APERSMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["lightExplosives", ["ls_explosive_demoCharge_magazine"]]; 			//this line determines light explosives -- Example: ["DemoCharge_Remote_Mag"] -- Array, can contain multiple assets
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 			//this line determines heavy explosives -- Example: ["SatchelCharge_Remote_Mag"] -- Array, can contain multiple assets

_loadoutData set ["antiInfantryGrenades", ["knd_thermalDetonator", "knd_stunGrenade"]]; 		//this line determines anti infantry grenades (frag and such) -- Example: ["HandGrenade", "MiniGrenade"] -- Array, can contain multiple assets
_loadoutData set ["antiTankGrenades", ["knd_stickynade_A", "knd_stickynade_B"]]; 			//this line determines anti tank grenades. Leave empty when not available. -- Array, can contain multiple assets
_loadoutData set ["smokeGrenades", ["knd_smokeGrenade_y"]];
_loadoutData set ["signalsmokeGrenades", ["knd_smokeGrenade_p", "knd_smokeGrenade_r", "knd_smokeGrenade_g", "knd_smokeGrenade_b"]];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];				//this line determines map
_loadoutData set ["watches", ["ItemWatch"]];		//this line determines watch
_loadoutData set ["compasses", ["ItemCompass"]];	//this line determines compass
_loadoutData set ["radios", ["JLTS_clone_comlink"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["JMSLLTE_NVChip"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["knd_testbinocs"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["ls_clone_electrobinocularsCommander"]];

_loadoutData set ["stormUniforms", ["knd_opfor_stormtrooper"]];
_loadoutData set ["stormVests", ["JMSLLTE_StormtrooperAmmoP_armor","ls_gar_cfr_vest","ls_vest_holster_maroon"]];
_loadoutData set ["stormHats", ["knd_opfor_stormtrooper_helmet"]];

_loadoutData set ["stormSniperUniforms", ["JMSLLTE_ScoutTrooper_F_CombatUniform"]];
_loadoutData set ["stormSniperVests", ["JMSLLTE_Scouttrooper_holster"]];
_loadoutData set ["stormSniperHats", ["JMSLLTE_Scouttrooper_helmet"]];

_loadoutData set ["stormJetUniforms", ["knd_Beroya_Supercommando"]];
_loadoutData set ["stormJetBackpacks", ["knd_CTP10_Light_Supercommando"]];
_loadoutData set ["stormJetHats", ["knd_helmet_Rook_Supercommando"]];

_loadoutData set ["traitorUniforms", ["knd_Beroya_Desert"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["knd_belt_beroya"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["knd_helmet_Grunt_Desert"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["JMSLLTE_EmpOfficer_ISB_F_CombatUniform"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["JMSLLTE_IsbChest_armor"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["JMSLLTE_ISB_helmet"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["ls_cloneVest_recon"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["ls_mandalorianBackpack_radio"]];
_loadoutData set ["atBackpacks", ["JMSLLTE_back_stormpack_v1"]];
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
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500","knd_A300_conversionKit_Sniper","knd_camoNetArid","ls_vehicle_turretDroid_packed"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", ["ls_equipment_squadShield_packed"]];
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
_sfLoadoutData set ["uniforms", ["JMSLLTE_DeathTrooper_F_CombatUniform"]];
_sfLoadoutData set ["vests", ["JMSLLTE_DeathtrooperVest_armor","JMSLLTE_DeathtrooperCom_armor","JMSLLTE_DeathtrooperSpec_armor"]];
_sfLoadoutData set ["Hvests", ["JMSLLTE_DeathtrooperHeavy2_armor"]];
_sfLoadoutData set ["backpacks", ["knd_opfor_CloneBackpack_SpecOps_RTO"]];
_sfLoadoutData set ["helmets", ["JMSLLTE_Deathtrooper_helmet"]];
_sfLoadoutData set ["binoculars", ["knd_testbinocs"]];

_sfLoadoutData set ["slRifles", [
["knd_e11d", "", "acc_flashlight", "", [], [], ""]
]];
_sfLoadoutData set ["rifles", [
["knd_e11d", "", "acc_flashlight", "", [], [], ""]
]];
_sfLoadoutData set ["carbines", [
["knd_e11d", "", "acc_flashlight", "", [], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["knd_relby_sap", "", "", "", [], [], ""]
]];

_sfLoadoutData set ["SMGs", [
["knd_e11d", "", "acc_flashlight", "", [], [], ""]
]];

private _mgs = [
	["knd_e11d", "", "acc_flashlight", "", [], [], ""]
];

_sfLoadoutData set ["machineGuns", _mgs];

_sfLoadoutData set ["marksmanRifles", [
	["knd_e11d", "", "acc_flashlight", "", [], [], ""]
]];
_sfLoadoutData set ["sniperRifles", [
	["knd_e11d", "", "acc_flashlight", "", [], [], ""]
]];
_sfLoadoutData set ["sidearms", [
	["knd_power5_f", "", "", "", [], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["knd_opfor_stormtrooper"]];
_eliteLoadoutData set ["slUniforms", ["knd_opfor_stormtrooper"]];
_eliteLoadoutData set ["vests", ["JMSLLTE_StormtrooperHidden_armor"]];
_eliteLoadoutData set ["Hvests", ["JMSLLTE_StormtrooperPauldron_black_armor","JMSLLTE_StormtrooperPauldron_med_armor","JMSGD_StKamaPauld_armor"]];
_eliteLoadoutData set ["backpacks", ["3AS_B_Imperial_Stormtrooper_Backpack_F", "3AS_B_Imperial_Stormtrooper_Backpack_RTO_F", "3AS_B_Imperial_Stormtrooper_Backpack_Sand_F", "3AS_B_Imperial_Stormtrooper_Backpack_Medic_F"]];
_eliteLoadoutData set ["helmets", ["knd_opfor_stormtrooper_helmet"]];
_eliteLoadoutData set ["binoculars", ["ls_clone_electrobinocularsCommander"]];

_eliteLoadoutData set ["slRifles", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""],
["KND_TL50_Base", "", "ACE_acc_pointer_green", "knd_Holo_optic", [], [], ""],
["knd_e22_F", "", "ACE_acc_pointer_green", "knd_e22_scope_attachment", [], [], ""],
["knd_DC19_Unstocked_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""],
["knd_DC17M_Carbine_F", "", "", "knd_Holo_optic_DC17M_blue", [], [], ""],
["knd_DC19_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""],
["KND_TL50_Base", "", "ACE_acc_pointer_green", "knd_Holo_optic", [], [], ""],
["knd_e22_F", "", "ACE_acc_pointer_green", "knd_e22_scope_attachment", [], [], ""],
["knd_DC19_Unstocked_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""],
["knd_DC17M_Carbine_F", "", "", "knd_Holo_optic_DC17M_blue", [], [], ""],
["knd_DC19_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""],
["KND_TL50_Base", "", "ACE_acc_pointer_green", "knd_Holo_optic", [], [], ""],
["knd_e22_F", "", "ACE_acc_pointer_green", "knd_e22_scope_attachment", [], [], ""],
["knd_DC19_Unstocked_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""],
["knd_DC17M_Carbine_F", "", "", "knd_Holo_optic_DC17M_blue", [], [], ""],
["knd_DC19_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""],
["KND_TL50_Base", "", "ACE_acc_pointer_green", "knd_Holo_optic", [], [], ""],
["knd_e22_F", "", "ACE_acc_pointer_green", "knd_e22_scope_attachment", [], [], ""],
["knd_DC19_Unstocked_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""],
["knd_DC17M_Carbine_F", "", "", "knd_Holo_optic_DC17M_blue", [], [], ""],
["knd_DC19_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""]
]];
_eliteLoadoutData set ["SMGs", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""],
["KND_TL50_Base", "", "ACE_acc_pointer_green", "knd_Holo_optic", [], [], ""],
["knd_e22_F", "", "ACE_acc_pointer_green", "knd_e22_scope_attachment", [], [], ""],
["knd_DC19_Unstocked_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""],
["knd_DC17M_Carbine_F", "", "", "knd_Holo_optic_DC17M_blue", [], [], ""],
["knd_DC19_F", "", "", "knd_Holo_optic_DC15_redTwo", [], [], ""]
]];

_eliteLoadoutData set ["machineGuns", [
    ["knd_t21", "", "", "", [], [], "bipod_02_F_blk"],
    ["KND_TL50_Base", "", "ACE_acc_pointer_green", "knd_Holo_optic", [], [], "bipod_01_F_blk"],
	["knd_roba_F", "", "", "knd_a300_susat_attachment", [], [], ""]
]];


private _marksmanRifles = [
    ["knd_valken_F", "", "", "", [], [], ""]
];
_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

_eliteLoadoutData set ["sniperRifles", [
["knd_NT242", "", "", "", [], [], ""],
["knd_AMR_F", "", "", "knd_amr_scope_attachment", [], [], "bipod_01_F_blk"]
]];
_eliteLoadoutData set ["sidearms", [
["knd_se14c", "", "", "knd_se14c_scope_attachment", [], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["knd_opfor_stormtrooper"]];
_militaryLoadoutData set ["slUniforms", ["knd_opfor_stormtrooper"]];
_militaryLoadoutData set ["vests", ["JMSLLTE_StormtrooperHolster_armor", "JMSLLTE_StormtrooperBand_armor","JMSLLTE_StormtrooperHeavy2_armor"]];
_militaryLoadoutData set ["Hvests", ["JMSLLTE_StormtrooperPauldron_black_armor"]];
_militaryLoadoutData set ["backpacks", ["knd_opfor_cloneBackpack_Imperial_Standard","JMSLLTE_back_stormpouches_v1","knd_predef_stormtrooperPack_HH12"]];
_militaryLoadoutData set ["helmets", ["knd_opfor_stormtrooper_helmet"]];
_militaryLoadoutData set ["binoculars", ["ls_clone_electrobinocularsCommander_night"]];

_militaryLoadoutData set ["slRifles", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""]
]];
_militaryLoadoutData set ["rifles", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""],
["KND_TL50_Base", "", "ACE_acc_pointer_green", "knd_Holo_optic", [], [], ""],
["knd_e22_F", "", "ACE_acc_pointer_green", "knd_e22_scope_attachment", [], [], ""],
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""],
["knd_e11", "", "acc_flashlight", "", [], [], ""],
["knd_DC15A_F", "", "", "knd_Holo_optic_DC15_redOne", ["knd_dc15a_mag"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""],
["knd_DC15C_F", "", "", "knd_Holo_optic_DC15_redTwo", ["knd_dc15c_mag"], [], ""],
["knd_DC15S_New_F", "", "", "knd_Holo_optic_DC15_redTwo", ["knd_dc15s_mag"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["KND_SX21_Base", "", "", "", ["knd_mag_sx21_buck"], ["knd_mag_UGL_SX21"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["knd_ec9", "", "", "", [], [], ""]
]];

private _mgs = [
    ["knd_t21", "", "", "", [], [], "bipod_02_F_blk"],
    ["KND_TL50_Base", "", "ACE_acc_pointer_green", "knd_Holo_optic", [], [], "bipod_01_F_blk"],
	["knd_roba_F", "", "", "knd_a300_susat_attachment", [], [], ""]
];

_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["knd_DC15X_F", "", "", "knd_dc15x_scopeLong", [], [], "knd_bipod_dc15X_F"],
    ["knd_SB2P_F", "", "", "", [], [], ""]
];

_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

_militaryLoadoutData set ["sniperRifles", [
["knd_NT242", "", "", "", [], [], "bipod_01_F_blk"]
]];
_militaryLoadoutData set ["sidearms", [
["knd_de10", "", "", "knd_de10_scope", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["knd_opfor_Patroltrooper"]];
_policeLoadoutData set ["vests", ["knd_opfor_Patroltrooper_vest"]];
private _helmets = ["knd_opfor_patroltrooper_helmet"];
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["knd_ec9", "", "", "", [], [], ""],
["knd_DC15C_F", "", "", "knd_Holo_optic_DC15_redTwo", ["knd_dc15c_mag"], [], ""],
["knd_DC15S_New_F", "", "", "knd_Holo_optic_DC15_redTwo", ["knd_dc15s_mag"], [], ""]
]];
_policeLoadoutData set ["sidearms", ["knd_se14c"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["ls_imperialUniform_army_trooper","ls_imperialUniform_army_armored","ls_imperialUniform_army_r"]];
_militiaLoadoutData set ["vests", ["ls_imperialVest_army","ls_imperialVest_army_h","ls_imperialVest_army_damaged","ls_imperialVest_medic"]];
_militiaLoadoutData set ["Hvests", ["ls_imperialVest_officer"]];
_militiaLoadoutData set ["backpacks", ["JMSLLTE_back_rebsmall_imp_v1","knd_medicSatchel"]];
_militiaLoadoutData set ["helmets", ["ls_imperialHelmet_kepi", "ls_imperialHelmet_kepi_g","ls_imperialHelmet_army","ls_imperialHelmet_army_gur","ls_imperialHelmet_army_gdr","ls_imperialHelmet_army_gd","ls_imperialHelmet_army_gu"]];

_militiaLoadoutData set ["slRifles", [
["knd_e22_F", "", "acc_flashlight", "knd_e22_scope_attachment", [], [], ""]
]];
_militiaLoadoutData set ["rifles", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""],
["knd_e11", "", "acc_flashlight", "", [], [], ""],
["knd_DP23_F", "", "", "", [], [], ""],
["knd_DC15A_F", "", "", "knd_Holo_optic_DC15_redOne", ["knd_dc15a_mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["knd_ec9", "", "", "", [], [], ""],
["knd_DC15C_F", "", "", "knd_Holo_optic_DC15_redTwo", ["knd_dc15c_mag"], [], ""],
["knd_DC15S_New_F", "", "", "knd_Holo_optic_DC15_redTwo", ["knd_dc15s_mag"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["knd_e11", "", "acc_flashlight", "knd_e11_scope_attachment", [], [], ""]
]];
_militiaLoadoutData set ["SMGs", ["knd_DC15S_New_F", "knd_e11"]];
_militiaLoadoutData set ["machineGuns", [
["knd_dlt19_F", "", "", "", ["knd_dlt19_mag"], [], "knd_bipod_dlt19_F"],
["knd_DC15LE_F", "", "", "", ["knd_dc15le_mag"], [], ""]
]];

private _marksmanRifles = [
	["knd_t21B", "", "ACE_acc_pointer_green", "knd_t21B_scope_attachment", [], [], "bipod_01_F_blk"],
	["knd_dlt19D_F", "", "", "knd_scope_DLT19D_F", [], [], ""],
    ["knd_DC15B_F", "", "", "", ["knd_dc15a_mag"], [], ""]
];
private _sniperRifles = [
    ["knd_dlt19X_F", "", "", "knd_scope_DLT19X_F", [], [], ""],
    ["knd_DC15X_F", "", "", "knd_dc15x_scopeLong", [], [], ""]
    ];

_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["knd_A300_Pistol_F"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["JMSLLTE_EmpTrooperArmor_green_F_CombatUniform"]];
_crewLoadoutData set ["vests", ["JMSLLTE_TrooperBelt_armor"]];
_crewLoadoutData set ["helmets", ["JMSLLTE_Tanktrooper_trooper_helmet"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["JMSLLTE_EmpTiePilot_black_F_CombatUniform"]];
_pilotLoadoutData set ["vests", ["JMSLLTE_TIEpilot_vest_armor"]];
_pilotLoadoutData set ["helmets", ["JMSLLTE_EmpTiePilot_helmet"]];



/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

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
    ["stormJetHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["stormJetUniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    ["stormJetBackpacks"] call _fnc_setBackpack;
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
	["SquadLeader", _squadLeaderTemplate, [["baseClass", "knd_stormtrooper_shock_officer_F", true]], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [["baseClass", "knd_stormtrooper_shock_F", true]], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [["baseClass", "knd_darktrooper_jetpack_F", true]], [_prefix]],
	["LAT", _latTemplate, [["baseClass", "knd_darktrooper_powerpack_F", true]], [_prefix]],
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