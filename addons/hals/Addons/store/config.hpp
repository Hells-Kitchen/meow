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

#define MAGAZINE_STOCK 500
#define LAUNCHER_STOCK 65
#define PISTOL_STOCK 250
#define RIFLE_STOCK 200
#define MZ_STOCK 150
#define NN_STOCK 150
#define PN_STOCK 125
#define MISC_STOCK 1250

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
