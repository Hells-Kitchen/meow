/*  CBA settings for the lingering capital ship support

Environment: preInit
*/

if (isNil "CBA_fnc_addSetting") exitWith {};

private _category = ["A Galaxy Divided", "Capital ship support"];

[
    "AGD_capitalShip_HP", "EDITBOX",
    ["Ship health", "Health of a lingering capital ship (Sci-fi Support PLUS support ship)"],
    _category, "1000", true,
    { params ["_value"]; AGD_capitalShip_HP = (parseNumber _value) max 1 }
] call CBA_fnc_addSetting;

[
    "AGD_capitalShip_turrets", "SLIDER",
    ["Extra turrets", "Number of extra turrets added to a lingering capital ship"],
    _category, [0, 10, 2, 0], true,
    { params ["_value"]; AGD_capitalShip_turrets = round _value }
] call CBA_fnc_addSetting;

[
    "AGD_capitalShip_patrol", "CHECKBOX",
    ["Patrol", "Lingering capital ships patrol around the target area"],
    _category, true, true,
    { params ["_value"]; AGD_capitalShip_patrol = _value }
] call CBA_fnc_addSetting;

[
    "AGD_capitalShip_patrolRadius", "SLIDER",
    ["Patrol radius", "Radius in metres of the patrol area"],
    _category, [200, 5000, 1500, 0], true,
    { params ["_value"]; AGD_capitalShip_patrolRadius = _value }
] call CBA_fnc_addSetting;

[
    "AGD_capitalShip_lingerMinutes", "SLIDER",
    ["Linger time (minutes)", "How long a lingering capital ship stays before jumping out"],
    _category, [1, 60, 15, 0], true,
    { params ["_value"]; AGD_capitalShip_lingerMinutes = _value }
] call CBA_fnc_addSetting;
