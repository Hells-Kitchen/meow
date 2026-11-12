params ["_configClass", "_itemMod", "_itemType"];

private _cn = configName _configClass;

if (_cn in A3U_forbiddenItems && {getNumber (configFile >> "A3U" >> "forbiddenItems" >> _cn >> "appearInCrates") isEqualTo 0}) exitWith {
	false
};

if !(getNumber (_configClass >> "type") in [1, 2, 4]) exitWith { true };

private _KNDAddonPrefix = "agd_";
private _addons = configSourceAddonList _configClass;
private _isKND = false;
{
	if ((toLowerANSI _x) find _KNDAddonPrefix isEqualTo 0) exitWith { _isKND = true };
} forEach _addons;

if !(_isKND) exitWith { false };

if (_cn == "knd_mag_amban") then {
    diag_log format ["[KND CRATE FILTER] Processing %1, mod:%2, type:%3", _cn, _itemMod, _itemType];
};

true;