/*
	Macro: ERROR_WITH_TITLE()

	Parameters:
	0: CLASSNAME - Classname of item
	1: PRICE - Default item price
	2: STOCK - Default item stock
__________________________________________________________________*/
#define ITEM(CLASSNAME, PRICE, STOCK)\
	class CLASSNAME {\
		price = PRICE;\
		stock = STOCK;\
	}

#define MAGAZINE_STOCK 200
#define LAUNCHER_STOCK 15
#define PISTOL_STOCK 50
#define RIFLE_STOCK 20
#define MZ_STOCK 50
#define NN_STOCK 50
#define PN_STOCK 25
#define MISC_STOCK 50

class cfgHALsStore 
{
	class categories 
	{
		#include "config\Gear.hpp"
	};

	class stores 
	{
		class optre
		{
			categories[] = {};
		};
		class emp
		{
			categories[] = {};
		};
		class AGD_KND_stock
		{
			displayName = "KND Weaponry";
			categories[] = {
				"MandalorianBackpacksKND",
				"handgunsKND",
				"meleeKND",
				"riflesKND",
				"sniperRiflesKND",
				"mgKND",
				"specialKND",
				"launchersKND",
				"specialMagazinesKND",
				"launcherMagazinesKND",
				"navigationKND",
				"opticsKND",
				"magazinesKND",
				"miscKND"
			};
		};
	};
};
