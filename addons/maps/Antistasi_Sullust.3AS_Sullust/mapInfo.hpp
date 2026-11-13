class 3AS_Sullust {
	//town1 - pirin
	//town2 - name = "Jubieck";
	//town3-  name = "Sarrano";
	//town4 -  name = "Byllend";
	//town5 -  name = "Ger'inn";
	//town6 -  name = "Fulluusub";
	//town7 -  name = "Gless Feen";
	population[] = {
		{"town1",85},{"town2",35},{"town3",93},{"town4",105},{"town5",55},{"town6",90},{"town7",400}
	};
	disabledTowns[] = {"quarry"}; 
	antennas[] = {
		{1964.31,2693.74,-0.395882},{3629.48,1644,1.09955},{688.05,2137.09,0},{273.393,579.463,0}
	};
	banks[] = {
		{4550.71,3644.31,9.53674e-07}
	};
	garrison[] = {
		{},{"milbase_1", "control_18", "control_19", "control_20", "control_21", "control_22", "control_23","outpost_7","resource_3","outpost_6"},{},{"control_52","control_33"}
	};
	fuelStationTypes[] = {
		"Land_3as_fuel_Silo","Land_3as_fuel_Silo_Yellow","Land_3as_fuel_Silo_Grey"
	};
	milAdministrations[] = {
		{1996.22,2785.54,7.62939e-06},{4352.43,3638.98,1.90735e-06},{11327,14143.8,0},{16698.1,12790.1,0},{18387.5,15241.4,0},{25671,21343.1,0},{21000.4,16983.9,-0.396477}
	};
	climate = "temperate";
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
