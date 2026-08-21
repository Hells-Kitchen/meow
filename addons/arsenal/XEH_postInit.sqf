#include "defines.hpp"

private _required = [
    "jn_fnc_arsenal", "jn_fnc_arsenal_addItem", "jn_fnc_arsenal_removeItem",
    "jn_fnc_arsenal_itemType", "jn_fnc_arsenal_cargoToArray",
    "jn_fnc_arsenal_requestOpen", "jn_fnc_arsenal_requestClose",
    "jn_fnc_arsenal_cargoToArsenal",
    "A3A_fnc_isMember", "A3A_fnc_unlockEquipment", "A3A_fnc_equipRebel",
    "ace_arsenal_fnc_openBox", "ace_arsenal_fnc_addVirtualItems",
    "ace_arsenal_fnc_removeVirtualItems", "ace_arsenal_fnc_refresh",
    "ace_arsenal_fnc_message"
];

private _absent = _required select {isNil _x};

if (_absent isNotEqualTo []) then {
    diag_log format ["[A3U_ACEAR] MISSING DEPENDENCIES: %1. The ACE arsenal bridge will not work correctly.", _absent];
};

if (!hasInterface) exitWith {};

[] call A3U_ACEAR_fnc_hookAce;

[
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17],
    "A3U_ACEAR_actions",
    "Antistasi",
    [

        [
            "A3U_defaultGear",
            "Default gear",
            {missionNamespace getVariable ["A3U_ACEAR_active", false]},
            "",
            {},
            {[] call A3U_ACEAR_fnc_defaultGear}
        ],
        [
            "A3U_saveRebelLoadout",
            "Save rebel loadout",
            {(missionNamespace getVariable ["A3U_ACEAR_mode", ""]) isEqualTo "loadout"},
            "",
            {},
            {[] call A3U_ACEAR_fnc_saveRebelLoadout}
        ]
    ],
    {missionNamespace getVariable ["A3U_ACEAR_active", false]}
] call ace_arsenal_fnc_addAction;

[
    [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [0, 1, 2, 3, 4, 5, 6, 7]],
    "A3U_ACEAR_sortStock",
    "Arsenal stock",
    {
        params ["", "_class"];
        private _stock = _class call A3U_ACEAR_fnc_poolCount;

        if (_stock isEqualTo -1) then {999999} else {_stock}
    }
] call ace_arsenal_fnc_addSort;

[
    "Antistasi Ultimate",
    "A3U_ACEAR_addToArsenal",
    "Add equipment to arsenal (admin)",
    {
        if !([] call A3U_ACEAR_fnc_canAdmin) exitWith {false};
        if (!isNull findDisplay ACEAR_IDD_ADD) exitWith {false};
        createDialog "A3U_ACEAR_AddToArsenalDialog";
        true
    },
    {false},
    [0, [false, false, false]]
] call CBA_fnc_addKeybind;

diag_log "[A3U_ACEAR] Antistasi Ultimate ACE arsenal bridge ready.";
