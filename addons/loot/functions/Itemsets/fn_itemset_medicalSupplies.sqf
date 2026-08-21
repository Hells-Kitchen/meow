/*
 * File: fn_loadout_addMedicalSupplies.sqf
 * Author: Spoffy
 * Description:
 *    Description goes here
 * Params:
 *    _level - Level of supplies to give - 'Minimal', 'Standard' or 'Medic'
 *    _side - side of unit. Must not be provide in faction template. Must be provided after faction templates.
 * Returns:
 *    Modified loadout
 * Dependencies
 *    <NAMESPACE> _dataStore is defined in compatibilityLoadFaction. Medical equipment is set in XXXDefaults or the template if overridden. "mediKits" and "firstAidKits" are required.
 * Example Usage:
 *    Example usage goes here
 */

params ["_level",["_side",sideUnknown]];
private _factionData = if (_side in [west, east, independent, civilian]) then {	// This is used in template loadout setting as well as rebel medic spawning. both are different environments.
	[A3A_faction_occ, A3A_faction_inv, A3A_faction_reb, A3A_faction_civ] #([west, east, independent, civilian] find _side);
} else {
	_dataStore;
};

if (_level == "MEDIC") exitWith {
	switch (true) do {
		case (A3A_hasACEMedical): {
			[
				["ACE_surgicalKit",1],
				["knd_AFAK",1],
				["knd_medical_supplybox_more_bacta",1],
				["knd_medical_supplybox_more_saline",1],

				["ACE_packingBandage",15],
				["knd_bactadressing",10],
				["knd_bacta",10],

				["knd_symoxin",5],
				["knd_medical_staple",5],
				["knd_cordrazine",5],
				["knd_epinephrine_ampoule",5],

				["knd_voluminex_500",5],
				["knd_rapidfuse_500",3],
				["knd_rapidfuse_compressed",3],
				["knd_synthblood",1],

				["ACE_tourniquet",3],
				["ACE_splint",4],
				["knd_woundglue",3],
				["knd_medical_supplybox_staples",1],
				["knd_medical_supplybox_bacta",1],
				["knd_medical_supplybox_saline",1],
				["knd_drone_healer",1]
			]
		};
		default {
			private _mediKits = _factionData get "mediKits";
			private _firstAidKits = _factionData get "firstAidKits";
			[
				[_mediKits#0, 1],
				[_firstAidKits#0,10]
			]
			};
		};
	};

	if (_level == "STANDARD") exitWith {
	switch (true) do {
		case (A3A_hasACEMedical): {
			[
				["ACE_tourniquet",1],
				["knd_rapidfuse_500",1],
				["knd_symoxin",2],
				["knd_medical_staple",2],
				["knd_cordrazine",2],
				["ACE_packingBandage",5],
				["knd_bactadressing",3],
				["knd_bacta",3],
				["ACE_splint", 2],
				["knd_woundglue",3],
				["knd_epinephrine_ampoule",5],
				["knd_medical_supplybox_staples",1],
				["knd_medical_supplybox_bacta",1],
				["knd_medical_supplybox_saline",1]
			]
		};
		default {
			private _firstAidKits = _factionData get "firstAidKits";
			[
				[_firstAidKits#0,3]
			]
		};
	};
};
//If neither of them, return minimal medical supplies
switch (true) do {
	case (A3A_hasACEMedical): {
		[
			["knd_stimpak",1],
			["knd_medical_staple",1],
			["ACE_fieldDressing",3],
			["knd_woundglue",3],
			["knd_epinephrine_ampoule",5]
		]
	};
	default {
		private _firstAidKits = _factionData get "firstAidKits";
		[
			[_firstAidKits#0,3]
		]
	};
};