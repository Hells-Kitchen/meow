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
        requiredAddons[] = {"agd_weapons","knd_common"};
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
        knd_Holo_optic = 1;
        knd_a280_rotj_irons_attachment = 1;
        knd_spacek_scope_attachment = 1;
        knd_spacek_scope_attachment_3d = 1;
        knd_Holo_optic_DC15_redTwo = 1;
        knd_Holo_optic_DC15_redOne = 1;
        knd_Holo_optic_DC17M_blue  = 1;
        knd_e11_scope_attachment  = 1;
        knd_strag_holosight  = 1;
        knd_Holo_optic_WestarTwo  = 1;
        knd_Holo_optic_WestarOne  = 1;
        knd_de10_scope = 1;
    };
};
class AGD_Rail_Mid: AGD_Rail
{
    class compatibleItems: compatibleItems
    {
        knd_a180_scope_attachment = 1;
        knd_a280_rotj_scope_attachment = 1;
        knd_a280_scope_attachment = 1;
        knd_A300_scope_attachment = 1;
        knd_scope_DLT19D_F = 1;
        knd_dlt20a_scope_attachment = 1;
        knd_t21B_scope_attachment = 1;
        knd_w55a_scopeShort_attachment = 1;
        knd_dl44_scope_attachment = 1;
    };
};
class AGD_Rail_Long: AGD_Rail_Mid
{
    class compatibleItems: compatibleItems
    {
        knd_a350_scope = 1;
        knd_dc15x_scopeLong = 1;
        knd_dc15x_scopeLong_GAR = 1;
        knd_amr_scope_attachment = 1;
        knd_scope_DLT19X_F = 1;
        knd_w55a_scopeLong_attachment = 1;
    };
};

class AGD_UnderBarrelSlot: UnderBarrelSlot
{
    class compatibleItems
    {
        knd_bayonet_machete = 1;
        knd_bayonet_spearPoint = 1;
        knd_bayonet_tanto = 1;
        knd_bayonet_vibro = 1;
        knd_rotary_bayo = 1;
        knd_bipod_dc15X_F = 1;
        knd_bipod_dlt19_F = 1;
        knd_st_bayonet = 1;
        knd_stlmg_bayonet = 1;
        knd_bipod_westarSniper = 1;
    };
};
class AGD_MuzzleSlot;
class AGD_PointerSlot;

#include "CfgWeapons.hpp"

