
#include "script_component.hpp"
#include "config_list.hpp"
class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {UNIT_LIST};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"SFA_Core"};
        author = AUTHOR;
        authors[] = { AUTHOR };
        authorUrl = "";
        skipWhenMissingDependencies = 1;
        VERSION_CONFIG;
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