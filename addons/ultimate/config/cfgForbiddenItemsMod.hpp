class AGD_unlimited_base : forbidden_unlimited_base 
{
    addons[] = {"knd_weapons_core","knd_common","knd_gadgets_core","knd_crates"};
};

class AGD_limited_base : forbidden_limited_base 
{
    addons[] = {"knd_weapons_core","knd_common","knd_gadgets_core","knd_crates"};
};

 // Will not appear in crates, but can be unlimited in the arsenal

 // Will not appear in crates, and can't be unlimited in the arsenal

// Can be weapon, magazine, vest, etc. Basically anything that can either go in the arsenal or a crate

    class knd_jerrycan : AGD_limited_base {appearInCrates = 1;};
    class knd_mag_amban : knd_jerrycan {};
    class knd_bowcaster_mag : knd_jerrycan {};
    class knd_cycler_mag : knd_jerrycan {};
    class knd_dc15a_mag : knd_jerrycan {};
    class knd_dc15c_mag : knd_jerrycan {};
    class knd_dc15s_mag : knd_jerrycan {};
    class knd_dc15le_mag : knd_jerrycan {};
    class knd_dc15x_mag : knd_jerrycan {};
    class knd_dc17m_mag : knd_jerrycan {};
    class knd_dc19s_mag : knd_jerrycan {};
    class knd_dlt19_mag : knd_jerrycan {};
    class knd_dlt19d_mag : knd_jerrycan {};
    class knd_dlt19X_mag : knd_jerrycan {};
    class knd_dlt20a_magGreen : knd_jerrycan {};
    class knd_mag_DP23_buck : knd_jerrycan {};
    class knd_e11_mag : knd_jerrycan {};
    class knd_e11d_mag : knd_jerrycan {};
    class knd_e22_mag : knd_jerrycan {};
    class knd_mag_e5 : knd_jerrycan {};
    class knd_ec9_mag : knd_jerrycan {};
    class knd_mag_EE2 : knd_jerrycan {};
    class knd_EE3_mag : knd_jerrycan {};
    class knd_mag_ee3B : knd_jerrycan {};
    class knd_EE4_mag : knd_jerrycan {};
    class knd_el16_mag : knd_jerrycan {};
    class knd_g90_mag : knd_jerrycan {};
    class knd_flamer_mag : knd_jerrycan {};
    class knd_mag_rattler : knd_jerrycan {};
    class knd_mag_JD41 : knd_jerrycan {};
    class knd_mag_Roba : knd_jerrycan {};
    class knd_mag_shotgun_thompson : knd_jerrycan {};
    class knd_rotary_mag_600 : knd_jerrycan {};
    class knd_MK_mag_penetrator : knd_jerrycan {};
    class knd_mag_AMR : knd_jerrycan {};
    class knd_MK_mag : knd_jerrycan {};
    class knd_mag_nt242 : knd_jerrycan {};
    class knd_mag_RCC_DMR : knd_jerrycan {};
    class knd_mag_relby : knd_jerrycan {};
    class knd_VORNSK_mag : knd_jerrycan {};
    class knd_ion_slugs : knd_jerrycan {};
    class knd_sb2p_mag : knd_jerrycan {};
    class knd_mag_sthbr : knd_jerrycan {};
    class knd_mag_stlmg : knd_jerrycan {};
    class knd_mag_PGL_pig : knd_jerrycan {};
    class knd_mag_pgl : knd_jerrycan {};
    class knd_mag_strag : knd_jerrycan {};
    class knd_mag_UGL_SX21 : knd_jerrycan {};
    class knd_mag_sx21_buck : knd_jerrycan {};
    class knd_ppsh_mag_Big : knd_jerrycan {};
    class knd_ppsh_mag : knd_jerrycan {};
    class knd_t21_mag : knd_jerrycan {};
    class knd_t21b_mag : knd_jerrycan {};
    class knd_mag_TL50 : knd_jerrycan {};
    class knd_mag_valken : knd_jerrycan {};
    class knd_mag_westar55_battle : knd_jerrycan {};
    class knd_mag_westar55_carbine : knd_jerrycan {};
    class knd_mag_westar55_lmg : knd_jerrycan {};
    class knd_mag_westar55_sniper : knd_jerrycan {};
    class knd_mag_z6 : knd_jerrycan {};
    class knd_mag_amban_stun : knd_jerrycan {};
    class knd_mag_dc17M_stunBuck : knd_jerrycan {};
    class knd_mag_UGL_tl50 : knd_jerrycan {};
    class knd_mag_UGL_bactadart : knd_jerrycan {};
    class knd_sticky_launchable_mag_A : knd_jerrycan {};
    class knd_sticky_launchable_mag_B : knd_jerrycan {};
    class knd_sticky_launchable_mag_C : knd_jerrycan {};
    class knd_mag_3GL_green : knd_jerrycan {};
    class knd_mag_UGL_stimdart : knd_jerrycan {};
    class knd_crates_ammoTin_large : knd_jerrycan {};
    class knd_crates_ammoTin_small : knd_jerrycan {};
    class knd_crates_ammoTin_verySmall : knd_jerrycan {};
    class knd_medical_supplybox : knd_jerrycan {};
    class jen_jetpacks_example_refuelItemMedium : knd_jerrycan {};
    class knd_jetpacks_fuelCan : knd_jerrycan {};
    class knd_A180_pistol_mag : knd_jerrycan {};
    class knd_mag_A300_Standard : knd_jerrycan {};
    class knd_datapad_pistol_mag : knd_jerrycan {};
    class knd_DC17_pistol_mag : knd_jerrycan {};
    class knd_dc15sa_pistol_mag : knd_jerrycan {};
    class knd_de10_mag : knd_jerrycan {};
    class knd_dh17_mag : knd_jerrycan {};
    class knd_dl40_mag : knd_jerrycan {};
    class knd_dl44_mag : knd_jerrycan {};
    class knd_e851_pistol_mag : knd_jerrycan {};
    class knd_mag_silverhand : knd_jerrycan {};
    class knd_mag_12gapistol_buck : knd_jerrycan {};
    class knd_mag_12gapistol_slug : knd_jerrycan {};
    class knd_nn14_mag : knd_jerrycan {};
    class knd_power5_mag : knd_jerrycan {};
    class knd_se14c_mag : knd_jerrycan {};
    class knd_westar34_pistol_mag : knd_jerrycan {};
    class KND_82mm_Flare_Carryable : knd_jerrycan {};
    class KND_82mm_HE_Carryable : knd_jerrycan {};
    class KND_82mm_Smoke_Carryable : knd_jerrycan {};
    class knd_mag_AT_missile : knd_jerrycan {};
    class knd_mag_AA_missile : knd_jerrycan {};
    class knd_mag_rps6_aa : knd_jerrycan {};
    class knd_mag_rps6_saclos : knd_jerrycan {};
    class knd_rps6_disposable : knd_jerrycan {};
    class knd_mag_z7chaingun : knd_jerrycan {};
    class knd_drone_healer: knd_jerrycan {};
    class knd_IFAK: knd_jerrycan {};