/*  Weight for the lingering capital ship QRF. Same availability rules as QRFCAPITAL, slightly rarer. */

#include "..\..\script_component.hpp"

params ["_target", "_side", "_maxSpend", "_availTypes"];

private _weight = [_target, _side, _maxSpend, _availTypes] call A3A_fnc_SUP_QRFCAPITALAvailable;
_weight * 0.75;
