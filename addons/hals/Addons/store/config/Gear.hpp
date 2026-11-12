class handgunsAGD
{
	displayName = "Handheld Blasters";
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

	ITEM(agd_weapons_RK3, 450, PISTOL_STOCK);
	ITEM(3AS_A180_F, 200, PISTOL_STOCK);
	ITEM(DymekBlasterPistol_F, 150, PISTOL_STOCK);
	ITEM(3AS_S5_f, 150, PISTOL_STOCK);
	ITEM(agd_weapons_SE14R, 600, PISTOL_STOCK);

};

class riflesAGD
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

	ITEM(agd_weapon_bk43, 350, RIFLE_STOCK);
	ITEM(agd_weapon_SpaceAR1, 550, RIFLE_STOCK);
	ITEM(agd_weapon_SpaceAK1, 850, RIFLE_STOCK);
	ITEM(agd_weapons_DH17, 1000, RIFLE_STOCK);

	ITEM(agd_weapons_westar35c, 1000, RIFLE_STOCK);
	ITEM(agd_weapons_E5, 950, RIFLE_STOCK);
	ITEM(agd_weapons_westar35s, 1150, RIFLE_STOCK);

	ITEM(agd_weapons_DC15A_F, 1250, RIFLE_STOCK);
	ITEM(agd_weapons_DC15C_F, 1200, RIFLE_STOCK);
	ITEM(agd_weapons_DC15C_GL, 1300, RIFLE_STOCK);
	ITEM(agd_weapons_DC15A_GL, 1400, RIFLE_STOCK);

	ITEM(agd_weapons_E11, 1250, RIFLE_STOCK);
	ITEM(agd_weapons_E11D, 1300, RIFLE_STOCK);
	ITEM(agd_weapons_E11_GL, 1400, RIFLE_STOCK);

	ITEM(agd_weapons_A280_F, 1350, RIFLE_STOCK);
	ITEM(agd_weapons_A280_GL, 1450, RIFLE_STOCK);

	ITEM(agd_weapons_WestarM5_F, 1550, RIFLE_STOCK);
	ITEM(agd_weapons_WestarM5_GL, 1650, RIFLE_STOCK);
	ITEM(agd_weapons_Arkanian_F, 1550, RIFLE_STOCK);

	ITEM(agd_weapons_DC17M_F, 2000, RIFLE_STOCK);

	ITEM(agd_weapons_DP23_F, 350, RIFLE_STOCK);
	ITEM(agd_weapons_DP23_GL, 450, RIFLE_STOCK);
	ITEM(agd_weapons_SBB3, 350, RIFLE_STOCK);
	ITEM(agd_weapon_BARM_Shotgun, 150, RIFLE_STOCK);
	ITEM(agd_weapons_ScatterGun_F, 350, RIFLE_STOCK)
};

class sniperRiflesAGD
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

	ITEM(agd_weapons_DymekSniperRifle_F, 1600, RIFLE_STOCK);
	ITEM(agd_weapons_mercenarySniper, 1900, RIFLE_STOCK);

	ITEM(agd_weapons_E5S, 2200, RIFLE_STOCK);

	ITEM(agd_weapons_Valken38X_F, 2550, RIFLE_STOCK);

	ITEM(agd_weapons_DLT19X, 4000, 5);
	ITEM(agd_weapons_DC15X_F, 4000, 5);

	ITEM(agd_weapons_firepuncher, 4500, 5);
	ITEM(srifle_GM6_camo_F, 4500, 5);

};

class mgAGD
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_mgs"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

	ITEM(agd_weapons_T21, 1600, RIFLE_STOCK);
	ITEM(agd_weapons_DC15L_F, 1700, RIFLE_STOCK);

	ITEM(agd_weapons_ls150, 1150, RIFLE_STOCK);
	ITEM(agd_weapons_E5C_stock, 1250, RIFLE_STOCK);
	ITEM(agd_weapon_SpaceLMG2, 1450, RIFLE_STOCK);
	ITEM(agd_weapon_SpaceLMG1, 1650, RIFLE_STOCK);

	ITEM(agd_weapons_DLT19, 1850, RIFLE_STOCK);

	ITEM(agd_weapons_Z6_F, 2900, RIFLE_STOCK);

};

