
    class arifle_MSBS65_F;
    class GWEAPON(SpacePDW1): arifle_MSBS65_F
	{
        scope = 2;
		displayName = "Bravo-1 LRR";
        magazines[] = {QGVAR(spacePDW1_mag)};
        magazineWell[] = {};
		baseWeapon=QGWEAPON(SpacePDW1);
		DLC = "";

        hiddenSelections[] = {"Camo1","Camo2","Camo3"};
        hiddenSelectionsTextures[] = {
            QPATHTOF(data\weapon_textures\scavtech\MSBS_01_CO.paa),
            QPATHTOF(data\weapon_textures\scavtech\MSBS_02_CO.paa),
            QPATHTOF(data\weapon_textures\scavtech\MSBS_03_CO.paa)
        };

        modes[] = {"FullAuto", "Single"};
        class Single: Mode_SemiAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
			{
				soundSetShot[] = {"ls_dc17m_sniper_Shot_SoundSet","ls_sniper_Tail_SoundSet"};
			};
            reloadTime = 0.06;
			dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.5;
            midRange = 150;
            midRangeProbab = 0.7;
            maxRange = 250;
            maxRangeProbab = 0.2;
        };
        class FullAuto: Mode_FullAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
				soundSetShot[] = {"ls_dc17m_sniper_Shot_SoundSet","ls_sniper_Tail_SoundSet"};
            };
            reloadTime = 0.1;
			dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.9;
            midRange = 15;
            midRangeProbab = 0.7;
            maxRange = 30;
            maxRangeProbab = 0.05;
        };
		class WeaponSlotsInfo{

			allowedSlots[] = {901};
			mass = 55;
	
			class CowsSlot: CowsSlot{
				compatibleItems[] = {SHORTSCOPES, SPECIALSCOPES,LONGSCOPES};
			};
			class MuzzleSlot: MuzzleSlot {
				compatibleItems[] = {MUZZLES};
			};
			class PointerSlot: PointerSlot {
				compatibleItems[] = {POINTERS};
			};
			class UnderbarrelSlot: UnderbarrelSlot {
				compatibleItems[] = {BIPODS};
			};
		};
    };
	
    class arifle_ARX_blk_F;
    class GWEAPON(SpaceDMR1): arifle_ARX_blk_F
	{
        scope = 2;
		displayName = "SR-V Blackeye";
        magazines[] = {QGVAR(spaceDMR1_mag)};
        magazineWell[] = {};
		baseWeapon=QGWEAPON(SpaceDMR1);
		DLC = "";
        modes[] = {"Single"};
        class Single: Mode_SemiAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
				soundSetShot[] = {"ls_dc17m_sniper_Shot_SoundSet","ls_sniper_Tail_SoundSet"};
            };
            reloadTime = 0.75;
			dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.5;
            midRange = 150;
            midRangeProbab = 0.7;
            maxRange = 250;
            maxRangeProbab = 0.2;
        };
		class WeaponSlotsInfo{

			allowedSlots[] = {901};
			mass = 55;
	
			class CowsSlot: CowsSlot{
				compatibleItems[] = {SHORTSCOPES, SPECIALSCOPES,LONGSCOPES};
			};
			class MuzzleSlot: MuzzleSlot {
				compatibleItems[] = {MUZZLES};
			};
			class PointerSlot: PointerSlot {
				compatibleItems[] = {POINTERS};
			};
			class UnderbarrelSlot: UnderbarrelSlot {
				compatibleItems[] = {BIPODS};
			};
		};
    };

    class MMG_02_black_F;
    class GWEAPON(SpaceLMG2): MMG_02_black_F
	{
        scope = 2;
		displayName = "LLWG-M5";
        magazines[] = {QGVAR(spaceLMG2_mag)};
		baseWeapon=QGWEAPON(SpaceLMG2);
		DLC = "";
        modes[] = {"FullAuto", "Single"};
        class Single: Mode_SemiAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
			class StandardSound: BaseSoundModeType
			{
				soundSetShot[] = {"ls_e5c_Shot_SoundSet","ls_mediumBlaster_Shot_SoundSet"};
			};
			reloadTime = 0.19;
			dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.5;
            midRange = 150;
            midRangeProbab = 0.7;
            maxRange = 250;
            maxRangeProbab = 0.2;
        };
        class FullAuto: Mode_FullAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
                soundSetShot[] = {"ls_e5c_Shot_SoundSet","ls_mediumBlaster_Shot_SoundSet"};
            };
			reloadTime = 0.19;
			dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.9;
            midRange = 15;
            midRangeProbab = 0.7;
            maxRange = 30;
            maxRangeProbab = 0.05;
        };
		class WeaponSlotsInfo{

			allowedSlots[] = {901};
			mass = 55;
	
			class CowsSlot: CowsSlot{
				compatibleItems[] = {SHORTSCOPES, SPECIALSCOPES,LONGSCOPES};
			};
			class MuzzleSlot: MuzzleSlot {
				compatibleItems[] = {MUZZLES};
			};
			class PointerSlot: PointerSlot {
				compatibleItems[] = {POINTERS};
			};
			class UnderbarrelSlot: UnderbarrelSlot {
				compatibleItems[] = {BIPODS};
			};
		};
    };

    class arifle_RPK12_F;
    class GWEAPON(SpaceLMG1): arifle_RPK12_F
	{
        scope = 2;
		displayName = "Cresh-77 Squad Repeater";
        magazines[] = {QGVAR(spaceLMG1_mag),QGVAR(spaceAK_mag)};
        magazineWell[] = {};
		baseWeapon=QGWEAPON(SpaceLMG1);
		DLC = "";
        modes[] = {"FullAuto", "Single"};
        class Single: Mode_SemiAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
			class StandardSound: BaseSoundModeType
			{
				soundSetShot[] = {"ls_e5c_Shot_SoundSet","ls_mediumBlaster_Shot_SoundSet"};
			};
			reloadTime = 0.0999;
            dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.5;
            midRange = 150;
            midRangeProbab = 0.7;
            maxRange = 250;
            maxRangeProbab = 0.2;
        };
        class FullAuto: Mode_FullAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
                soundSetShot[] = {"ls_e5c_Shot_SoundSet","ls_mediumBlaster_Shot_SoundSet"};
            };
			reloadTime = 0.0999;
            dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.9;
            midRange = 15;
            midRangeProbab = 0.7;
            maxRange = 30;
            maxRangeProbab = 0.05;
        };
		class WeaponSlotsInfo{

			allowedSlots[] = {901};
			mass = 55;
	
			class CowsSlot: CowsSlot{
				compatibleItems[] = {SHORTSCOPES, SPECIALSCOPES,LONGSCOPES};
			};
			class MuzzleSlot: MuzzleSlot {
				compatibleItems[] = {MUZZLES};
			};
			class PointerSlot: PointerSlot {
				compatibleItems[] = {POINTERS};
			};
			class UnderbarrelSlot: UnderbarrelSlot {
				compatibleItems[] = {BIPODS};
			};
		};
    };

    class arifle_Mk20C_plain_F;
    class GWEAPON(SpaceAR1): arifle_Mk20C_plain_F
	{
        scope = 2;
		displayName = "ZK-77 Blaster Carbine";
        magazines[] = {QGVAR(spaceAR1_mag)};
        magazineWell[] = {};
		baseWeapon=QGWEAPON(SpaceAR1);
		DLC = "";
        modes[] = {"FullAuto", "Single"};
        class Single: Mode_SemiAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
				soundSetShot[] = {"ls_dc15s_Shot_SoundSet","ls_mediumBlaster_Tail_SoundSet"};
            };
			reloadTime = 0.1199;
            dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.5;
            midRange = 150;
            midRangeProbab = 0.7;
            maxRange = 250;
            maxRangeProbab = 0.2;
        };
        class FullAuto: Mode_FullAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
				soundSetShot[] = {"ls_dc15s_Shot_SoundSet","ls_mediumBlaster_Tail_SoundSet"};
            };
			reloadTime = 0.1199;
            dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.9;
            midRange = 15;
            midRangeProbab = 0.7;
            maxRange = 30;
            maxRangeProbab = 0.05;
        };
		class WeaponSlotsInfo{

			allowedSlots[] = {901};
			mass = 55;
	
			class CowsSlot: CowsSlot{
				compatibleItems[] = {SHORTSCOPES, SPECIALSCOPES,LONGSCOPES};
			};
			class MuzzleSlot: MuzzleSlot {
				compatibleItems[] = {MUZZLES};
			};
			class PointerSlot: PointerSlot {
				compatibleItems[] = {POINTERS};
			};
			class UnderbarrelSlot: UnderbarrelSlot {
				compatibleItems[] = {BIPODS};
			};
		};
    };

    class arifle_AK12_F;
    class GWEAPON(SpaceAK1): arifle_AK12_F
	{
        scope = 2;
		displayName = "BK-44 Blaster Rifle";
        magazines[] = {QGVAR(spaceAK_mag),QGVAR(spaceLMG1_mag)};
		baseWeapon=QGWEAPON(SpaceAK1);
		DLC = "";
        modes[] = {"FullAuto", "Single"};
        class Single: Mode_SemiAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
                soundSetShot[] = {"ls_westarM5_Shot_SoundSet","ls_mediumBlaster_Tail_SoundSet"};
            };
			reloadTime = 0.24;
            dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.5;
            midRange = 150;
            midRangeProbab = 0.7;
            maxRange = 250;
            maxRangeProbab = 0.2;
        };
        class FullAuto: Mode_FullAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
                soundSetShot[] = {"ls_westarM5_Shot_SoundSet","ls_mediumBlaster_Tail_SoundSet"};
            };
			reloadTime = 0.24;
            dispersion = 0.00145;
            minRange = 2;
            minRangeProbab = 0.9;
            midRange = 15;
            midRangeProbab = 0.7;
            maxRange = 30;
            maxRangeProbab = 0.05;
        };
		class WeaponSlotsInfo{

			allowedSlots[] = {901};
			mass = 55;
	
			class CowsSlot: CowsSlot{
				compatibleItems[] = {SHORTSCOPES, SPECIALSCOPES,LONGSCOPES};
			};
			class MuzzleSlot: MuzzleSlot {
				compatibleItems[] = {MUZZLES};
			};
			class PointerSlot: PointerSlot {
				compatibleItems[] = {POINTERS};
			};
			class UnderbarrelSlot: UnderbarrelSlot {
				compatibleItems[] = {BIPODS};
			};
		};
        class LinkedItems {
            class LinkedItemsOptic {
                slot = "CowsSlot";
                item = "3AS_optic_VK38X_F";
            };
        };
    };

    class sgun_HunterShotgun_01_F;
    class GWEAPON(BARM_Shotgun): sgun_HunterShotgun_01_F {
        scope = 2;
        scopeCurator = 2;
        scopeArsenal = 2;
        baseWeapon = QGWEAPON(BARM_Shotgun);
        displayName = "BARM-ST12 Scattergun";
        author = AUTHOR;
        magazines[] = {QGVAR(BARM_mag)};
        hiddenSelectionsTextures[] = {
            QPATHTOF(data\weapon_textures\HunterShotgun_01_CO.paa)
        };
        modes[] = {"Single","Single_Close","Single_Far"};
        class Single: Mode_SemiAuto {
            maxRange = 50;
            dispersion = 0.00145;
            sounds[] = {"StandardSound"};
            reloadTime = 0.1;
            class StandardSound {
                begin1[] = {QPATHTOF(sounds\shotgun\shotgun_close_1.wss), 1, 1, 1000};
                begin2[] = {QPATHTOF(sounds\shotgun\shotgun_close_2.wss), 1, 1, 1000};
                begin3[] = {QPATHTOF(sounds\shotgun\shotgun_close_3.wss), 1, 1, 1000};
                begin4[] = {QPATHTOF(sounds\shotgun\shotgun_close_4.wss), 1, 1, 1000};
                soundBegin[] = {"begin1", 0.25, "begin2", 0.25, "begin3", 0.25, "begin4", 0.25};
            };
        };
        class Single_Close: Single {
            minRange = 0;
            minRangeProbab = 0.1;
            midRange = 50;
            midRangeProbab = 0.9;
            maxRange = 100;
            maxRangeProbab = 0.1;
            class StandardSound {
                begin1[] = {QPATHTOF(sounds\shotgun\shotgun_close_1.wss), 1, 1, 1000};
                begin2[] = {QPATHTOF(sounds\shotgun\shotgun_close_2.wss), 1, 1, 1000};
                begin3[] = {QPATHTOF(sounds\shotgun\shotgun_close_3.wss), 1, 1, 1000};
                begin4[] = {QPATHTOF(sounds\shotgun\shotgun_close_4.wss), 1, 1, 1000};
                soundBegin[] = {"begin1", 0.25, "begin2", 0.25, "begin3", 0.25, "begin4", 0.25};
            };
        };
        class Single_Far: Single {
            minRange = 100;
            minRangeProbab = 0.1;
            midRange = 200;
            midRangeProbab = 0.9;
            maxRange = 300;
            maxRangeProbab = 0.1;
            class StandardSound {
                begin1[] = {QPATHTOF(sounds\shotgun\shotgun_dist_1.wss), 1, 1, 1000};
                begin2[] = {QPATHTOF(sounds\shotgun\shotgun_dist_2.wss), 1, 1, 1000};
                begin3[] = {QPATHTOF(sounds\shotgun\shotgun_dist_3.wss), 1, 1, 1000};
                soundBegin[] = {"begin1", 0.25, "begin2", 0.25, "begin3", 0.25};
            };
        };
    };

    class hgun_PDW2000_F;
    class EGVAR(weapon,minnoch): hgun_PDW2000_F
    {
        scope = 2;
		displayName = "DL-9 Minnoch Modified Blaster Pistol";
        baseWeapon = QEGVAR(weapon,minnoch);
        descriptionShort = "Concealable Blaster Pistol";
        hiddenSelections[] = {"camo","camo1","camo2","camo3"};
        hiddenSelectionsTextures[] = {
            "",
            "\a3\weapons_f\rifles\mx\data\xmx_handle_co",
            "\a3\weapons_f_gamma\smgs\pdw2000\data\pdw2000_ammo_ca",
            QPATHTOF(data\weapon_textures\PDW2000_CO.paa)
        };

        magazines[] = {
            "3AS_45Rnd_EY50_Mag"
        };
        drySound[] = {"\ls\core\addons\sounds\weapons\dry\generic.wss",0.398107,1,20};
        reloadMagazineSound[] = {"3as\3AS_Main\Sounds\Reload\Venting_Sound.ogg",2,1,30};
        reloadAction = "3AS_GestureReloadScatterGun";

        modes[] = {"FullAuto"};
        class FullAuto: Mode_FullAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
                begin1[] = {"\ls\core\addons\sounds\weapons\rg4d\shot1.wav",1,1,1800};
                soundBegin[] = {"begin1",1};
            };
            reloadTime = 0.05;
            dispersion = 0.008;
            minRange = 0.2;
            minRangeProbab = 0.95;
            midRange = 250;
            midRangeProbab = 0.85;
            maxRange = 425;
            maxRangeProbab = 0.2;
            aiRateOfFire = 0.025;
            aiRateOfFireDistance = 250;
            aiDispersionCoefY = 2.0;
            aiDispersionCoefX = 2.0;
            showToPlayer = 1;
            burst = 30;
            autoFire = 1;
        };
    };

    class arifle_AKM_F;
    class EGVAR(weapon,bk43): arifle_AKM_F{
        scope = 2;
        displayName = "BK-43 blaster rifle";
        magazines[] = {"MTI_Factions_spaceAK_mag","MTI_Factions_spaceLMG1_mag"};
		baseWeapon=QEGVAR(weapon,bk43);
		DLC = "";

        hiddenSelectionsTextures[] = {
            "A3\Weapons_F_Exp\Rifles\AKM\Data\akm_co.paa",
            "\A3\Weapons_F_Exp\Rifles\AKM\Data\akm_steel_mag_co.paa",
            "\A3\Weapons_F_Exp\Rifles\AKM\Data\akm_steel_mag_co.paa"
        };

        modes[] = {"FullAuto", "Single"};
        class Single: Mode_SemiAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
                begin1[] = {"\ls\core\addons\sounds\weapons\zh73\shot1.wss",1,1,1800};
                soundBegin[] = {"begin1",1};
            };
			reloadTime = 0.24;
            dispersion = 0.004;
            minRange = 2;
            minRangeProbab = 0.5;
            midRange = 450;
            midRangeProbab = 0.7;
            maxRange = 750;
            maxRangeProbab = 0.2;
        };
        class FullAuto: Mode_FullAuto
        {
            sounds[] = {"StandardSound"};
            class BaseSoundModeType
            {
                weaponSoundEffect = "";
                closure1[] = {};
                closure2[] = {};
                soundClosure[] = {};
            };
            class StandardSound: BaseSoundModeType
            {
                begin1[] = {"\ls\core\addons\sounds\weapons\zh73\shot1.wss",1,1,1800};
                soundBegin[] = {"begin1",1};
            };
			reloadTime = 0.04;
            dispersion = 0.005;
            minRange = 0;
            minRangeProbab = 0.9;
            midRange = 700;
            midRangeProbab = 0.7;
            maxRange = 900;
            maxRangeProbab = 0.05;
        };
    };
