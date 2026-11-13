class Params
{
    class AllParams; // this line is aboslutely necessary
    class ExtenderParams; // this line is aboslutely necessary
    class AGDParams: ExtenderParams // this class is the base class for all of your params
    {
        title = "A Galaxy Divided";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class A3UE_RebelCloneArmorType: AGDParams
    {
        title = "[AGD] Clone Armor Style";
        tooltip = "Select which mod's clone armor variants should be used for the Galactic Republic";
        values[] = {0, 1, 2, 3, 4};
        texts[] = {
            "JLTS",
            "LS - Phase I",
            "LS - Phase II",
            "LS - New Phase II",
            "3AS"
        };
        default = 0;
        lockInGame = 1;
        lockOnSave = 1;
    };

    class RebelCloneArmorExtenderSpacer: AllParams {};};