/*  Shared worker for the capital ship QRF supports (Sci-fi Support PLUS Munificent frigate)

Environment: Server, scheduled, internal

Arguments:
    <STRING> The (unique) name of the support, mostly for logging
    <SIDE> The side from which the support should be sent (occupants or invaders)
    <STRING> Resource pool used for this support. Should be "attack" or "defence"
    <SCALAR> Maximum resources to spend on this QRF.
    <OBJECT|BOOL> Target, or "false" for none
    <POSITION> Estimated position of target, or center of target zone
    <SCALAR> Reveal value 0-1, higher values mean more information provided about support
    <SCALAR> Setup delay time in seconds, if negative will calculate based on war tier
    <BOOL> Linger: the ship becomes a destructible Sci-fi Support PLUS "support ship" that patrols,
           fires at enemies and drops a pod every 45s until destroyed or the linger time is up.
           Health, extra turrets, patrol and linger time come from the AGD_capitalShip_* CBA settings

Returns:
    <SCALAR> Resource cost of support call, or -1 for failure
*/

#include "..\..\script_component.hpp"

params ["_suppName", "_side", "_resPool", "_maxSpend", "_target", "_targPos", "_reveal", "_delay", ["_linger", false]];

if (isNil "ScifiSupportPLUS_fnc_JumpShipin") exitWith {
    diag_log "[AGD] Capital QRF cancelled: Sci-fi Support PLUS is not loaded";
    -1
};

private _airbase = [_side, _targPos] call A3A_fnc_availableBasesAir;
if (isNil "_airbase") exitWith { -1 };

private _podCount = 4 max (8 min (2 * ceil (_maxSpend / A3A_balanceVehicleCost)));
private _vultureCount = [0, 2] select (tierWar >= 8);

// Capital ship premium plus pods and fighters, a lingering ship keeps reinforcing so costs more
private _estResources = A3A_balanceVehicleCost * (2 + _podCount / 4 + _vultureCount * 0.5) * ([1, 1.5] select _linger);
A3A_supportStrikes pushBack [_side, "TROOPS", _targPos, time + 45*60, 45*60, _estResources];

private _aggro = [aggressionOccupants, aggressionInvaders] select (_side == Invaders);
if (_delay < 0) then { _delay = (0.5 + random 1) * (300 - 15*tierWar - 1*_aggro) };

// The ship jumps in from the direction of the originating base
private _direction = round (_targPos getDir markerPos _airbase);
private _spawnPos = ATLToASL [_targPos select 0, _targPos select 1, 0];

[_suppName, _side, _delay, _targPos, _spawnPos, _direction, _podCount, _vultureCount, _linger] spawn {
    params ["_suppName", "_side", "_delay", "_targPos", "_spawnPos", "_direction", "_podCount", "_vultureCount", "_linger"];

    sleep _delay;

    private _getSetting = { params ["_name", "_default"]; missionNamespace getVariable [_name, _default] };

    // The ship is jumped in ourselves so the troops can come from the faction template
    private _faction = if (_side == Occupants) then { A3A_faction_occ } else { A3A_faction_inv };
    private _shipType = selectRandom (_faction getOrDefault ["vehiclesCapitalShip", ["ls_munificent"]]);
    private _ship = [ASLToATL _spawnPos, _direction, 700, _shipType, [_side]] call ScifiSupportPLUS_fnc_JumpShipin;
    if (isNil "_ship" || { isNull _ship }) exitWith { diag_log "[AGD] Capital QRF: ship failed to jump in" };
    { _x addCuratorEditableObjects [[_ship], true] } forEach allCurators;

    private _lingerTime = 60 * (["AGD_capitalShip_lingerMinutes", 15] call _getSetting);

    if (_linger) then {
        // Registered as a destructible support ship: HP pool, shoots at enemies, crashes when destroyed
        private _turrets = floor (["AGD_capitalShip_turrets", 2] call _getSetting);
        private _hp = ["AGD_capitalShip_HP", 1000] call _getSetting;
        sleep 6;
        [_ship, true, true, _turrets > 0, _turrets, false, _hp, 0] call ScifiSupportPLUS_FTL_SupportShip;

        if (["AGD_capitalShip_patrol", true] call _getSetting) then {
            private _radius = ["AGD_capitalShip_patrolRadius", 1500] call _getSetting;
            // Random-area patrol around where the ship arrived, not the whole map
            [_ship, 700, _radius, false, true] spawn ScifiSupportPLUS_FTL_SupportShip_PatrolMap;
        };
    };

    // Let the jump-in finish before anything leaves the ship
    sleep 15;

    private _podGroups = [];
    for "_i" from 1 to _vultureCount do {
        private _plane = createVehicle ["3AS_CIS_Vulture_F", _ship modelToWorld [0, 0, -50], [], 0, "FLY"];
        private _crewGroup = [_side, _plane] call A3A_fnc_createVehicleCrew;
        private _wp = _crewGroup addWaypoint [_targPos, 0];
        _wp setWaypointType "SAD";
        _podGroups pushBack _crewGroup;
        sleep 3;
    };

    private _dropPod = {
        params ["_pos"];
        private _group = [_side, _pos, _targPos] call A3A_fnc_capitalDropPod;
        if (!isNull _group) then { _podGroups pushBack _group };
    };

    if (_linger) then {
        // Keeps reinforcing every 45s while the ship survives, up to the pod budget
        private _timeOut = time + _lingerTime;
        private _podsLeft = _podCount;
        while { time < _timeOut && { _podsLeft > 0 } } do {
            if (isNull _ship || { !alive _ship }) then { break };
            [_targPos getPos [30 + random 100, random 360]] call _dropPod;
            _podsLeft = _podsLeft - 1;
            sleep 45;
        };
        // Stay until destroyed or the time is up
        waitUntil { sleep 10; time >= _timeOut || isNull _ship || { !alive _ship } };
    } else {
        for "_i" from 1 to _podCount do {
            [_targPos getPos [30 + random 100, random 360]] call _dropPod;
            sleep 6;
        };
        sleep 60;
    };

    // Ship leaves if it survived; a destroyed one is handled by the support ship death handler
    if (!isNull _ship && { alive _ship }) then {
        [_ship] call ScifiSupportPLUS_fnc_JumpOut;
    };

    // Survivors go home once the call is over, like regular Antistasi QRFs
    sleep 600;
    { [_x] spawn A3A_fnc_enemyReturnToBase } forEach (_podGroups select { !isNull _x && { units _x isNotEqualTo [] } });
};

private _approxTime = _delay + 15;
[_reveal, _side, "ORBITAL", _targPos, _approxTime] spawn A3A_fnc_showInterceptedSetupCall;

_estResources;
