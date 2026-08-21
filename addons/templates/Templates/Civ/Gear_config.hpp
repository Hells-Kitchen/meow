class HelmetBase;
class H_Booniehat_khk: HelmetBase {
    class ItemInfo;
};
class knd_a3a_jockey: H_Booniehat_khk
{
    scope = 2;
    author = AUTHOR;
    displayName = "Jockey (Goggles)";
    model = "\ls\core\addons\characters\helmets\jockey\ls_helmet_jockey.p3d";
    hiddenSelections[] = {
        "camo",  
        "camo1", 
        "camo2"  
    };
    hiddenSelectionsTextures[] = {"\ls\core\addons\characters\helmets\jockey\data\camo_co.paa","\ls\core\addons\characters\equipment\goggles\data\goggles_co.paa","\ls\core\addons\characters\equipment\goggles\data\goggles_ca.paa"};
    picture = "\ls\core\addons\characters\data\ui\jockeyHat_goggles_ui_ca.paa";
    class ItemInfo: ItemInfo {
        mass = 24;
        uniformModel = "\ls\core\addons\characters\helmets\jockey\ls_helmet_jockey.p3d";
        hiddenSelections[] = {
            "camo",
            "camo1",
            "camo2"
        };
    };
};

class knd_a3a_jockey_alt: knd_a3a_jockey {
    author = AUTHOR;
    displayName = "Jockey (No Goggles)";
    hiddenSelectionsTextures[] = {
        "\ls\core\addons\characters\helmets\jockey\data\camo_co.paa",
        "",
        ""
    };
    picture = "\ls\core\addons\characters\data\ui\jockeyHat_ui_ca.paa";
    class ItemInfo: ItemInfo {
        mass = 22;
    };
};

class knd_a3a_jockey_navy: knd_a3a_jockey {
    author = AUTHOR;
    displayName = "Jockey (Black)";
    hiddenSelectionsTextures[] = {
        "\ls\core\addons\characters\helmets\jockey\data\navy_co.paa",
        "\ls\core\addons\characters\equipment\goggles\data\goggles_co.paa",
        "\ls\core\addons\characters\equipment\goggles\data\goggles_ca.paa"
    };
    picture = "\ls\core\addons\characters\data\ui\jockeyHat_navy_goggles_ui_ca.paa";
};

class knd_a3a_jockey_navy_alt: knd_a3a_jockey_navy {
    author = AUTHOR;
    displayName = "Jockey (Black, No Goggles)";
    hiddenSelectionsTextures[] = {
        "\ls\core\addons\characters\helmets\jockey\data\navy_co.paa",
        "",
        ""
    };
    picture = "\ls\core\addons\characters\data\ui\jockeyHat_navy_ui_ca.paa";
    class ItemInfo: ItemInfo {
        mass = 22;
    };
};