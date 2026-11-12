class 3AS_Sullust {
	population[] = {
		{"town1",154},{"town2",371},{"town3",136},{"town4",95},{"town5",115},{"town6",309},{"town7",122}
	};
	disabledTowns[] = {"quarry"}; 
	antennas[] = {
		{14451.5,16338,0.000354767}, {15346.7,15894,-3.8147e-005}, {16085.1,16998,7.08781}, {17856.7,11734.1,0.863045}, {9496.2,19318.5,0.601898}, {9222.87,19249.1,0.0348206}, {20944.9,19280.9,0.201118}, {20642.7,20107.7,0.236603}, {18709.3,10222.5,0.716034}, {6840.97,16163.4,0.0137177}, {19319,9716.22,0.442627}, {19351.9,9693.04,0.639175}, {10317.3,8704.65,0.117233}, {8268.76,10051.6,0.0100708}, {4583.61,15401.1,0.262543},{4555.65,15383.2,0.0271606}, {4263.82,20664.1,-0.0102234}, {26274.6,22188.1,0.0139847}, {26455.4,22166.3,0.0223694},{7885.09,14628.1,0}
	};
	antennasBlacklistIndex[] = {4,10,12,15,17};
	banks[] = {
		{16586.6,12834.5,-0.638584},{16545.8,12784.5,-0.485485},{16633.3,12807,-0.635017},{3717.34,13391.2,-0.164862},{3692.49,13158.3,-0.0462074},{3664.31,12826.5,-0.379545},{3536.99,13006.6,-0.508585},{3266.42,12969.9,-0.549738}
	};
	garrison[] = {
		{},{"outpost_24", "factory_7", "factory_5","airport_2", "seaport_4", "outpost_5", "outpost_6", "milbase_4", "control_52", "control_33"},{},{"control_52","control_33"}
	};
	fuelStationTypes[] = {
		"Land_FuelStation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F"
	};
	milAdministrations[] = {
		{3648.51,13196.9,0},{9282.15,12145.9,0},{11327,14143.8,0},{16698.1,12790.1,0},{18387.5,15241.4,0},{25671,21343.1,0},{21000.4,16983.9,-0.396477}
	};
	climate = "arid";
	buildObjects[] = {
		// Large vanilla arid structures
		{"Land_BagBunker_Large_F", 300}, {"Land_BagBunker_Tower_F", 300}, {"Land_BagBunker_Small_F", 60},
		{"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140},
		// Vanilla arid sandbag walls
		{"Land_BagFence_Long_F", 10}, {"Land_BagFence_Round_F", 10}, {"Land_BagFence_Short_F", 10},
		// Non-camo vanilla stuff
		{"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
		{"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
	};
};
