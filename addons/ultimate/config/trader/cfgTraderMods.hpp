

class traderAddons
{
    class addons_base; // Inherit from the main mod
    
    #include "cfgTraderAddons.hpp"

    class traderWeapons
    {
        #include "cfgTraderWeapons.hpp"
    };
    class traderVehicles
    {
        #include "cfgTraderVehicles.hpp"
    };
};