class CfgFunctions
{
    class A3A
    {
       class Ammunition {
            class configSort {
				file = QPATHTOF(functions\Ammunition\fn_configSort.sqf);
			};
            class equipmentIsValidForCurrentModset {
				file = QPATHTOF(functions\Ammunition\fn_equipmentIsValidForCurrentModset.sqf);
			};
            class fillLootCrate {
				file = QPATHTOF(functions\Ammunition\fn_fillLootCrate.sqf);
			};
            class loot {
                file = QPATHTOF(functions\Ammunition\fn_loot.sqf);
            };
            class equipmentSort {
                file = QPATHTOF(functions\Ammunition\fn_equipmentSort.sqf);
            };
        };
        class ItemSets 
        {
            class itemset_medicalSupplies { 
                file = QPATHTOF(functions\Itemsets\fn_itemset_medicalSupplies.sqf);
            };
        };
    };
    // class AGD
    // {
    //     class PreInit {
    //         file = QPATHTOF(functions\PreInit);
    //         class forceKNDFilter {
    //             preInit = 1;
    //         };
    //     };
    // };
};