class ls_newRepublicVest_naval_heavy;
class GVEST(CorpHeavy): ls_newRepublicVest_naval_heavy
{
    displayName = "CorpSec Heavy Vest";
    hiddenSelections[] = {"camo","camo1","camo2"};
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\heavy1_co.paa),QPATHTOF(data\corpsec\pouches_co.paa),QPATHTOF(data\corpsec\extras_co.paa)};
};
class GVEST(CorpSpec):GVEST(CorpHeavy)
{
    displayName = "CorpSec Special Operations Vest";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\vestelite1_co.paa),QPATHTOF(data\corpsec\pouches_co.paa),QPATHTOF(data\corpsec\extrasspec_co.paa)};
};
class ls_newRepublicVest_naval_light;
class GVEST(CorpLight): ls_newRepublicVest_naval_light
{
    displayName = "CorpSec Light Vest";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\heavy1_co.paa),QPATHTOF(data\corpsec\pouches_co.paa)};
};
class ls_newRepublicVest_naval_medium;
class GVEST(CorpMedium): ls_newRepublicVest_naval_medium
{
    displayName = "CorpSec Medium Vest";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\heavy1_co.paa),QPATHTOF(data\corpsec\pouches_co.paa)};
};
class ls_newRepublicVest_naval;
class GVEST(Corp): ls_newRepublicVest_naval
{
    displayName = "CorpSec Vest";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\heavy1_co.paa),QPATHTOF(data\corpsec\pouches_co.paa)};
};
class ls_helmet_technician;
class GHELMET(Corp): ls_helmet_technician
{
    scope = 2;
    scopeCurator = 2;
    author = AUTHOR;
    displayName = "CorpSec Helmet";
    hiddenSelections[] = {"camo","camo1","camo2"};
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\camo_co.paa),"",""};
};
class GHELMET(corpred): GHELMET(Corp)
{
    scope = 2;
    scopeCurator = 2;
    author = AUTHOR;
    displayName = "CorpSec Helmet (Red)";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\red_co.paa),"",""};
};
class ls_helmet_cqcm;
class GHELMET(CorpCQCM): ls_helmet_cqcm
{
    scope = 2;
    scopeCurator = 2;
    author = AUTHOR;
    displayName = "CorpSec CQCM Helmet";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqc_co.paa),"",""};
};
class ls_helmet_cqcm_alt;
class GHELMET(CorpCQCMAlt): ls_helmet_cqcm_alt
{
    scope = 2;
    scopeCurator = 2;
    author = AUTHOR;
    displayName = "CorpSec CQCM Mask Helmet";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqc_co.paa),QPATHTOF(data\corpsec\cqc_co.paa),""};
};
class ls_helmet_cqcm_full;
class GHELMET(CorpCQCMFull): ls_helmet_cqcm_full
{
    scope = 2;
    scopeCurator = 2;
    author = AUTHOR;
    displayName = "CorpSec CQCM Mask + Visor Helmet";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqc_co.paa),QPATHTOF(data\corpsec\cqc_co.paa),QPATHTOF(data\corpsec\cqc_co.paa)};
};
class ls_helmet_cqcm_visor;
class GHELMET(CorpCQCMVisor): ls_helmet_cqcm_visor
{
    scope = 2;
    scopeCurator = 2;
    author = AUTHOR;
    displayName = "CorpSec CQCM Visor Helmet";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqc_co.paa),"",QPATHTOF(data\corpsec\cqc_co.paa)};
};
class GHELMET(CorpCQCMRed): GHELMET(CorpCQCM)
{
    displayName = "CorpSec CQCM Helmet (Red)";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqcred_co.paa),"",""};
};
class GHELMET(CorpCQCMAltRed): GHELMET(CorpCQCMAlt)
{
    displayName = "CorpSec CQCM Mask Helmet (Red)";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqcred_co.paa),QPATHTOF(data\corpsec\cqcred_co.paa),""};
};
class GHELMET(CorpCQCMFullRed): GHELMET(CorpCQCMFull)
{
    displayName = "CorpSec CQCM Mask + Visor Helmet (Red)";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqcred_co.paa),QPATHTOF(data\corpsec\cqcred_co.paa),QPATHTOF(data\corpsec\cqcred_co.paa)};
};
class GHELMET(CorpCQCMVisorRed): GHELMET(CorpCQCMVisor)
{
    displayName = "CorpSec CQCM Visor Helmet (Red)";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqcred_co.paa),"",QPATHTOF(data\corpsec\cqcred_co.paa)};
};
class GHELMET(CorpCQCMGrey): GHELMET(CorpCQCM)
{
    displayName = "CorpSec CQCM Helmet (Grey)";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqcgrey_co.paa),"",""};
};
class GHELMET(CorpCQCMAltGrey): GHELMET(CorpCQCMAlt)
{
    displayName = "CorpSec CQCM Mask Helmet (Grey)";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqcgrey_co.paa),QPATHTOF(data\corpsec\cqcgrey_co.paa),""};
};
class GHELMET(CorpCQCMFullGrey): GHELMET(CorpCQCMFull)
{
    displayName = "CorpSec CQCM Mask + Visor Helmet (Grey)";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqcgrey_co.paa),QPATHTOF(data\corpsec\cqcgrey_co.paa),QPATHTOF(data\corpsec\cqcgrey_co.paa)};
};
class GHELMET(CorpCQCMVisorGrey): GHELMET(CorpCQCMVisor)
{
    displayName = "CorpSec CQCM Visor Helmet (Grey)";
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\cqcgrey_co.paa),"",QPATHTOF(data\corpsec\cqcgrey_co.paa)};
};

class GVAR(corpcap): H_ParadeDressCap_01_base_F
{
    scope = 2;
    scopeCurator = 2;
    author = AUTHOR;
    displayName = "Corpsec Security Forces Cap";
    hiddenSelections[] = {"camo"};
    hiddenSelectionsTextures[] = {QPATHTOF(data\corpsec\DressCap_CO.paa)};
};

