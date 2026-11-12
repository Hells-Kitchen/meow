    class AGD_Base
    {
        requiredAddons[] = {};
        basepath = QPATHTOF(Templates);
        logo = "knd_markers\data\Ral.paa";
        priority = 100;
    };
// -------------------- Occupiers ---------------------------------
    class Empire : AGD_Base
    {
        priority = 200;
        basepath = QPATHTOF(Templates\Imp); 
        side = "Occ"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "[AGD] Galactic Empire";
        file = "Base";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = "The Galactic Empire, or simply the Empire, was the government that replaced the Galactic Republic, established by Supreme Chancellor Palpatine to rule the galaxy with an iron fist"; 
    };

    class Rebel_Alliance : AGD_Base
    {
        basepath = QPATHTOF(Templates\Reb); 
        side = "Inv"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_rebel_alliance_co.paa); 
        name = "[AGD] Rebel Alliance";
        file = "Base";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = "The Rebel Alliance, also known as the Alliance to Restore the Republic, was a resistance movement formed to oppose the Galactic Empire and restore the Galactic Republic"; 
    };

    class New_Republic : AGD_Base
    {
        basepath = QPATHTOF(Templates\NewRep); 
        side = "Occ"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_new_republic_co.paa); 
        name = "[AGD] New Republic";
        file = "Base";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = "The New Republic was the government formed after the fall of the Galactic Empire, aiming to restore democracy and peace to the galaxy"; 
    };
    class Republic: AGD_Base
    {
        basepath = QPATHTOF(Templates\Rep); 
        side = "Occ"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_republic_co.paa); 
        name = "[AGD] Galactic Republic";
        file = "Base";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = "The Galactic Republic was the government that preceded the Galactic Empire, known for its democratic institutions and the Jedi Order"; 
    };
    class RepublicLSP1: Republic
    {
        side = "Occ"; 
        name = "[AGD] Galactic Republic Legion Studios - Phase 1";
        file = "LS";
        description = "The Galactic Republic using LS' old clone model base"; 
    };
    class CIS: AGD_Base
    {
        basepath = QPATHTOF(Templates\CIS); 
        side = "Inv"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_cis_co.paa); 
        name = "[AGD] Confederacy of Independent Systems";
        file = "Base";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = "The Confederacy of Independent Systems, also known as the Separatists, was a coalition of star systems and organizations that sought to secede from the Galactic Republic"; 
    };
    class CorpSec: AGD_Base
    {
        basepath = QPATHTOF(Templates\Corp); 
        side = "Occ"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_csa_co.paa); 
        name = "[AGD] Corporate Sector Authority";
        file = "Base";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = "The Corporate Sector Authority is the governing body responsible for maintaining order and enforcing laws within the corporate sector"; 
    };

    class Civvies: AGD_Base
    {
        basepath = QPATHTOF(Templates\Civ); 
        side = "Civ"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_civvies_co.paa); 
        name = "[AGD] Civilians";
        file = "Civ";
        maps[] = {}; 
        climate[] = {"arid", "arctic", "temperate", "tropical"}; 
        description = "Civilian population of the galaxy"; 
    };
/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/