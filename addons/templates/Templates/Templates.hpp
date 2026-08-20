    class KND_Base
    {
        requiredAddons[] = {};
        basepath = QPATHTOF(Templates);
        logo = QPATHTOF(Templates\kndicon_ca.paa);
        priority = 100;
    };
// -------------------- Occupiers ---------------------------------
    class Empire : KND_Base
    {
        basepath = QPATHTOF(Templates\Imp); 
        side = "Inv"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "[KND] Galactic Empire";
        file = "Empire";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = "The Galactic Empire, or simply the Empire, was the government that replaced the Galactic Republic, established by Supreme Chancellor Palpatine to rule the galaxy with an iron fist"; 
    };
    class KND : KND_Base
    {
        basepath = QPATHTOF(Templates\knd); 
        side = "Reb"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_knd_co.paa); 
        name = "House Kandosii"; 
        file = "House";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = ""; 
    };
    class Civ: KND_Base
    {
        basepath = QPATHTOF(Templates\civ); 
        side = "Civ"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_civ_co.paa); 
        name = "[KND] Civilian";
        file = "Civ";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = ""; 
    };
    class CISRemnant: KND_Base
    {
        basepath = QPATHTOF(Templates\CIS); 
        side = "Occ"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_cis_co.paa); 
        name = "[KND] CIS Remnants";
        file = "Remnants";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = ""; 
    };
    class CorpSec: KND_Base
    {
        basepath = QPATHTOF(Templates\misc); 
        side = "Occ"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_corpsec_co.paa); 
        name = "[KND] Corporate Sector Authority"; 
        file = "gov";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = ""; 
    };
    class HuttCartel: CorpSec
    {
        flagTexture = QPATHTOF(Pictures\Markers\marker_hutt_co.paa); 
        name = "[KND] Hutt Cartel"; 
        file = "hutt";
        description = ""; 
    };
    class CN: KND_Base
    {
        basepath = QPATHTOF(Templates\rivals); 
        side = "Riv"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_dw_co.paa); 
        name = "[KND] Clan Nei'idr"; 
        file = "cn";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = ""; 
    };
    class Zealots: KND_Base
    {
        basepath = QPATHTOF(Templates\rivals); 
        side = "Riv"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_dw_co.paa); 
        name = "[KND] Zealots"; 
        file = "zealots";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = ""; 
    };
/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/