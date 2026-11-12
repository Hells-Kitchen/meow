private _hasKND = isClass (configFile >> "CfgPatches" >> "knd_common");
private _hasLLTE = isClass (configFile >> "CfgPatches" >> "JMSLLTE_empire_mod");


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

["name", "CIS"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", "CIS Lucrehulk Supply Cruiser"] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", "\ls\core\addons\data\flags\flag_rebelAlliance_damaged_ca.paa"] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "Rebel_Alliance"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

private _vehiclesBasic = ["3AS_Combat_Speeder_F"];
private _vehiclesLightUnarmed = ["3AS_SAC_F"];
private _vehiclesLightArmed = ["3AS_PAC_F"];
private _vehiclesTrucks = ["3AS_PAC_F"];
private _vehiclesCargoTrucks = ["3AS_SAC_Repair_F"];
private _vehiclesAmmoTrucks = ["3AS_SAC_Repair_F"];
private _vehiclesRepairTrucks = ["3AS_SAC_Repair_F"];
private _vehiclesFuelTrucks = ["3AS_SAC_Repair_F"];
private _vehiclesMedical = ["3AS_SAC_Repair_F"];
private _vehiclesAPCs = ["3AS_N99","3AS_GAT"];
private _vehiclesTanks = ["3AS_AAT","3AS_Octuptarra_Magna_F","3AS_Heavy_AAT_Flamer_F"];
private _vehiclesAA = ["3AS_Hailfire_SAM"];
private _vehiclesLightAPCs = [];
private _vehiclesIFVs = [];
private _vehiclesDropPod = ["ls_droidDispenser"];
private _vehiclesCapitalShip = ["ls_munificent","ls_staticShip_recusant","ls_staticShip_administratorClassCarrier"];
private _vehiclesAirborne = ["3AS_HMP_Transport"];
private _vehiclesTransportBoats = ["I_Boat_Transport_01_F"];
private _vehiclesGunBoats = ["I_Boat_Armed_01_minigun_F"];
private _vehiclesAmphibious = ["3AS_MTT"];
private _vehiclesPlanesCAS = ["3AS_CIS_Vulture_CAS_F"];
private _vehiclesPlanesAA = ["3AS_CIS_Vulture_AA_F"];
private _vehiclesPlanesTransport = ["ls_vehicle_cisDropship"];
private _vehiclesHelisLight = ["3AS_HMP_Transport"];
private _vehiclesHelisTransport = ["3AS_HMP_Transport"];
private _vehiclesHelisLightAttack = ["3AS_HMP_Gunship"];
private _vehiclesHelisAttack = ["3AS_MAF_Gunship_F"];
private _vehiclesArtillery = ["3AS_HAGM_CIS"];
private _uavsAttack = ["O_T_UAV_04_CAS_F"];
private _uavsPortable = ["JLTS_UAV_prowler_cis"];
private _vehiclesMilitiaLightArmed = ["WM_V25_Speeder", "AGD_Rebel_Speeder_armed"];
private _vehiclesMilitiaTrucks = ["AGD_Rebel_ITT_Logistic"];
private _vehiclesMilitiaCars = ["AGD_Rebel_Speeder_Unarmed"];
private _vehiclesMilitiaAPCs = ["3AS_PX10_REB_F"];
private _vehiclesPolice = ["WM_V25_Speeder"];

if (_hasKND) then {
    // _vehiclesBasic append ["KND_VEHICLE_CLASSNAME"];
};
if (_hasLLTE) then {
    // Add LLTE vehicles here.
};

["vehiclesBasic", _vehiclesBasic] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", _vehiclesLightUnarmed] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",_vehiclesLightArmed] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
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

["vehicleRadar", "3AS_CIS_FCP"] call _fnc_saveToTemplate;
["vehicleSam", "3as_FlakCannon"] call _fnc_saveToTemplate;

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

["vehiclesArtillery", _vehiclesArtillery] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
["3AS_HAGM_CIS", ["32Rnd_155mm_Mo_shells"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", _uavsAttack] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", _uavsPortable] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", _vehiclesMilitiaLightArmed] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", _vehiclesMilitiaTrucks] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", _vehiclesMilitiaCars] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesMilitiaAPCs", _vehiclesMilitiaAPCs] call _fnc_saveToTemplate;     					//this line determines militia APCs

