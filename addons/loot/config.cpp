#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = 2.18;
        requiredAddons[] =
        {
            "A3A_core"
        };
        author = AUTHOR;
        authors[] = { AUTHOR};
        authorUrl = "";
    };
};

class A3A 
{
    #if __A3_DEBUG__
        #include "CfgFunctions.hpp"
    #endif
};

#include "CfgFunctions.hpp"