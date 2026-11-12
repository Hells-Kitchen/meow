
#include "script_component.hpp"
#include "config_lists.hpp"
class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {UNIT_LIST};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {};
        author = AUTHOR;
        authors[] = { AUTHOR };
        authorUrl = "";
        skipWhenMissingDependencies = 1;
    };
};
class CfgFactionClasses
{
    class Antistasi_CorpSec
    {
        displayName = "CorpSec Assets";
        priority = 2;
        side = 0;
    };
};

class SensorTemplateIR;
class SensorTemplateActiveRadar;
class SensorTemplateDataLink;
class SensorTemplateVisual;
class SensorTemplatePassiveRadar;
class SensorTemplateLaser;
class SensorTemplateNV;


#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"