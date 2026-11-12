class CfgFunctions
{
    class A3A
    {
        class CREATE
        {
            class createAttackForceOrbital
            {
                file = QPATHTOF(functions\CREATE\fn_createAttackForceOrbital.sqf);
            };
        };
        class Supports
        {
            class SUP_QRFCAPITAL
            {
                file = QPATHTOF(functions\Supports\fn_SUP_QRFCAPITAL.sqf);
            };
            class SUP_QRFCAPITALAvailable
            {
                file = QPATHTOF(functions\Supports\fn_SUP_QRFCAPITALAvailable.sqf);
            };
            class SUP_QRFCAPITALLINGER
            {
                file = QPATHTOF(functions\Supports\fn_SUP_QRFCAPITALLINGER.sqf);
            };
            class SUP_QRFCAPITALLINGERAvailable
            {
                file = QPATHTOF(functions\Supports\fn_SUP_QRFCAPITALLINGERAvailable.sqf);
            };
            class capitalQRF
            {
                file = QPATHTOF(functions\Supports\fn_capitalQRF.sqf);
            };
            class capitalDropPod
            {
                file = QPATHTOF(functions\Supports\fn_capitalDropPod.sqf);
            };
            class initCapitalSettings
            {
                file = QPATHTOF(functions\Supports\fn_initCapitalSettings.sqf);
                preInit = 1;
            };
            class initSupports
            {
                file = QPATHTOF(functions\Supports\fn_initSupports.sqf);
            };
        };
    };
};