class smgAGD
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

	ITEM(agd_weapons_acpr, 350, RIFLE_STOCK);
	ITEM(agd_weapon_minnoch, 350, RIFLE_STOCK);

	ITEM(agd_weapons_Cinnagaran_Carbine_F, 450, RIFLE_STOCK);
	ITEM(agd_weapons_DC15S_F, 750, RIFLE_STOCK);
};

class launchersAGD
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launchers"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

	ITEM(launch_NLAW_F, 2000, LAUNCHER_STOCK);

	ITEM(launch_RPG32_F, 1250, LAUNCHER_STOCK);

	ITEM(launch_B_Titan_F, 3500, 3);
	ITEM(launch_I_Titan_F, 3500, 3);
	ITEM(launch_O_Titan_F, 3500, 3);

	ITEM(launch_B_Titan_short_F, 3250, 3);
	ITEM(launch_I_Titan_short_F, 3250, 3);
	ITEM(launch_O_Titan_short_F, 3250, 3);

};

class launcherMagazinesAGD
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launcherAmmo"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

	class NLAW_F {
		price = 300;
		stock = 50;
	};

	class RPG32_F {
		price = 300;
		stock = 50;
	};
	class RPG32_HE_F {
		price = 200;
		stock = 50;
	};

	class Titan_AA {
		price = 400;
		stock = 10;
	};

	class Titan_AT {
		price = 300;
		stock = 10;
	};
	class Titan_AP {
		price = 200;
		stock = 10;
	};

};

class navigationVanilla
{
	displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_Vanilla", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

	ITEM(ItemGPS, 300, NN_STOCK);
	ITEM(ItemRadio, 45, NN_STOCK);
	ITEM(Rangefinder, 400, NN_STOCK);
	ITEM(Laserdesignator, 1200, NN_STOCK);

	ITEM(NVGoggles, 500, NN_STOCK);
	ITEM(NVGoggles_INDEP, 1000, NN_STOCK);
	ITEM(NVGoggles_OPFOR, 1000, NN_STOCK);

};

class pointersAGD
{
	displayName = __EVAL(formatText ["%1 %2 %3 %4", localize "STR_A3AU_Vanilla", localize "STR_A3AU_pointers", localize "STR_A3AU_and", localize "STR_A3AU_flashlights"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

	ITEM(3AS_Imp_Light_DLT19, 75, PN_STOCK);
	ITEM(3AS_Imp_Laser_DLT19, 75, PN_STOCK);
	ITEM(acc_pointer_IR, 100, PN_STOCK);
	ITEM(acc_flashlight_pistol, 75, PN_STOCK);

};

class muzzlesAGD
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_muzzles"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

	ITEM(ls_muzzle_westar35s_suppressor, 150, MZ_STOCK);

	ITEM(ls_muzzle_impulsor, 150, MZ_STOCK);

	ITEM(3AS_Muzzle_Arkanian_Pistol_1_F, 200, MZ_STOCK);

	ITEM(3AS_Imp_Muzzle_DLT19x, 200, MZ_STOCK);

	ITEM(3AS_muzzle_DC17S_F, 200, MZ_STOCK);

	ITEM(3AS_muzzle_DC15LE_F, 200, MZ_STOCK);
};

class opticsAGD
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sights"]);
	picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

	class optic_tws {
		price = 2000;
		stock = 5;
	};

	class optic_tws_mg {
		price = 2000;
		stock = 5;
	};

	class ls_cows_dc17m_sniper {
		price = 3000;
		stock = 5;
	};

	class ls_cows_mercenarySniper_scope {
		price = 3000;
		stock = 5;
	};

	class 3AS_Imp_Optic_DLT19x {
		price = 3000;
		stock = 5;
	};

	class 3AS_optic_DC15X_F {
		price = 2000;
		stock = 5;
	};

	class ls_cows_westar35s_scope {
		price = 300;
		stock = 100;
	};

	class 3AS_Optic_Arkanian_Pistol_1_F {
		price = 300;
		stock = 100;
	};

	class 3AS_S5_Scope {
		price = 400;
		stock = 100;
	};
	class 3AS_Imp_Optic_SE14R {
		price = 400;
		stock = 100;
	};

