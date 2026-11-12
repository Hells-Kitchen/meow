/*  Capital ship QRF support: ship jumps in, drops pods and fighters, then leaves. See fn_capitalQRF.sqf */

#include "..\..\script_component.hpp"

params ["_suppName", "_side", "_resPool", "_maxSpend", "_target", "_targPos", "_reveal", "_delay"];

[_suppName, _side, _resPool, _maxSpend, _target, _targPos, _reveal, _delay, false] call A3A_fnc_capitalQRF;
