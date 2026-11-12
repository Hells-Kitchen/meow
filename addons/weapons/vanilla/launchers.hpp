class launch_B_Titan_F;
class EGVAR(weapon,AA_Launcher): launch_B_Titan_F
{
	displayName = "Shellcracker AA Launcher";
	scope = 2;
	scopeArsenal = 2;
	author = AUTHOR;
	baseWeapon = QEGVAR(weapon,AA_Launcher);
	magazines[] = {QEGVAR(mag,AA_Purple), QEGVAR(mag,AA_Yellow)};
	magazineWell[] = {};
	hiddenSelections[] = {"camo_launcher","camo_tube"};
	hiddenSelectionsTextures[] = {
		QPATHTOF(data\weapon_textures\launcher_co.paa),
		QPATHTOF(data\weapon_textures\tubel_co.paa)
	};
};

class launch_B_Titan_short_F;
class EGVAR(weapon,AT_Launcher): launch_B_Titan_short_F
{
	displayName = "Shellcracker AT Launcher";
	scope = 2;
	scopeArsenal = 2;
	author = AUTHOR;
	baseWeapon = QEGVAR(weapon,AT_Launcher);
	magazines[] = {QEGVAR(mag,AT_Purple), QEGVAR(mag,AT_Yellow)};
	magazineWell[] = {};
	hiddenSelections[] = {"camo_launcher","camo_tube"};
	hiddenSelectionsTextures[] = {
		QPATHTOF(data\weapon_textures\launcher_co.paa),
		QPATHTOF(data\weapon_textures\tubem_co.paa)
	};
};
