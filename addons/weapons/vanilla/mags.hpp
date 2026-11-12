	class 30Rnd_65x39_caseless_msbs_mag;
    class GVAR(spacePDW1_mag): 30Rnd_65x39_caseless_msbs_mag {
        displayName = "Scav-Tech Bravo1	Magazine";
        count = 60;
        ammo = "3AS_EY50_YellowPlasma";
		tracersEvery = 1;
    };

	class 30Rnd_65x39_caseless_green;
    class GVAR(SpaceDMR1_mag): 30Rnd_65x39_caseless_green {
        displayName = "Scav-Tech Ionbolt Magazine";
        count = 25;
        ammo = "3AS_EM50_RedPlasma";
    };

	class 150Rnd_93x64_Mag;
    class GVAR(spaceLMG2_mag): 150Rnd_93x64_Mag {
        displayName = "Scav-Tech Srog Ion-belt";
        count = 125;
        ammo = "3AS_EM50_RedPlasma";
		tracersEvery = 1;
    };
	class 75Rnd_762x39_Mag_F;
    class GVAR(spaceLMG1_mag): 75Rnd_762x39_Mag_F {
        displayName = "Scav-Tech Cresh Ion-belt";
        count = 100;
        ammo = "3AS_EM50_RedPlasma";
		tracersEvery = 1;
    };
	
	class 30Rnd_556x45_Stanag;
    class GVAR(spaceAR1_mag): 30Rnd_556x45_Stanag {
        displayName = "Scav-Tech Extended Ion Magazine";
        count = 50;
        ammo = "3AS_EM50_RedPlasma";
		tracersEvery = 1;
    };
	class 30Rnd_762x39_Mag_F;
    class GVAR(spaceAK_mag): 30Rnd_762x39_Mag_F {
        displayName = "Scav-Tech Alpha1	Magazine";
        count = 40;
        ammo = "3AS_EY50_YellowPlasma";
		tracersEvery = 1;
    };
    class EGVAR(mag,base);
    class GVAR(BARM_mag): EGVAR(mag,base) {
        scope = 2;
        scopeArsenal = 2;
        displayName = "[SOB] Hunting Rounds";
        ammo = "3AS_EY30_Pellets_Submunition";
        displayNameShort = "Standard Energy";
        count = 5;
        descriptionShort = "Hunting Rounds<br/>Used in: BARM-ST12 Scattergun<br/>Standard Issue for Big Game Hunters";
    };
