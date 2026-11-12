/*
passed output from the function: A3A_Logistics_fnc_generateHardPoints
*/

/*
    Function: A3A_Logistics_fnc_generateHardPoints
    Author: [Håkon]
    [Description]
        Generates a rough node array for you based on the visual start and end of the intended cargo plane,
        in addition visual guides are rendered on screen to give you an idea of where it is relative to you.
        visuals last for 60 seconds.

        These are:
            Green dot   : start position of cargo plane (only visible if you can see the position)
            Red dot     : end position of cargo plane (only visible if you can see the position)
            white line  : cargo plane bounds
            white dots  : Node return positions

    Arguments:
    0. <Object> Vehicle your generating the nodes for
    1. <Array>  Model relativ position of cargo plane start position
    2. <Int>    The lenght of the cargo plane
    3. <Bool>   Return preped for model based definition instead of class based

    Return Value:
    <text> generated node class to be pasted in to the config

    Scope: Clients
    Environment: unscheduled
    Public: [Yes]
    Dependencies:

    Example: [cursorTarget, [0,-0.7,-0.7], 2.1] call A3A_Logistics_fnc_generateHardPoints;
*/

/*
example output
*/
class 3as_3AS_laat_LAATi_model_tcw_laat_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,2.6,0};
        };
        class Node2
        {
            offset[] = {0,1.8,0};
        };
        class Node3
        {
            offset[] = {0,1,0};
        };
        class Node4
        {
            offset[] = {0,0.2,0};
        };
        class Node5
        {
            offset[] = {0,-0.6,0};
        };
        class Node6
        {
            offset[] = {0,-1.4,0};
        };
    };
};

class 3AS_3AS_Republic_Heli_LAS_model_3AS_LAS_z6_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-2.4,-1};
        };
    };
};
class 3AS_3AS_Republic_Heli_LAS_model_3AS_LAS_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-2.4,-1};
        };
    };
};

class JMSLLTE_veh_gr_m_LIUV_LIUS : TRIPLES(ADDON,Nodes,Base)
{
    class Nodes
    {
        class Node1
        {
            offset[] = {0,1.6,0};
        };
    };
};
class JMSLLTE_veh_gr_m_ITT_ITTc : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.4,2};
        };
    };
};
class 3as_3AS_Rebel_Armor_PX10_Cav_model_3AS_PX10_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.8,2.4};
        };
        class Node2
        {
            offset[] = {0,-1.6,2.4};
        };
    };
};
class JMSLLTE_veh_air_m2_IDT_IDT_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,1.6,0};
        };
        class Node2
        {
            offset[] = {0,0.8,0};
        };
        class Node3
        {
            offset[] = {0,0,0};
        };
        class Node4
        {
            offset[] = {0,-0.8,0};
        };
        class Node5
        {
            offset[] = {0,-1.6,0};
        };
        class Node6
        {
            offset[] = {0,-2.4,0};
        };
        class Node7
        {
            offset[] = {0,-3.2,0};
        };
    };
};
class JMSLLTE_veh_air_m_Uwing_Uwing_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-2.4,1};
        };
        class Node2
        {
            offset[] = {0,-3.2,1};
        };
        class Node3
        {
            offset[] = {0,-4,1};
        };
        class Node4
        {
            offset[] = {0,-4.8,1};
        };
    };
};
class JMSLLTE_veh_gr_m_AA2_AA2 : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.4,1.5};
        };
        class Node2
        {
            offset[] = {0,-1.2,1.5};
        };
    };
};
class JMSLLTE_veh_gr_m_AA2_AA2_mk2 : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.4,0.7};
        };
        class Node2
        {
            offset[] = {0,-1.2,0.7};
        };
    };
};

