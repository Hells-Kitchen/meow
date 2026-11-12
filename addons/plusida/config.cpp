#include "script_component.hpp"
#include "config_lists.hpp"
class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {ITEM_LIST};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"agd_weapons","IDA_Ammo"};
        author = AUTHOR;
        authors[] = { AUTHOR};
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class CowsSlot;
class UnderBarrelSlot;
class MuzzleSlot;
class PointerSlot;
class Mode_SemiAuto;
class Mode_FullAuto;
class Mode_Burst;
class WeaponSlotsInfo;

class CowsSlot_Rail;
class AGD_Rail: CowsSlot_Rail
{
	class compatibleItems
	{
        IDA_E11_scope = 1;
	};
};
class AGD_Rail_Mid;
class AGD_Rail_Long: AGD_Rail_Mid
{
    class compatibleItems
    {
        IDA_TargetingScope = 1;
    };
};
class AGD_PointerSlot;

class AGD_MuzzleSlot;

class AGD_UnderBarrelSlot;

#include "CfgWeapons.hpp"

