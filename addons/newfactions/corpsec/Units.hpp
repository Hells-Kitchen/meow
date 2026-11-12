class I_soldier_F;
class GUNIT(PAbase): I_soldier_F {
    scope = 1;
    scopeCurator = 1;
    faction = QUOTE(ADDON);
    identityTypes[] = {"Head_Greek","Head_TK","Head_Enoch","Head_Euro","Head_Tanoan","LanguageENG_F","ls_head_randomSpecies"};
};
class GUNIT(law1_o_basic): GUNIT(PAbase) {
scope = 1;
scopeCurator = 1;
author = AUTHOR;
displayName = "Officer (Pistol)";
model = "\ls\core\addons\characters\uniforms\naval\ls_uniform_naval.p3d";
hiddenSelections[] = {"camo","camo1","camo2","camo3"};
hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\uniform_co.paa),QPATHTOF(data\corpsec\uniform1_co.paa),"",""};
uniformClass = QGUNIFORM(law1_o);
side = 0;
};
class GUNIT(law2_o_basic): GUNIT(law1_o_basic)
{
scope = 2;
scopeCurator = 2;
displayName = "Officer (Pistol)";
author = AUTHOR;
uniformClass = QGUNIFORM(law2_o);

hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\uniformred_co.paa),QPATHTOF(data\corpsec\uniform1_co.paa),QPATHTOF(data\corpsec\uniformred_co.paa),""};
};
class GUNIT(law2_o_sql): GUNIT(law2_o_basic) {
    scope = 1;
    scopeCurator = 1;
    author = AUTHOR;
    uniformClass = QGUNIFORM(law2_o_sql);
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\uniformred_co.paa),QPATHTOF(data\corpsec\sql_co.paa),QPATHTOF(data\corpsec\uniformred_co.paa),""};
};
class GUNIT(law3_o_basic): GUNIT(law1_o_basic) {
    scope = 1;
    scopeCurator = 1;
    author = AUTHOR;
    displayName = "Officer (Pistol)";
    uniformClass = QGUNIFORM(law3_o);
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\elite2_co.paa),QPATHTOF(data\corpsec\elite1_co.paa),QPATHTOF(data\corpsec\uniformred_co.paa),""};
};
class GUNIT(law3_o_sql): GUNIT(law3_o_basic) {
    scope = 1;
    scopeCurator = 1;
    author = AUTHOR;
    uniformClass = QGUNIFORM(law3_o_sql);
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\elite2_co.paa),QPATHTOF(data\corpsec\elitesql1_co.paa),QPATHTOF(data\corpsec\uniformred_co.paa),""};
};
class TAS_Droid_B1_E5;
class GUNIT(law2_o_b1): TAS_Droid_B1_E5 {
    scope = 1;
    scopeCurator = 1;
    author = AUTHOR;
    displayName = "B1 Police Droid";
    uniformClass = QGUNIFORM(B1);
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\B1_co.paa)};
    backpack = "JLTS_portable_shield_cis_backpack";
};
class O_V_Soldier_base_F;
class GUNIT(law4_o_operative): O_V_Soldier_base_F {
	scope = 2;
	scopeCurator = 2;
	displayName = "Operative Uniform";
	uniformClass = QGUNIFORM(law4_o_operative);
	model = "\A3\Characters_F_Exp\OPFOR\o_viper.p3d";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\Operator_Suit.paa)};
};