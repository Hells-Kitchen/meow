#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {"knd_a3a_jockey","knd_a3a_jockey_alt","knd_a3a_jockey_navy","knd_a3a_jockey_navy_alt"};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {};
        author = AUTHOR;
        authors[] = { AUTHOR };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class A3A 
{
    #include "Templates.hpp"
    #include "CfgLogistics.hpp" //this should be at the end of the config.cpp as it will redefine the macro ADDON
};

#include "CfgMarkers.hpp"
#include "CfgWeapons.hpp"