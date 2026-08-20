    /*
        Each addon entry can use these values:
        addons[] = {};
        weapons = traderWeapons entry;
        vehicles = traderVehicles entry;

        Essentially, this is the core file. It links to other files.
    */
    
    class addons_agd_weapons_knd : addons_base
    {
        addons[] = {"knd_newArmor"};
        weapons = "AGD_KND_stock";
        vehicles = "vehicles_knd";
    };