	class optic_Nightstalker {
		price = 4000;
		stock = 5;
	};

	class optic_AMS {
		price = 1000;
		stock = 20;
	};

	class 3AS_optic_VK38X_F {
		price = 1000;
		stock = 20;
	};

	class 3AS_optic_DC15LE_F {
		price = 1000;
		stock = 20;
	};

	class optic_MRCO {
		price = 500;
		stock = 100;
	};

	class 3AS_Imp_Optic_2 {
		price = 400;
		stock = 100;
	};

	class 3AS_Optic_Arkanian_2_F {
		price = 700;
		stock = 100;
	};

	class 3AS_Optic_Arkanian_1_F {
		price = 900;
		stock = 100;
	};

	class 3AS_Optic_Scope_WestarM5 {
		price = 1400;
		stock = 100;
	};

	class 3AS_Imp_Optic_4 {
		price = 1000;
		stock = 20;
	};

	class optic_Aco {
		price = 200; 
		stock = 100;
	};
	class optic_ACO_grn {
		price = 200; 
		stock = 100;
	};
	class 3AS_Imp_Optic_1 {
		price = 200;
		stock = 100;
	};

	class optic_Arco_AK_blk_F {
		price = 650;
		stock = 100;
	};

	class optic_Yorris {
		price = 100;
		stock = 100;
	};

	class 3AS_optic_DC15C_F {
		price = 650;
		stock = 100;
	};

	class 3AS_optic_DC15L_F {
		price = 650;
		stock = 100;
	};



	class optic_NVS {
		price = 1500;
		stock = 100;
	};

};

