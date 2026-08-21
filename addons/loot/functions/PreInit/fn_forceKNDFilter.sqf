/*
	Forcibly overrides A3A_fnc_equipmentIsValidForCurrentModset with our
	KND-only filter. Runs as a preInit function so this executes before
	A3A_core's initVarServer.sqf calls configSort — sidesteps the CfgFunctions
	merge order issue entirely by just overwriting the compiled function
	directly once everything has loaded.
*/
private _path = "\z\agd\addons\loot\functions\Ammunition\fn_equipmentIsValidForCurrentModset.sqf";

A3A_fnc_equipmentIsValidForCurrentModset = compileFinal preprocessFileLineNumbers _path;

diag_log format ["[KND OVERRIDE] equipmentIsValidForCurrentModset forcibly overridden via preInit from %1", _path];

// okay im stoopid