class JMSLLTE_veh_gr_m_AA5_AA5 : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.4,1.3};
        };
        class Node2
        {
            offset[] = {0,-1.2,1.3};
        };
        class Node3
        {
            offset[] = {0,-2,1.3};
        };
        class Node4
        {
            offset[] = {0,-2.8,1.3};
        };
        class Node5
        {
            offset[] = {0,-3.6,1.3};
        };
    };
};
class JMSLLTE_veh_gr_m_AA5_AA5_mk2 : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.4,1.3};
        };
        class Node2
        {
            offset[] = {0,-1.2,1.3};
        };
        class Node3
        {
            offset[] = {0,-2,1.3};
        };
        class Node4
        {
            offset[] = {0,-2.8,1.3};
        };
        class Node5
        {
            offset[] = {0,-3.6,1.3};
        };
    };
};
class JMSLLTE_veh_gr_m_AA5_AA5_sup : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,0.6,1.3};
        };
        class Node2
        {
            offset[] = {0,-0.2,1.3};
        };
        class Node3
        {
            offset[] = {0,-1,1.3};
        };
        class Node4
        {
            offset[] = {0,-1.8,1.3};
        };
        class Node5
        {
            offset[] = {0,-2.6,1.3};
        };
        class Node6
        {
            offset[] = {0,-3.4,1.3};
        };
    };
};
class JMSLLTE_veh_gr_m_landspeeders_g17 : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.1,-0.1};
        };
    };
};
class JMSLLTE_veh_gr_m_landspeeders_v35c : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.1,-0.1};
        };
        class Node2
        {
            offset[] = {0,-1.9,-0.1};
        };
    };
};
class 3AS_3AS_Imperial_Air_Gozanti_model_3AS_Gozanti_Class_Cruiser_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,2.6,-3.5};
        };
        class Node2
        {
            offset[] = {0,1.8,-3.5};
        };
        class Node3
        {
            offset[] = {0,1,-3.5};
        };
        class Node4
        {
            offset[] = {0,0.2,-3.5};
        };
        class Node5
        {
            offset[] = {0,-0.6,-3.5};
        };
        class Node6
        {
            offset[] = {0,-1.4,-3.5};
        };
        class Node7
        {
            offset[] = {0,-2.2,-3.5};
        };
        class Node8
        {
            offset[] = {0,-3,-3.5};
        };
        class Node9
        {
            offset[] = {0,-3.8,-3.5};
        };
        class Node10
        {
            offset[] = {0,-4.6,-3.5};
        };
        class Node11
        {
            offset[] = {0,-5.4,-3.5};
        };
    };
};
class 3as_3as_Starships_model_Republic_Transport_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,8.6,-4.2};
        };
        class Node2
        {
            offset[] = {0,7.8,-4.2};
        };
        class Node3
        {
            offset[] = {0,7,-4.2};
        };
        class Node4
        {
            offset[] = {0,6.2,-4.2};
        };
        class Node5
        {
            offset[] = {0,5.4,-4.2};
        };
        class Node6
        {
            offset[] = {0,4.6,-4.2};
        };
        class Node7
        {
            offset[] = {0,3.8,-4.2};
        };
        class Node8
        {
            offset[] = {0,3,-4.2};
        };
        class Node9
        {
            offset[] = {0,2.2,-4.2};
        };
        class Node10
        {
            offset[] = {0,1.4,-4.2};
        };
        class Node11
        {
            offset[] = {0,0.6,-4.2};
        };
        class Node12
        {
            offset[] = {0,-0.2,-4.2};
        };
        class Node13
        {
            offset[] = {0,-1,-4.2};
        };
        class Node14
        {
            offset[] = {0,-1.8,-4.2};
        };
        class Node15
        {
            offset[] = {0,-2.6,-4.2};
        };
        class Node16
        {
            offset[] = {0,-3.4,-4.2};
        };
        class Node17
        {
            offset[] = {0,-4.2,-4.2};
        };
        class Node18
        {
            offset[] = {0,-5,-4.2};
        };
        class Node19
        {
            offset[] = {0,-5.8,-4.2};
        };
        class Node20
        {
            offset[] = {0,-6.6,-4.2};
        };
        class Node21
        {
            offset[] = {0,-7.4,-4.2};
        };
        class Node22
        {
            offset[] = {0,-8.2,-4.2};
        };
        class Node23
        {
            offset[] = {0,-9,-4.2};
        };
        class Node24
        {
            offset[] = {0,-9.8,-4.2};
        };
        class Node25
        {
            offset[] = {0,-10.6,-4.2};
        };
        class Node26
        {
            offset[] = {0,-11.4,-4.2};
        };
        class Node27
        {
            offset[] = {0,-12.2,-4.2};
        };
    };
};
class JMSLLTE_veh_gr_m_skiff_banthaSkiff_armed : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,0.6,-0.7};
        };
        class Node2
        {
            offset[] = {0,-0.2,-0.7};
        };
        class Node3
        {
            offset[] = {0,-1,-0.7};
        };
        class Node4
        {
            offset[] = {0,-1.8,-0.7};
        };
    };
};
class JMSLLTE_veh_gr_m_skiff_banthaSkiff : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,1.6,0};
        };
        class Node2
        {
            offset[] = {0,0.8,0};
        };
        class Node3
        {
            offset[] = {0,0,0};
        };
        class Node4
        {
            offset[] = {0,-0.8,0};
        };
    };
};