class magazinesAGD
{
	displayName = __EVAL(formatText["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_magazines"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

	class Laserbatteries {
		price = 200;
		stock = MAGAZINE_STOCK;
	};

	///////////////////////////////////////////////////////
	// Underbarrel
	///////////////////////////////////////////////////////
	class 1Rnd_HE_Grenade_shell {
		price = 75;
		stock = MAGAZINE_STOCK;
	};
	class UGL_FlareWhite_F {
		price = 25;
		stock = MAGAZINE_STOCK;
	};
	class UGL_FlareGreen_F {
		price = 25;
		stock = MAGAZINE_STOCK;
	};
	class UGL_FlareRed_F {
		price = 25;
		stock = MAGAZINE_STOCK;
	};
	class UGL_FlareYellow_F {
		price = 25;
		stock = MAGAZINE_STOCK;
	};
	class UGL_FlareCIR_F {
		price = 25;
		stock = MAGAZINE_STOCK;
	};
	class 1Rnd_Smoke_Grenade_shell {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 1Rnd_SmokeRed_Grenade_shell {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 1Rnd_SmokeGreen_Grenade_shell {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 1Rnd_SmokeYellow_Grenade_shell {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 1Rnd_SmokePurple_Grenade_shell {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 1Rnd_SmokeBlue_Grenade_shell {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 1Rnd_SmokeOrange_Grenade_shell {
		price = 50;
		stock = MAGAZINE_STOCK;
	};

	class 3Rnd_HE_Grenade_shell {
		price = 350;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_UGL_FlareWhite_F {
		price = 100;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_UGL_FlareGreen_F {
		price = 100;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_UGL_FlareRed_F {
		price = 100;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_UGL_FlareYellow_F {
		price = 100;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_UGL_FlareCIR_F {
		price = 100;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_Smoke_Grenade_shell {
		price = 200;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_SmokeRed_Grenade_shell {
		price = 200;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_SmokeGreen_Grenade_shell {
		price = 200;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_SmokeYellow_Grenade_shell {
		price = 200;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_SmokePurple_Grenade_shell {
		price = 200;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_SmokeBlue_Grenade_shell {
		price = 200;
		stock = MAGAZINE_STOCK;
	};
	class 3Rnd_SmokeOrange_Grenade_shell {
		price = 200;
		stock = MAGAZINE_STOCK;
	};


	///////////////////////////////////////////////////////
	// Pistols, SMGs
	///////////////////////////////////////////////////////

	class 3AS_18Rnd_EM20_Mag {
		price = 15;
		stock = MAGAZINE_STOCK;
	};

	class 3AS_8Rnd_EY40_Mag {
		price = 25;
		stock = MAGAZINE_STOCK;
	};

	class 3AS_15Rnd_EC30_mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_16Rnd_EC20_Mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_16Rnd_EY20_Mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_18Rnd_EM20_EC17_Mag {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_20Rnd_EG20_mag {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_15Rnd_EC20_SE14R_Mag {
		price = 50;
		stock = MAGAZINE_STOCK;
	};


	///////////////////////////////////////////////////////
	// RIFLES
	///////////////////////////////////////////////////////

	class 3AS_40Rnd_EM50_Mag {
		price = 100;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_100Rnd_EC40_mag {
		price = 110;
		stock = MAGAZINE_STOCK;
	};

	class agd_weapons_spaceAK_mag {
		price = 65;
		stock = MAGAZINE_STOCK;
	};
	class WM_DH17_Mag {
		price = 75;
		stock = MAGAZINE_STOCK;
	};
	class agd_weapons_spaceAR1_mag {
		price = 75;
		stock = MAGAZINE_STOCK;
	};
	class ls_magazine_westar35c {
		price = 75;
		stock = MAGAZINE_STOCK;
	};
	class ls_magazine_westar35s_scatter {
		price = 65;
		stock = MAGAZINE_STOCK;
	};
	class ls_magazine_westar35s {
		price = 65;
		stock = MAGAZINE_STOCK;
	};
	class JLTS_E5_mag {
		price = 65;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_40Rnd_EM40_E11_Mag {
		price = 75;
		stock = MAGAZINE_STOCK;
	};
	class WM_E11D_Mag {
		price = 75;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_45Rnd_EY50_Mag {
		price = 75;
		stock = MAGAZINE_STOCK;
	};

	class 3AS_45Rnd_EC50_Mag {
		price = 100;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_50Rnd_EM50_Mag {
		price = 100;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_60Rnd_EC50_Mag {
		price = 110;
		stock = MAGAZINE_STOCK;
	};

	class JLTS_SBB3_mag {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_10Rnd_EC30_Pellets {
		price = 60;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_10Rnd_ESlug_Mag {
		price = 60;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_8Rnd_ESlugY_Mag {
		price = 60;
		stock = MAGAZINE_STOCK;
	};

	class 3AS_8Rnd_EY30_Pellets {
		price = 65;
		stock = MAGAZINE_STOCK;
	};

	class 3AS_1Rnd_ESlug_Doomsday_Mag {
		price = 300;
		stock = MAGAZINE_STOCK;
	};

	///////////////////////////////////////////////////////
	// DMRs, Sniper Rifles
	///////////////////////////////////////////////////////
	class 3AS_10Rnd_EY80_Mag {
		price = 150;
		stock = MAGAZINE_STOCK;
	};
	class ls_magazine_firepuncher {
		price = 300;
		stock = MAGAZINE_STOCK;
	};

	class 3AS_10Rnd_EC100_Mag {
		price = 175;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_10Rnd_EC80_Mag {
		price = 150;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_5Rnd_EC80_mag {
		price = 150;
		stock = MAGAZINE_STOCK;
	};

	class JLTS_E5S_mag {
		price = 175;
		stock = MAGAZINE_STOCK;
	};

	class 3AS_10Rnd_EM100_DLT19X_Mag {
		price = 175;
		stock = MAGAZINE_STOCK;
	};
	
	class ls_magazine_mercenarySniper {
		price = 175;
		stock = MAGAZINE_STOCK;
	};

	class agd_weapons_SpaceDMR1_mag {
		price = 175;
		stock = MAGAZINE_STOCK;
	};

	///////////////////////////////////////////////////////
	// MGs
	///////////////////////////////////////////////////////

	class ls_magazine_ls150 {
		price = 200;
		stock = MAGAZINE_STOCK;
	};
	class JLTS_E5C_mag {
		price = 225;
		stock = MAGAZINE_STOCK;
	};
	class agd_weapons_spaceLMG1_mag {
		price = 225;
		stock = MAGAZINE_STOCK;
	};
	class WM_T21_mag {
		price = 225;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_200Rnd_EC40_Mag {
		price = 350;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_200Rnd_EM40_DLT19_Mag {
		price = 375;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_300Rnd_EC60_Mag {
		price = 375;
		stock = MAGAZINE_STOCK;
	};

	///////////////////////////////////////////////////////
	// SMGs
	///////////////////////////////////////////////////////

	class ls_magazine_acpr {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_45Rnd_EY50_Mag {
		price = 65;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_60Rnd_EC30_mag {
		price = 65;
		stock = MAGAZINE_STOCK;
	};
	class 3AS_50Rnd_EG40_Mag {
		price = 65;
		stock = MAGAZINE_STOCK;
	};
};

class miscAGD
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_misc"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

	ITEM(ls_orsfUniform_trooper, 500, MISC_STOCK);

	ITEM(ls_jabiimHelmet_nationalist, 750, MISC_STOCK);

	ITEM(ls_orsfHelmet_trooper, 500, MISC_STOCK);


	ITEM(3AS_U_Imperial_TIE_Pilot_F, 1000, MISC_STOCK);

	ITEM(ls_helmet_invisible_armorLevel0, 50, MISC_STOCK);
	ITEM(ls_helmet_invisible_armorLevel1, 150, MISC_STOCK);
	ITEM(ls_helmet_invisible_armorLevel2, 350, MISC_STOCK);
	ITEM(ls_helmet_invisible_armorLevel3, 550, MISC_STOCK);
	ITEM(ls_helmet_invisible_armorLevel4, 750, MISC_STOCK);
	ITEM(ls_helmet_invisible_armorLevel5, 950, MISC_STOCK);
	
	ITEM(ls_vest_invisible_armorLevel0, 50, MISC_STOCK);
	ITEM(ls_vest_invisible_armorLevel1, 950, MISC_STOCK);
	ITEM(ls_vest_invisible_armorLevel2, 1550, MISC_STOCK);
	ITEM(ls_vest_invisible_armorLevel3, 2550, MISC_STOCK);
	ITEM(ls_vest_invisible_armorLevel4, 3550, MISC_STOCK);
	ITEM(ls_vest_invisible_armorLevel5, 4550, MISC_STOCK);
	
	ITEM(JLTS_CloneArmor_501, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_501_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_501_Airborne, 2300, MISC_STOCK);

	ITEM(JLTS_CloneArmor, 1900, MISC_STOCK);
	ITEM(JLTS_CloneArmor_501_Jesse, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_501_Fives, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorMC_501_Vaughn, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_501_Vill, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_501_Appo, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_501_Rex, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_501, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_501, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_CG, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_CG_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_CG, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_CG, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_CG_Fox, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorMC_CG_Thorn, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_CG_Thire, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_KS, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_KS_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_KS, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_KS, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorMC_KS_commander, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_212, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_212_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_212_airborne, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_212, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_212, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorMC_212_Cody, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_442, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_442_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_442, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_442, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_Shadow, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_Shadow_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_Shadow, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_Shadow, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_41, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_41_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_41, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_41, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_41_Gree, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_327, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_327, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_327_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_327_Bly, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_KC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_KC_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_91, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_91_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_91, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_91, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorRecon_91, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_HC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_HC_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_HC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_HC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorMC_HC_Lock, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_DC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_DC_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_DC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_DC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_DC_Doom, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_SC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_SC_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_SC_commander, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_104, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_104_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorMC_104_Wolffe, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_104, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_104, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_187, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_187_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_187_airborne, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_187, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_187, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_5, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_5_medic, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorGrenadier_5, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmorSupport_5, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_ARC_Blitz, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_ARC_Hammer, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_ARC_Predator, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_ARC_Fordo, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_Sergeant, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_Lieutenant, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_Captain, 2300, MISC_STOCK);
	ITEM(JLTS_CloneArmor_Commander, 2300, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_501, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_332, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_332_Vaughn, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetAB_501, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_501_Jesse, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_501_Fives, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_501_Rex, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_501_Jet, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_CG, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_CG_Fox, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_CG_Thorn, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_KS, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_212, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetAB_212, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2MC_212_Cody, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_442, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_327, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_327_Bly, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_KC, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_Shadow, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_41_Gree, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_91, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetBARC_91, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_HC, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_HC_Lock, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_DC, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_DC_Doom, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetSC_SC, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetSCC_SC, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetSCC_SC_commander, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_104, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetBARC_104_Wolffe, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_187, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetAB_187, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetBARC_187, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_5, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_ARC_Blitz, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_ARC_Hammer, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_ARC_Predator, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetBARC_ARC_Fordo, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_Sergeant, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_Lieutenant, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_Captain, 950, MISC_STOCK);
	ITEM(JLTS_CloneHelmetP2_Commander, 950, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_501, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_501_Vill, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_501_Appo, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_CG, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_CG_Thire, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_KS, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_212, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_442, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_327, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_327_brown, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_327_Bly, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_KC, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_KC_Deviss, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_91, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer_DC, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer2_501, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer2_CG, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer2_KS, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer2_212, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer2_442, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer2_327, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer2_KC, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer2_91, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestOfficer2_DC, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestCommander_501, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestCommander_CG, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestCommander_KS, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestCommander_212, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestCommander_442, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestCommander_91, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestCommander_DC, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestLieutenant_501, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestLieutenant_CG, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestLieutenant_KS, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestLieutenant_212, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestLieutenant_442, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestLieutenant_91, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestLieutenant_DC, 1400, MISC_STOCK);
	ITEM(JLTS_CloneNVGMC_212_Cody, 2300, MISC_STOCK);
	ITEM(JLTS_CloneVestKama_91, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestKama_DC, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestKama_DC_Doom, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestReconOfficer_91, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestReconOfficer_DC, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestAirborne_212, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestAirborneNCO_212, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestAirborne_501, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestAirborneNCO_501, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestARC_501_Jesse, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestARC_501_Fives, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestCommander_501_Rex, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestARC_ARC_Blitz, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestARC_ARC_Hammer, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestARC_ARC_Predator, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestReconNCO_ARC_Fordo, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestSuspender_41_Gree, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestKama_104_Wolffe, 1400, MISC_STOCK);
	ITEM(JLTS_CloneVestSuspender_white, 1400, MISC_STOCK);
	ITEM(JLTS_CloneNVG_DC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVG_spec_DC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVG_327, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVG_327_Bly, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVG_spec_327, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVG_KC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVG_spec_KC, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVGMC_332_Vaughn, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVGCC_CG, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVGCC_DC_Doom, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVGCC_HC_Lock, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVGCC_KS, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVGRange_ARC_Blitz, 2300, MISC_STOCK);
	ITEM(JLTS_CloneNVGRange_ARC_Hammer, 2300, MISC_STOCK);

	ITEM(U_I_FullGhillie_ard, 1000, MISC_STOCK);
	ITEM(U_B_FullGhillie_ard, 1000, MISC_STOCK);
	ITEM(U_O_FullGhillie_ard, 3000, MISC_STOCK);

	ITEM(U_I_FullGhillie_lsh, 1000, MISC_STOCK);
	ITEM(U_B_FullGhillie_lsh, 1000, MISC_STOCK);
	ITEM(U_O_FullGhillie_lsh, 3000, MISC_STOCK);

	ITEM(U_I_FullGhillie_sard, 1000, MISC_STOCK);
	ITEM(U_B_FullGhillie_sard, 1000, MISC_STOCK);
	ITEM(U_O_FullGhillie_sard, 3000, MISC_STOCK);

	ITEM(U_I_GhillieSuit, 750, MISC_STOCK);
	ITEM(U_O_GhillieSuit, 1500, MISC_STOCK);

	ITEM(ls_mandalorianBackpack_heavy, 400, MISC_STOCK);
	ITEM(ls_mandalorianBackpack_demo, 400, MISC_STOCK);
	ITEM(ls_gar_rocket_backpack, 400, MISC_STOCK);

	ITEM(ls_mandalorianHelmet_armorer, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_dinDjarin, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_elite, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_executioner, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_nightowl, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_stalker, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_traditional, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_deathwatchGrunt, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_deathwatchSergeant, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_deathwatchCaptain, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_deathwatchNightowl, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_eldarGrunt, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_eldarSergeant, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_ordoGrunt, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_ordoSergeant, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_saxonGrunt, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_saxonSergeant, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_superCommandoGrunt, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_superCommandoSergeant, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_superCommandoCaptain, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_vizslaGrunt, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_vizslaSergeant, 1000, MISC_STOCK);
	ITEM(ls_mandalorianHelmet_vizslaCaptain, 1000, MISC_STOCK);
	ITEM(ls_mandalorianUniform, 1900, MISC_STOCK);
	ITEM(ls_mandalorianUniform_protectorMale, 1900, MISC_STOCK);
	ITEM(ls_mandalorianUniform_traditionalWoman, 1900, MISC_STOCK);
	ITEM(ls_mandalorianUniform_superCommandoGrunt, 1900, MISC_STOCK);
	ITEM(ls_mandalorianUniform_superCommandoSergeant, 1900, MISC_STOCK);
	ITEM(ls_mandalorianVest_standard, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_protectorMale, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_traditionalPouchMale, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_traditionalPouchFemale, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_deathwatchGrunt, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_deathwatchSergeant, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_deathwatchCaptain, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_eldarGrunt, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_eldarSergeant, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_ordoGrunt, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_ordoSergeant, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_saxonGrunt, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_saxonSergeant, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_superCommandoGrunt, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_superCommandoSergeant, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_vizslaGrunt, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_vizslaSergeant, 1200, MISC_STOCK);
	ITEM(ls_mandalorianVest_vizslaCaptain, 1200, MISC_STOCK);
	ITEM(ls_mandalorian_rangefinder, 1000, MISC_STOCK);

	ITEM(WM_Rebel_PilotHelmet, 950, MISC_STOCK);
	ITEM(WM_ParaMilitary_Helmet, 950, MISC_STOCK);
	ITEM(WM_ParaMilitary_Helmet_Winter, 950, MISC_STOCK);
	ITEM(WM_ParaMilitary_Helmet_Urban, 950, MISC_STOCK);
	ITEM(WM_ParaMilitary_Helmet_Wood, 950, MISC_STOCK);
	ITEM(WM_ParaMilitary, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Short, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Shirt, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Shirt_Rolled, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_TeeJacket, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Tee, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_WD, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_WD_Short, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_WD_Shirt, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_WD_Shirt_Rolled, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_WD_TeeJacket, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_WD_Tee, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Wtr, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Wtr_Short, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Wtr_Shirt, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Wtr_Shirt_Rolled, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Wtr_TeeJacket, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Wtr_Tee, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Urban, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Urban_Short, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Urban_Shirt, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Urban_Shirt_Rolled, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Urban_TeeJacket, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Urban_Tee, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Dst, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Dst_Short, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Dst_Shirt, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Dst_Shirt_Rolled, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Dst_TeeJacket, 750, MISC_STOCK);
	ITEM(WM_ParaMilitary_Dst_Tee, 750, MISC_STOCK);
	ITEM(3AS_B_Imperial_Stormtrooper_Backpack_Sand_F, 400, MISC_STOCK);
	ITEM(3AS_B_Imperial_Stormtrooper_Backpack_Respirator_F, 400, MISC_STOCK);
	ITEM(3AS_B_Imperial_Stormtrooper_Backpack_Coffee_F, 400, MISC_STOCK);

	ITEM(V_TacVestIR_blk, 500, MISC_STOCK);

	ITEM(V_Press_F, 800, MISC_STOCK);

	ITEM(V_PlateCarrierIA1_dgtl, 1000, MISC_STOCK);
	ITEM(V_PlateCarrierIA2_dgtl, 1000, MISC_STOCK);
	ITEM(V_PlateCarrier2_rgr_noflag_F, 1400, MISC_STOCK);
	ITEM(V_PlateCarrier1_blk, 900, MISC_STOCK);
	ITEM(V_PlateCarrier2_blk, 1250, MISC_STOCK);
	ITEM(ls_memeVest_blackbeard, 1300, MISC_STOCK);

	ITEM(G_Diving, 150, MISC_STOCK);
	ITEM(G_I_Diving, 150, MISC_STOCK);
	ITEM(V_RebreatherIA, 750, MISC_STOCK);
	ITEM(U_B_survival_uniform, 750, MISC_STOCK);
	ITEM(U_I_Wetsuit, 750, MISC_STOCK);

	ITEM(MineDetector, 500, MISC_STOCK);

	ITEM(I_IR_Grenade, 250, MISC_STOCK);
	ITEM(O_IR_Grenade, 250, MISC_STOCK);
	ITEM(B_IR_Grenade, 250, MISC_STOCK);

	ITEM(Chemlight_blue, 30, MISC_STOCK);
	ITEM(Chemlight_green, 30, MISC_STOCK);
	ITEM(Chemlight_red, 30, MISC_STOCK);
	ITEM(Chemlight_yellow, 30, MISC_STOCK);

	ITEM(MiniGrenade, 100, MISC_STOCK);
	ITEM(HandGrenade, 200, MISC_STOCK);

	ITEM(SmokeShellBlue, 50, MISC_STOCK);
	ITEM(SmokeShellGreen, 50, MISC_STOCK);
	ITEM(SmokeShellOrange, 50, MISC_STOCK);
	ITEM(SmokeShellPurple, 50, MISC_STOCK);
	ITEM(SmokeShellRed, 50, MISC_STOCK);
	ITEM(SmokeShell, 50, MISC_STOCK);
	ITEM(SmokeShellYellow, 50, MISC_STOCK);

	ITEM(IEDUrbanSmall_Remote_Mag, 500, MISC_STOCK);
	ITEM(IEDLandSmall_Remote_Mag, 500, MISC_STOCK);
	ITEM(IEDLandBig_Remote_Mag, 750, MISC_STOCK);
	ITEM(IEDUrbanBig_Remote_Mag, 750, MISC_STOCK);

	ITEM(ClaymoreDirectionalMine_Remote_Mag, 300, MISC_STOCK);
	ITEM(DemoCharge_Remote_Mag, 250, MISC_STOCK);
	ITEM(SatchelCharge_Remote_Mag, 500, MISC_STOCK);
	ITEM(SLAMDirectionalMine_Wire_Mag, 400, MISC_STOCK);
	ITEM(ATMine_Range_Mag, 200, MISC_STOCK);
	ITEM(APERSMine_Range_Mag, 200, MISC_STOCK);
	ITEM(APERSBoundingMine_Range_Mag, 150, MISC_STOCK);
	ITEM(APERSTripMine_Wire_Mag, 100, MISC_STOCK);
	
	ITEM(I_UavTerminal, 800, MISC_STOCK);
	ITEM(O_UavTerminal, 800, MISC_STOCK);
	ITEM(B_UavTerminal, 800, MISC_STOCK);

	ITEM(U_C_Driver_1_black, 1000, MISC_STOCK);
	ITEM(U_C_Driver_1_blue, 1000, MISC_STOCK);
	ITEM(U_C_Driver_1_green, 1000, MISC_STOCK);
	ITEM(U_C_Driver_1_orange, 1000, MISC_STOCK);
	ITEM(U_C_Driver_1_red, 1000, MISC_STOCK);
	ITEM(U_C_Driver_1_white, 1000, MISC_STOCK);
	ITEM(U_C_Driver_1_yellow, 1000, MISC_STOCK);
	ITEM(U_C_Driver_1, 1000, MISC_STOCK);
	ITEM(U_C_Driver_2, 1000, MISC_STOCK);
	ITEM(U_C_Driver_3, 1000, MISC_STOCK);
	ITEM(U_C_Driver_4, 1000, MISC_STOCK);

	ITEM(H_RacingHelmet_1_black_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_1_blue_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_1_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_1_green_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_1_orange_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_1_red_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_1_white_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_1_yellow_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_2_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_3_F, 300, MISC_STOCK);
	ITEM(H_RacingHelmet_4_F, 300, MISC_STOCK);

	ITEM(U_I_Protagonist_VR, 50000, MISC_STOCK);
	ITEM(U_C_Protagonist_VR, 50000, MISC_STOCK);
	ITEM(U_O_Protagonist_VR, 50000, MISC_STOCK);
	ITEM(U_B_Protagonist_VR, 50000, MISC_STOCK);

};