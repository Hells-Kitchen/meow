class CfgVehicles
{
    class A3A_zeus_Module_Support_Base;
    class A3A_zeus_Module_Support_Occupants_QRFLand: A3A_zeus_Module_Support_Base{
        class arguments;
    };
    class A3A_zeus_Module_Support_Invaders_QRFLand: A3A_zeus_Module_Support_Base{
        class arguments;
    };
    class AGD_Module_Support_Occupants_QRFCapital : A3A_zeus_Module_Support_Occupants_QRFLand
    {
        displayName = "QRF Capital Ship (Munificent)";
        class arguments : arguments
        {
            type = "QRFCAPITAL";
        };
    };
    class AGD_Module_Support_Invaders_QRFCapital : A3A_zeus_Module_Support_Invaders_QRFLand
    {
        displayName = "QRF Capital Ship (Munificent)";
        class arguments : arguments
        {
            type = "QRFCAPITAL";
        };
    };
    class AGD_Module_Support_Occupants_QRFCapitalLinger : AGD_Module_Support_Occupants_QRFCapital
    {
        displayName = "QRF Capital Ship - Lingering (Munificent)";
        class arguments : arguments
        {
            type = "QRFCAPITALLINGER";
        };
    };
    class AGD_Module_Support_Invaders_QRFCapitalLinger : AGD_Module_Support_Invaders_QRFCapital
    {
        displayName = "QRF Capital Ship - Lingering (Munificent)";
        class arguments : arguments
        {
            type = "QRFCAPITALLINGER";
        };
    };
};
