#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {};
        author = AUTHOR;
        authors[] = { AUTHOR };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class A3A 
{ //global overwrite or inclussion of new navGrids or map info
    #include "mapInfo.hpp"
    #include "NavGrid.hpp"
};

class CfgMissions
{
    class MPMissions
    {
        class Antistasi_Sullust
        {
            briefingName = "$STR_A3UE_maps_Sullust_mapname";
            directory = "z\agd\addons\maps\Antistasi_Sullust.3AS_Sullust";
        };
    };
};
