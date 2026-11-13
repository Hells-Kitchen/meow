#include "script_component.hpp"
#include "config_lists.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {
            UNIT_LIST
        };
        weapons[] = {
            ITEM_LIST
        };
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3A_core", "A3A_ultimate"};
        author = AUTHOR;
        authors[] = {""};
        url = CSTRING(URL);
        VERSION_CONFIG;
    };
};


class A3A 
{
    #include "params/params.hpp"
};