["vehiclesPolice", _vehiclesPolice] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["ls_vehicle_mrbc", "3AS_HeavyRepeater_Armoured"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["AGD_Shellcracker_AT"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["AGD_Shellcracker_AA"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["WM_ImperialMortar"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", []] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;		//this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;			//this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

//Minefield definition
["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

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
    "ls_hideHead"
]] call _fnc_saveToTemplate;
["voices", ["ls_voice_b1Droid"]] call _fnc_saveToTemplate;

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

_loadoutData set ["wristblasters", ["ls_weapon_wristblaster_B2","ls_weapon_wristblaster_B2_junkyard"]];
_loadoutData set ["lightATLaunchers", [
["3AS_RPS6_F", "", "", "", [], [], ""],
["3AS_RPS6_G", "", "acc_flashlight", "", [], [], ""],
["WM_Launch_HH15", "", "acc_flashlight", "", ["WM_ProtonTorpedo"], [], ""]
]];
_loadoutData set ["ATLaunchers", ["3AS_HH12_F", "3AS_RPS6_HP"]];
_loadoutData set ["missileATLaunchers", [
["3AS_E60R_F", "", "acc_flashlight", "", ["3AS_E60R_AT"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["ls_weapon_e60r_aa", "", "acc_flashlight", "", ["ls_magazine_e60r_aa"], [], ""]
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
_loadoutData set ["NVGs", ["ls_nvg_headlamp_invisible"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["Binocular"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["WM_ParaMilitary_Shirt_Rolled"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["ls_imperialVest_army_damaged"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["ls_helmet_jockey_alt"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["3AS_U_CIS_TS"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["ls_vest_invisible_armorLevel5"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["ls_helmet_invisible_armorLevel5"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", ["ls_droidUniform_b1"]];				
_loadoutData set ["slUniforms", ["ls_droidUniform_b1_commander"]];
_loadoutData set ["engineerUniforms", ["ls_droidUniform_b1_engineer"]];
_loadoutData set ["explosiveUniforms", ["ls_droidUniform_b1_saboteur"]];
_loadoutData set ["grenadierUniforms", ["ls_droidUniform_b1_grenadier"]];
_loadoutData set ["sniUniforms", ["ls_droidUniform_b1_scout"]];
_loadoutData set ["heavyUniforms", ["ls_droidUniform_b1_heavy"]];
_loadoutData set ["B2Uniforms", ["ls_droidUniform_b2"]];

_loadoutData set ["helmets", ["ls_droidHelmet_b1"]];
_loadoutData set ["slHat", ["ls_droidHelmet_b1_commander"]];
_loadoutData set ["sniHats", ["ls_droidHelmet_b1_scout"]];
_loadoutData set ["engineerHats", ["ls_droidHelmet_b1"]];
_loadoutData set ["grenadierHats", ["ls_droidHelmet_b1_grenadier"]];
_loadoutData set ["heavyHats", ["ls_droidHelmet_b1"]];
_loadoutData set ["explosiveHats", ["ls_droidHelmet_b1_saboteur"]];
_loadoutData set ["B2Hats", []];

_loadoutData set ["engineerBackpacks", ["ls_droidBackpack_b1_engineer"]];
_loadoutData set ["explosiveBackpacks", ["ls_droidBackpack_b1_saboteur"]];
_loadoutData set ["grenadierBackpacks", ["ls_droidBackpack_b1_grenadier"]];
_loadoutData set ["heavyBackpacks", ["ls_droidBackpack_b1_heavy"]];

_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["ls_droidVest_b1_pauldrons_electrostaff"]];
_loadoutData set ["backpacks", ["ls_droidBackpack_b1"]];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["ls_droidBackpack_b1_antenna"]];
_loadoutData set ["atBackpacks", ["ls_droidBackpack_b1_heavy"]];

_loadoutData set ["glasses", ["ls_droidGlasses_b1Sniper"]];	//cosmetics
_loadoutData set ["goggles", ["ls_droidGlasses_b1Tech"]];		//cosmetics

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
_sfLoadoutData set ["vests", ["ls_vest_invisible_armorLevel4"]];
_sfLoadoutData set ["Hvests", ["ls_vest_invisible_armorLevel5"]];
_sfLoadoutData set ["binoculars", ["JLTS_DroidBinocular"]];
_sfLoadoutData set ["uniforms", ["ls_droidUniform_bx"]];				
_sfLoadoutData set ["slUniforms", ["ls_droidUniform_bx_captain"]];
_sfLoadoutData set ["engineerUniforms", ["ls_droidUniform_bx_diplomat"]];
_sfLoadoutData set ["explosiveUniforms", ["ls_droidUniform_bx_security"]];
_sfLoadoutData set ["grenadierUniforms", ["ls_droidUniform_bx_security"]];
_sfLoadoutData set ["sniUniforms", ["ls_droidUniform_bx"]];
_sfLoadoutData set ["heavyUniforms", ["ls_droidUniform_bx"]];
_sfLoadoutData set ["B2Uniforms", ["ls_droidUniform_b2"]];

_sfLoadoutData set ["helmets", ["ls_helmet_invisible_armorLevel5"]];
_sfLoadoutData set ["slHat", ["ls_helmet_invisible_armorLevel5"]];
_sfLoadoutData set ["sniHats", ["ls_helmet_invisible_armorLevel5"]];
_sfLoadoutData set ["engineerHats", ["ls_helmet_invisible_armorLevel5"]];
_sfLoadoutData set ["grenadierHats", ["ls_helmet_invisible_armorLevel5"]];
_sfLoadoutData set ["heavyHats", ["ls_helmet_invisible_armorLevel5"]];
_sfLoadoutData set ["explosiveHats", ["ls_helmet_invisible_armorLevel5"]];

_sfLoadoutData set ["slRifles", [
["agd_weapons_E5C", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "ls_cows_e11_optic_thermal", [], [], ""],
["agd_weapons_E5C", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "3AS_optic_DC15L_F", [], [], ""]
]];
_sfLoadoutData set ["rifles", [
["agd_weapons_Arkanian_Stock_F", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_optic_DC15X_F", [], [], ""]
]];
_sfLoadoutData set ["carbines", [
["agd_weapons_Arkanian_F", "", "3AS_Imp_Light_E11", "3AS_optic_DC15C_F", [], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["agd_weapons_MPL_F", "", "", "", ["3AS_3Rnd_HE_Grenade_shell", "3AS_3Rnd_HEAT_Grenade_shell"], [], ""],
["agd_weapons_E11_GL", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""]
]];

_sfLoadoutData set ["SMGs", [
["agd_weapons_E5", "", "3AS_Imp_Light_E11", "", [], [], ""]
]];

private _mgs = [
    ["agd_weapons_DLT19", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_1", ["3AS_200Rnd_EM40_DLT19_Mag"], [], "bipod_03_F_blk"],
    ["agd_weapons_DC15L_F", "3AS_muzzle_DC15LE_F", "3AS_Imp_Light_E11", "optic_tws_mg", ["3AS_200Rnd_EM40_Mag"], [], "3AS_bipod_DC15L_F"]
];

_sfLoadoutData set ["machineGuns", _mgs];

_sfLoadoutData set ["marksmanRifles", [
    ["agd_weapons_firepuncher", "", "3AS_Imp_Light_E11", "ls_cows_mercenarySniper_scope", [], [], "3AS_Imp_Bipod_DLT19"],
    ["agd_weapons_DLT19D", "", "3AS_Imp_Light_E11", "", [], [], "3AS_Imp_Bipod_DLT19"]
]];
_sfLoadoutData set ["sniperRifles", [
["agd_weapons_firepuncher", "", "3AS_Imp_Light_E11", "ls_cows_mercenarySniper_scope", [], [], "3AS_Imp_Bipod_DLT19"]
]];
_sfLoadoutData set ["sidearms", [
["3AS_FE20_GrenadeLauncherPistol", "", "", "", ["3AS_1UGL_MK54_HE_shell"], [], ""]
]];

if (_hasKND) then {
    // (_sfLoadoutData get "uniforms") append ["KND_UNIFORM_CLASSNAME"];
    // (_sfLoadoutData get "rifles") append [["KND_RIFLE_CLASSNAME", "", "", "", [], [], ""]];
    // (_sfLoadoutData get "machineGuns") append [["KND_MACHINE_GUN_CLASSNAME", "", "", "", [], [], ""]];
};

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["vests", ["ls_vest_invisible_armorLevel3"]];
_eliteLoadoutData set ["Hvests", ["ls_vest_invisible_armorLevel4"]];

_eliteLoadoutData set ["slRifles", [
["agd_weapons_E5", "3AS_Muzzle_Arkanian_Pistol_1_F", "3AS_Imp_Light_E11", "optic_ACO_grn", [], [], ""],
["agd_weapons_E5", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["agd_weapons_E5", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_E5", "ls_muzzle_westar35s_suppressor", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["agd_weapons_SBB3", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_SBB3", "3AS_muzzle_DC17S_F", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "optic_ACO_grn", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""],
["agd_weapons_E11_GL", "", "3AS_Imp_Light_E11", "optic_Aco", [], ["ls_magazine_40mm_IM41_HE", "ls_magazine_40mm_IM41_HE", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["agd_weapons_E5", "", "3AS_Imp_Light_E11", "optic_Aco", [], [], ""]
]];

_eliteLoadoutData set ["machineGuns", [
    ["agd_weapons_T21", "", "", "", [], [], ""],
    ["agd_weapons_Flamer_Base", "", "3AS_Imp_Light_E11", "", [], [], ""]
]];


private _marksmanRifles = [
    ["agd_weapons_mercenarySniper", "", "", "3AS_optic_DC15X_F", [], [], ""]
];

_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

_eliteLoadoutData set ["sniperRifles", [
["agd_weapons_mercenarySniper", "", "", "3AS_optic_DC15X_F", [], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["ls_weapon_rg4d", "", "", "", [], [], ""]
]];

if (_hasKND) then {
    // (_eliteLoadoutData get "rifles") append [["KND_RIFLE_CLASSNAME", "", "", "", [], [], ""]];
    // (_eliteLoadoutData get "machineGuns") append [["KND_MACHINE_GUN_CLASSNAME", "", "", "", [], [], ""]];
};

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["vests", ["ls_vest_invisible_armorLevel1","ls_vest_invisible_armorLevel2"]];
_militaryLoadoutData set ["Hvests", ["ls_vest_invisible_armorLevel3"]];

_militaryLoadoutData set ["slRifles", [
["agd_weapons_E5C", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""],
["agd_weapons_E5", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", [], [], ""]
]];
_militaryLoadoutData set ["rifles", [
["agd_weapons_E5C", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_E5", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["agd_weapons_E5C", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["agd_weapons_E5", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["agd_weapons_MPL_F", "", "", "", [], ["3AS_3Rnd_HE_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["agd_weapons_ScatterGun_F", "", "", "", ["3AS_8Rnd_ESlugY_Mag"], [], ""]
]];

private _mgs = [
    ["agd_weapons_E5C_stock", "", "3AS_Imp_Light_E11", "", [], [], "bipod_03_F_blk"]
];

_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["agd_weapons_Valken38X_F", "", "3AS_Imp_Light_E11", "3AS_optic_VK38X_F", ["3AS_10Rnd_EM80_Mag"], [], "3AS_bipod_VK38X_F"]
];

_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

_militaryLoadoutData set ["sniperRifles", [
["agd_weapons_mercenarySniper", "", "", "3AS_optic_DC15X_F", [], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["ls_weapon_rg4d", "", "", "", [], [], ""]
]];

if (_hasKND) then {
    // (_militaryLoadoutData get "rifles") append [["KND_RIFLE_CLASSNAME", "", "", "", [], [], ""]];
    // (_militaryLoadoutData get "machineGuns") append [["KND_MACHINE_GUN_CLASSNAME", "", "", "", [], [], ""]];
};

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["ls_uniform_spacer_alt","ls_uniform_spacer"]];
_policeLoadoutData set ["vests", ["ls_vest_spacer"]];
private _helmets = ["ls_helmet_service"];
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["agd_weapons_E5", "", "", "", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["ls_weapon_rg4d"]];

if (_hasKND) then {
    // (_policeLoadoutData get "uniforms") append ["KND_UNIFORM_CLASSNAME"];
};

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["vests", ["ls_vest_invisible_armorLevel0"]];
_militiaLoadoutData set ["Hvests", ["ls_droidVest_b1_pauldrons"]];

_militiaLoadoutData set ["slRifles", [
["agd_weapons_E5C", "", "3AS_Flashlight_A280_GL", "3AS_Optic_A280_F", [], [], ""]
]];
_militiaLoadoutData set ["rifles", [
["agd_weapons_E5", "", "3AS_Imp_Laser_DLT19", "", [], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["agd_weapons_acpr_F", "", "", "", [""], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["agd_weapons_E5C", "", "3AS_Flashlight_A280_GL", "", [], [], ""]
]];
_militiaLoadoutData set ["SMGs", ["agd_weapons_Cinnagaran_Carbine_F"]];
_militiaLoadoutData set ["machineGuns", [
["agd_weapons_E5C_stock", "", "acc_flashlight", "", [], [], "bipod_03_F_blk"]
]];

private _marksmanRifles = [["agd_weapons_mercenarySniper", "", "", "3AS_Optic_Cinnagaran_1_F", [], [], ""]];
private _sniperRifles = [["agd_weapons_E5S", "", "", "", [], [], ""]];

_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["ls_weapon_rg4d"]];

if (_hasKND) then {
    // (_militiaLoadoutData get "rifles") append [["KND_RIFLE_CLASSNAME", "", "", "", [], [], ""]];
    // (_militiaLoadoutData get "machineGuns") append [["KND_MACHINE_GUN_CLASSNAME", "", "", "", [], [], ""]];
};

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["ls_uniform_spacer"]];
_crewLoadoutData set ["vests", ["ls_vest_spacer"]];
_crewLoadoutData set ["helmets", ["ls_helmet_technician"]];

if (_hasKND) then {
    // (_crewLoadoutData get "uniforms") append ["KND_UNIFORM_CLASSNAME"];
};


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["ls_uniform_spacer_brown_alt"]];
_pilotLoadoutData set ["vests", ["ls_vest_spacer"]];
_pilotLoadoutData set ["helmets", ["WM_Rebel_PilotHelmet"]];

if (_hasKND) then {
    // (_pilotLoadoutData get "uniforms") append ["KND_UNIFORM_CLASSNAME"];
};





/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;
    ["backpacks"] call _fnc_setBackpack;
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
    ["backpacks"] call _fnc_setBackpack;

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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
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
    ["grenadierHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["grenadierUniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["grenadierBackpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
		["grenadierBackpacks"] call _fnc_setBackpack;
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
    ["explosiveHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["explosiveUniforms"] call _fnc_setUniform;
    ["explosiveBackpacks"] call _fnc_setBackpack;

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
    ["engineerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["engineerUniforms"] call _fnc_setUniform;
    ["engineerBackpacks"] call _fnc_setBackpack;

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
    ["B2Hats"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["B2Uniforms"] call _fnc_setUniform;
    [selectRandom ["wristblasters"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
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
    ["heavyHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests"] call _fnc_fallback] call _fnc_setVest;
    ["heavyUniforms"] call _fnc_setUniform;
    ["heavyBackpacks"] call _fnc_setBackpack;

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
    [selectRandomWeighted ["sniHats", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests"] call _fnc_fallback] call _fnc_setVest;
    ["sniUniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

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
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests"] call _fnc_fallback] call _fnc_setVest;
    ["sniUniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

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
    ["backpacks"] call _fnc_setBackpack;

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
	["Radioman", _radiomanTemplate, [["baseClass", "ls_droid_droideka", true]], [_prefix]],
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
	["Radioman", _radiomanTemplate, [["baseClass", "ls_droid_droideka_noShield", true]], [_prefix]],
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