/*  Get capital ship QRF support selection weight against target

Arguments:
    <OBJECT> Target object
    <SIDE> Side to send support from
    <SCALAR> Maximum resources to spend
    <ARRAY> Array of strings of available types for this faction

Return value:
    <SCALAR> Weight value, 0 for unavailable or useless
*/

#include "..\..\script_component.hpp"

params ["_target", "_side", "_maxSpend", "_availTypes"];

if (isNil "ScifiSupportPLUS_fnc_JumpShipin") exitWith { 0 };
if (tierWar < 6) exitWith { 0 };

if (_target isKindOf "Air") exitWith { 0.1 };
if !(_target isKindOf "Man") exitWith { 0.4 };
(tierWar - 4) / 10;
