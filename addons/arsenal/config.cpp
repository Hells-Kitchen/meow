#include "script_component.hpp"

class CfgPatches
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        author = AUTHOR;
        authors[] = { AUTHOR};
		url = "";
		units[] = {"A3U_ACEAR_ModuleAddToArsenal","A3U_ACEAR_ModuleCargoToArsenal"};
		weapons[] = {};
		requiredVersion = 2.2;
		requiredAddons[] = {"a3u_acear_main","A3A_core","A3A_jeroen_arsenal","A3A_scrt","A3A_gui","ace_arsenal","cba_main"};
		VERSION_CONFIG;
		skipWhenMissingDependencies = 1;
	};
};
class CfgFunctions
{
	class A3U_ACEAR
	{
		class arsenal
		{
			class isForbidden{
				file = QPATHTOF(functions\fn_isForbidden.sqf);
			};
		};
	};
    class A3U_KND 
    {
        class MBO
        {
            class expansion
            {
                file = QPATHTOF(functions\fn_expandBuild.sqf);
                preInit = 0;
                postInit = 1;
            };
        };
    };
};

