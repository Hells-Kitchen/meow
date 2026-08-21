/*
	    This adds universal list of objects that would present on any map with any mod
*/

[] spawn {
	if (!hasInterface) exitWith {};

	waitUntil {
		!isNil "A3A_buildableObjects"
	};

	A3A_buildableObjects pushBack [
		"SW - Light sources",
		"3AS\3AS_Structures\Lights\EditorPreviews\land_3as_light_s_dome.jpg",
		[
			["Campfire_burning_F", 5],
			["land_3AS_light_s_cis", 15],
			["land_3AS_light_s_dome", 15],
			["land_3AS_light_s_small", 15],
			["land_3AS_light_s_tall", 15],
			["land_3AS_light_s_imp", 15],
			["land_3as_Imp_Light_Med", 25],
			["land_3as_Small_Platform_Light_Prop", 15],
			["land_3AS_light_s_reb", 15],
			["land_3as_Light_Prop", 35],
			["land_3AS_fob_light_reb_tall", 35],
			["3AS_FOB_Light_Tall_Prop", 35],
			["land_3AS_fob_light_cis", 35],
			["land_3AS_fob_light_reb_tall", 35]
		]
	];

	A3A_buildableObjects pushBack [
		"SW Fortifications - Walls",
		"3as\3as_Structures2\HBarriers\EditorPreviews\3as_HBarrier_Tower.jpg",
		[
			["land_3as_Dragonsteeth", 200],
			["land_3as_Dragonstooth", 25],
			["3AS_Barricade_Prop",25],
			["3AS_Barricade_2_C_Prop", 25],
			["3AS_Barricade_3_Prop", 25],
			["3AS_BoxBarricade1",50],
			["3AS_BoxBarricade2",50],
			["3AS_BoxBarricade3",50],
			["3AS_BoxBarricade4",50],
			["3AS_BoxBarricade5",50],
			["3AS_BoxBarricade6",50],
			["3AS_BoxBarricade7",50],
			["3AS_BoxBarricade8",50],
			["3as_hbarricade", 20],
			["land_3as_GuardShack", 100],
			["3as_hbarrier_1", 20],
			["3as_hbarrier_3",60],
			["3as_hbarrier_Ramp",15],
			["3as_hbarrierwall_1",75],
			["3as_hbarrierWall_4",140],
			["3as_hbarrierWall_corner3",160],
			["3as_hbarrierWall_cornerinv3",160],
			["land_3AS_Wall_Laser_v2_Imperial",65],
			["land_3AS_Wall_Laser_Door_v2_Imperial",65],
			["land_3AS_Wall_Laser_Corner_Imperial",65]
		]
	];
	A3A_buildableObjects pushBack [
		"SW Fortifications - Doors",
		"3AS\3AS_Props2\Doors\EditorPreviews\Land_3AS_Large_Door_1.jpg",
		[
			["Land_3AS_Small_Door_5",150],
			["Land_3AS_Small_Door_4",150],
			["Land_3AS_Small_Door_3",150],
			["Land_3AS_Small_Door_2",150],
			["Land_3AS_Small_Door_1",150],
			["Land_3AS_Medium_Door_1",400],
			["Land_3AS_Medium_Door_2",400],
			["Land_3AS_Medium_Door_3",400],
			["Land_3AS_Large_Door_1",1000]
		]
	];
	A3A_buildableObjects pushBack [
		"SW Decorations - Signs",
		"3as\3as_props2\Holosigns\EditorPreviews\3AS_holosign_toilet.jpg",
		[
			["3AS_holosign_ammo",5],
			["3AS_holosign_arrow",5],
			["3AS_holosign_credits",5],
			["3AS_holosign_engineering",5],
			["3AS_holosign_food",5],
			["3AS_holosign_hazard",5],
			["3AS_holosign_holo",5],
			["3AS_holosign_medical",5],
			["3AS_holosign_science",5],
			["3AS_holosign_sight",5],
			["3AS_holosign_toilet",5],
			["3AS_Sign_Stand_Pit_Ammo",10],
			["3AS_Sign_Stand_Triangle",10],
			["3AS_Sign_Triangle_Edge",10],
			["3AS_Sign_Octagon",10],
			["3AS_Sign_Stand_Pit_Medical",10],
			["3AS_Sign_Stand_Octagon_Medical",10],
			["3AS_Sign_Minefield_Marker",10],
			["3AS_Sign_Triangle",10],
			["3AS_Sign_Stand_Pit",10],
			["3AS_Sign_Stand_Octagon",10],
			["knd_jaro_holo",15],
			["knd_ral_holo",15]
		]
	];
	A3A_buildableObjects pushBack [
		"SW Decorations - Furniture",
		"3as\3as_props2\Furniture2\EditorPreviews\3AS_RD_Table.jpg",
		[
			["3AS_Bed_G",25],
			["3AS_Bed",25],
			["3AS_bench",25],
			["3AS_chair_s",25],
			["3AS_chair_sr",25],
			["3AS_chair_t",25],
			["3AS_Cy_Table",25],
			["3AS_hologame",25],
			["3AS_workbench_r1",25],
			["3AS_Desk",25],
			["3AS_bg_Table",25],
			["3AS_RD_Table",25],
			["3AS_sq_table",25],
			["3AS_sq_table_c",25],
			["3AS_stool",25],
			["3AS_Cupboard",25],
			["3AS_workbench_c",25],
			["3AS_workbench_r",25],
			["3AS_workbench",25],
			["3AS_workbench_s",25],
			["3AS_couch_double",25]
		]
	];
	A3A_buildableObjects pushBack [
		"SW - Storage",
		"3as\3as_props2\ShippingContainer\EditorPreviews\Land_3AS_Crate_Container_L_Wootini.jpg",
		[
			["3as_medium_crate_stack_1_prop",65],
			["3as_medium_crate_stack_2_prop",65],
			["3as_medium_crate_stack_3_prop",65],
			["Land_3AS_Crate_Container_S",125],
			["Land_3AS_Crate_Container_S_Black",125],
			["Land_3AS_Crate_Container_S_Green",125],
			["Land_3AS_Crate_Container_S_Blue",125],
			["Land_3AS_Crate_Container_S_Tan",125],
			["Land_3AS_Crate_Container_S_Red",125],
			["Land_3AS_Crate_Container_H",125],
			["Land_3AS_Crate_Container_H_Black",125],
			["Land_3AS_Crate_Container_H_Green",125],
			["Land_3AS_Crate_Container_H_Blue",125],
			["Land_3AS_Crate_Container_H_Tan",125],
			["Land_3AS_Crate_Container_H_Red",125]
		]
	];
	A3A_buildableObjects pushBack [
		"SW - Sounds",
		"3as\3as_props2\Holosigns\EditorPreviews\3AS_holosign_toilet.jpg",
		[
			["3AS_Cantina_Music",500],
			["3AS_DroidNightClub",500]
		]
	];
};
