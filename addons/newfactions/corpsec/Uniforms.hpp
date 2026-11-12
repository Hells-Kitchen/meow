class GUNIFORM(law1_o): U_I_CombatUniform {
    scope = 2;
    scopeCurator = 2;
    displayName = "Corporate Security Forces Uniform";
    class ItemInfo: ItemInfo {
        uniformClass = QGUNIT(law1_o_basic);
        containerClass = "Supply150";
        mass = 40;
    };
};
class GUNIFORM(law2_o): U_I_CombatUniform {
    scope = 2;
    scopeCurator = 2;
    displayName = "Corporate Advanced Security Forces Uniform";
    class ItemInfo: ItemInfo {
        uniformClass = QGUNIT(law2_o_basic);
        containerClass = "Supply240";
        mass = 40;
    };
};
class GUNIFORM(law2_o_sql): U_I_CombatUniform {
    scope = 2;
    scopeCurator = 2;
    displayName = "Corporate Advanced Security Forces Squadleader Uniform";
    class ItemInfo: ItemInfo {
        uniformClass = QGUNIT(law2_o_sql);
        containerClass = "Supply240";
        mass = 40;
    };
};

class GUNIFORM(law3_o): U_I_CombatUniform {
    scope = 2;
    scopeCurator = 2;
    displayName = "Corporate Elite Security Forces Uniform";
    class ItemInfo: ItemInfo {
        uniformClass = QGUNIT(law3_o_basic);
        containerClass = "Supply300";
        mass = 40;
    };
};
class GUNIFORM(law3_o_sql): U_I_CombatUniform {
    scope = 2;
    scopeCurator = 2;
    displayName = "Corporate Elite Security Forces Squadleader Uniform";
    class ItemInfo: ItemInfo {
        uniformClass = QGUNIT(law3_o_sql);
        containerClass = "Supply300";
        mass = 40;
    };
};

class GUNIFORM(law4_o_operative): U_I_CombatUniform {
    scope = 2;
    scopeCurator = 2;
    displayName = "CorpSec Operative Uniform";
    class ItemInfo: ItemInfo {
        uniformClass = QGUNIT(law4_o_operative);
        containerClass = "Supply300";
        mass = 40;
    };
};
class GUNIFORM(B1): U_I_CombatUniform {
    scope = 2;
    scopeCurator = 2;
    scopeArsenal = 2;
	JLTS_isDroid = 1;
	JLTS_hasEMPProtection = 0;
	JLTS_deathSounds = "DeathDroid";
	picture = "\MRC\JLTS\characters\DroidArmor\data\ui\b1_uniform_ui_ca.paa";
    displayName = "B1 Police Droid Uniform";
    class ItemInfo: ItemInfo {
        uniformClass = QGUNIT(law2_o_b1);
        containerClass = "Supply300";
        mass = 40;
    };
};
