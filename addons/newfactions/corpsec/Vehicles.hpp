class WM_V25_Base;
class GVAR(CorpSecV25): WM_V25_Base {
    scope = 2;
    scopeCurator = 2;
    author = AUTHOR;
    displayName = "V-25 Rapid Response Vehicle";
    displayNameShort = "V-25 RRV";

    faction = "Antistasi_CorpSec";
    crew = QGUNIT(law2_o_basic);
    armor = 200;
    side = 0;

    hiddenSelections[] = {"camo","camo1"};
    hiddenSelectionsTextures[] = {
        QPATHTOF(data\corpsec\v25\rsc1_co.paa),
        QPATHTOF(data\corpsec\v25\rsc2_co.paa)
    };
};
	class WM_AAC_Speeder;
	class GVAR(CorpSecAAC): WM_AAC_Speeder
	{
		faction = "Antistasi_CorpSec";
		side = 1;
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"WarMantle\WM_Imperial_Vehicles\AAC\data\repeater_co.paa",QPATHTOF(data\corpsec\aac\aac_hull_co.paa)};

		transportSoldier = 8;

		class TextureSources {
			class CorpSec {
				displayName = "CorpSec";
				author = "Ramsey";
				textures[] = {"WarMantle\WM_Imperial_Vehicles\AAC\data\repeater_co.paa",QPATHTOF(data\corpsec\aac\aac_hull_co.paa)};
			};
		};
	};
	class WM_AAC_Speeder_Rocket;
	class GVAR(CorpSecAAC_Rocket): WM_AAC_Speeder_Rocket
	{
		faction = "Antistasi_CorpSec";
		side = 1;
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\aac\AAC_launcher_co.paa),QPATHTOF(data\corpsec\aac\aac_hull_co.paa)};

		transportSoldier = 8;

		class TextureSources {
			class CorpSec {
				displayName = "CorpSec";
				author = "Ramsey";
				textures[] = {QPATHTOF(data\corpsec\aac\AAC_launcher_co.paa),QPATHTOF(data\corpsec\aac\aac_hull_co.paa)};
			};
		};
	};
	class WM_AAC_Speeder_Artillery;
	class GVAR(CorpSecAAC_MRLS): WM_AAC_Speeder_Artillery
	{
        faction = "Antistasi_CorpSec";
        side = 0;
        hiddenSelections[] = {"camo","camo1"};
        hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\aac\AAC_launcher_co.paa),QPATHTOF(data\corpsec\aac\aac_hull_co.paa)};

        transportSoldier = 8;

        class TextureSources {
            class CorpSec {
                displayName = "CorpSec";
                author = "Ramsey";
                textures[] = {QPATHTOF(data\corpsec\aac\AAC_launcher_co.paa),QPATHTOF(data\corpsec\aac\aac_hull_co.paa)};
            };
        };
    };
class 3AS_MAF_Base_F;
class GVAR(CorpSecMAF): 3AS_MAF_Base_F
{
	author = AUTHOR;
	displayName = "MAF Transport";
	scope = 2;
	scopeCurator = 2;
	side = 0;
    faction = "Antistasi_CorpSec";
	maxSpeed = 820;

	hiddenselectionstextures[] = {QPATHTOF(data\corpsec\front_maf_co.paa),QPATHTOF(data\corpsec\back_maf_co.paa)};

	class TextureSources
	{
		class Gunship
		{
			displayName = "Gunship";
			author = AUTHOR;
			textures[] =
			{
				QPATHTOF(data\corpsec\front_maf_co.paa),
				QPATHTOF(data\corpsec\back_maf_co.paa)
			};
			factions[] =
			{
				"Antistasi_CorpSec"
			};
		};
	};
};
class B_Truck_01_fuel_F;
class B_Truck_01_Repair_F;
class B_Truck_01_ammo_F;
class GVAR(Truck_Fuel): B_Truck_01_fuel_F
{
    author = "Ramsey";
    displayName = "CorpSec Fuel Truck";

    faction = "Antistasi_CorpSec";

    hiddenSelections[] = {"Camo1","Camo2","Camo3"};
    hiddenSelectionsTextures[] = {
        QPATHTOF(data\corpsec\Truck_01_ext_01_CO.paa),
        QPATHTOF(data\corpsec\Truck_01_ext_02_CO.paa),
        QPATHTOF(data\corpsec\truck_01_Fuel_CO.paa)
    };
};
class GVAR(Truck_Repair): B_Truck_01_Repair_F
{
    author = "Ramsey";
    displayName = "CorpSec Repair Truck";

    faction = "Antistasi_CorpSec";

    hiddenSelections[] = {"Camo1","Camo2","Camo3","Camo4"};
    hiddenSelectionsTextures[] = {
        QPATHTOF(data\corpsec\Truck_01_ext_01_CO.paa),
        QPATHTOF(data\corpsec\Truck_01_ext_02_CO.paa),
        QPATHTOF(data\corpsec\truck_01_ammo_CO.paa),
        QPATHTOF(data\corpsec\Containers_02_set_co.paa)
    };
};
class GVAR(Truck_Ammo): B_Truck_01_ammo_F
{
    author = "Ramsey";
    displayName = "CorpSec Ammo Truck";

    faction = "Antistasi_CorpSec";

    hiddenSelections[] = {"Camo1","Camo2","Camo3","Camo4"};
    hiddenSelectionsTextures[] = {
        QPATHTOF(data\corpsec\Truck_01_ext_01_CO.paa),
        QPATHTOF(data\corpsec\Truck_01_ext_02_CO.paa),
        QPATHTOF(data\corpsec\truck_01_ammo_CO.paa)
    };
};
