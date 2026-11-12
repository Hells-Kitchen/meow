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

class CowsSlot_Rail;
class AGD_Rail: CowsSlot_Rail
{
	class compatibleItems
	{
        3AS_Imp_Optic_2 = 1;
        3AS_Imp_Optic_E11 = 1;
        3AS_Imp_Optic_1 = 1;
        optic_ACO_grn = 1;
        optic_Aco = 1;
        optic_MRCO = 1;
        optic_ACO_grn_smg = 1;
        optic_Aco_smg = 1;
        3AS_Optic_Cinnagaran_1_F = 1;
        3AS_optic_DC15C_F = 1;
        ls_cows_e11_optic = 1;
        ls_cows_westar35s_scope = 1;
        WM_E11_Optic = 1;
        3AS_optic_DC15L_F = 1;
        optic_Yorris = 1;
        3AS_Optic_Arkanian_Pistol_1_F = 1;
	};
};
class AGD_Rail_Mid: AGD_Rail
{
    class compatibleItems: compatibleItems
    {
        3AS_S5_Scope = 1;
        3AS_Imp_Optic_SE14R = 1;
        3AS_Optic_Arkanian_1_F = 1;
        3AS_Optic_Scope_WestarM5 = 1;
        ACE_optic_MRCO_2D = 1;
        optic_ERCO_blk_F = 1;
        optic_MRCO = 1;
        optic_Hamr = 1;
    };
};
class AGD_Rail_Long: AGD_Rail_Mid
{
    class compatibleItems: compatibleItems
    {
        3AS_Optic_Arkanian_2_F = 1;
        3AS_optic_DC15LE_F = 1;
        3AS_optic_DC15X_F = 1;
        3AS_Imp_Optic_3 = 1;
        3AS_Imp_Optic_4 = 1;
        3AS_Imp_Optic_DLT19x = 1;
        3AS_optic_VK38X_F = 1;
        3AS_Optic_Scope_WestarM5 = 1;
        ls_cows_westarM5_scope = 1;
        ls_cows_mercenarySniper_scope = 1;
        optic_Arco_AK_blk_F = 1;
        optic_LRPS = 1;
        optic_SOS = 1;
        optic_DMS_weathered_Kir_F = 1;
        optic_DMS_weathered_F = 1;
        optic_KHS_old = 1;
        optic_AMS = 1;
        optic_Nightstalker = 1;
        optic_NVS = 1;
        optic_tws = 1;
        optic_tws_mg = 1;
        ls_cows_dc17m_sniper = 1;
        ls_cows_e11_optic_thermal = 1;
    };
};
class AGD_PointerSlot: PointerSlot
{
    class compatibleItems
    {
        acc_flashlight = 1;
        acc_pointer_IR = 1;
        3AS_Flashlight_Arkanian_1_F = 1;
        3AS_Flashlight_Cinnagaran_1_F = 1;
        3AS_Imp_Light_DLT19 = 1;
        3AS_Imp_Laser_DLT19 = 1;
        3AS_Imp_Light_E11 = 1;
        3AS_Imp_Laser_E11 = 1;
    };
};

class AGD_MuzzleSlot: MuzzleSlot
{
    class compatibleItems
    {
        ls_muzzle_westar35s_suppressor = 1;
        3AS_muzzle_DC15LE_F  = 1;
        3AS_Imp_Muzzle_DLT19x  = 1;
        ls_muzzle_impulsor  = 1;
        3AS_Muzzle_Arkanian_Pistol_1_F  = 1;
        3AS_muzzle_DC17S_F = 1;
    };
};

class AGD_UnderBarrelSlot: UnderBarrelSlot
{
    class compatibleItems
    {
        bipod_03_F_blk = 1;
        bipod_01_F_blk = 1;
        bipod_02_F_blk = 1;
        3AS_bipod_DC15L_F = 1;
        3AS_bipod_DC15X_F = 1;
        3AS_Imp_Bipod_DLT19 = 1;
        3AS_bipod_VK38X_F = 1;
    };
};

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

