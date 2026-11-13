
class O_Soldier_A_F;
class AGD_Remnant_Stormtrooper: O_Soldier_A_F{
	scope = 1;
	model = "WarMantle\WM_Imperial_Core\Stormtrooper_Uniform.p3d";
	displayName = "Remnant Stormtrooper";
	faction = "Antistasi_Empire";
    modelSides[] = {0, 1, 2, 3, 4, 5, 6, 7};
	uniformClass = "AGD_Remnant_Stormtrooper";
	hiddenSelections[] = {"camo","camo1"};
	hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\upper_co.paa),QPATHTOF(data\Remnants\lower_co.paa)};
};
class AGD_Remnant_Stormtrooper_2: AGD_Remnant_Stormtrooper {
	uniformClass = "AGD_Remnant_Stormtrooper2";
	hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\upper2_co.paa),QPATHTOF(data\Remnants\lower_co.paa)};
};