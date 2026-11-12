#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {"AGD_Module_Support_Occupants_QRFCapital", "AGD_Module_Support_Invaders_QRFCapital", "AGD_Module_Support_Occupants_QRFCapitalLinger", "AGD_Module_Support_Invaders_QRFCapitalLinger"};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3A_zeus"};
        author = AUTHOR;
        authors[] = { AUTHOR};
        authorUrl = "";
        VERSION_CONFIG;
    };
};


#include "CfgFunctions.hpp"
#include "CfgVehicles.hpp"

class A3U
{
    #include "config\cfgForbiddenItems.hpp"
    #include "config\plane\cfgPlaneLoadouts.hpp"
    #include "config\trader\cfgTraderMods.hpp"
};