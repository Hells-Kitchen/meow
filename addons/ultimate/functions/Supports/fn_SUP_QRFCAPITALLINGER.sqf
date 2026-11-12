/*  Capital ship QRF support, lingering variant: pods stay as destructible spawners and the ship hangs around. See fn_capitalQRF.sqf */

#include "..\..\script_component.hpp"

params ["_suppName", "_side", "_resPool", "_maxSpend", "_target", "_targPos", "_reveal", "_delay"];

[_suppName, _side, _resPool, _maxSpend, _target, _targPos, _reveal, _delay, true] call A3A_fnc_capitalQRF;
