/*  Drops a pod from a capital ship and spawns the side's own troops from the faction template

Environment: Server, scheduled

Arguments:
    <SIDE> Side of the troops
    <POSITION> ATL position the pod lands at
    <POSITION> Position the troops should attack

Returns:
    <GROUP> The troop group, or grpNull if it failed
*/

params ["_side", "_dropPos", "_targPos"];

private _faction = if (_side == Occupants) then { A3A_faction_occ } else { A3A_faction_inv };

// First usable group key wins; the exact keys differ between templates
private _types = [];
{
    private _groups = _faction getOrDefault [_x, []];
    if (_groups isEqualTo []) then { continue };
    if (!isNil "SCRT_fnc_unit_getTiered") then { _groups = [_groups] call SCRT_fnc_unit_getTiered };
    private _pick = selectRandom _groups;
    if (_pick isEqualType [] && { _pick isNotEqualTo [] } && { (_pick select 0) isEqualType "" }) then { _types = _pick; break };
} forEach ["groupsTierAirborne", "groupsTierSquads", "groupsSquads", "groupsSmall"];

if (_types isEqualTo []) then {
    private _rifle = _faction getOrDefault ["unitRifleman", ""];
    if (_rifle isEqualTo "") exitWith {};
    for "_i" from 1 to 6 do { _types pushBack _rifle };
};
if (_types isEqualTo []) exitWith {
    diag_log "[AGD] Capital drop pod: no troop types found in faction template";
    grpNull
};

_dropPos set [2, 0];
private _pod = createVehicle ["ls_droidDispenser", [_dropPos select 0, _dropPos select 1, 400], [], 0, "CAN_COLLIDE"];
_pod allowDamage false;
_pod enableSimulation false;

// Moved by hand: the pod model has no physics when simulation is off
private _height = 400;
while { _height > 1 } do {
    _height = (_height - 4) max 0;
    _pod setPosATL [_dropPos select 0, _dropPos select 1, _height];
    sleep 0.03;
};
_pod setVectorUp surfaceNormal _dropPos;
"SmokeShellOrange" createVehicle _dropPos;

private _group = [_dropPos, _side, _types, true, false] call A3A_fnc_spawnGroup;
if (isNull _group) exitWith { deleteVehicle _pod; grpNull };

_group setBehaviour "AWARE";
_group setCombatMode "RED";
private _wp = _group addWaypoint [_targPos, 50];
_wp setWaypointType "SAD";

[_pod] spawn { sleep 10; deleteVehicle (_this select 0) };

_group;
