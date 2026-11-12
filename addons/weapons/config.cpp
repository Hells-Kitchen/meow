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
        requiredAddons[] = {};
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

#include "SlotMacros.hpp"
#include "CfgWeapons.hpp"

class CfgMagazines
{
    #include "vanilla/AA.hpp"
    #include "vanilla/AT.hpp"
    #include "vanilla/mags.hpp"
};

class CfgAmmo
{
    #include "ammo/aa_rockets.hpp"
    #include "ammo/at_rockets.hpp"
};