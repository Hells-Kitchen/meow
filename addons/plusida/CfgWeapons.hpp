
class CfgWeapons{
	class IDA_A260;
	class GVAR(A260): IDA_A260 {
		baseWeapon = QGVAR(A260);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail_Mid{};
		};
	};
	class IDA_FA11;
	class GVAR(FA11): IDA_FA11 {
		baseWeapon = QGVAR(FA11);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail_Mid{};
		};
	};
	class IDA_Galaar90;
	class GVAR(Galaar90): IDA_Galaar90 {
		baseWeapon = QGVAR(Galaar90);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail_Long{};
			class UnderbarrelSlot: AGD_UnderBarrelSlot{};
		};
	};
	class IDA_IQA11;
	class GVAR(IQA11): IDA_IQA11 {
		baseWeapon = QGVAR(IQA11);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail_Long{};
			class UnderbarrelSlot: AGD_UnderBarrelSlot{};
		};
	};
	class IDA_M41;
	class GVAR(M41): IDA_M41 {
		baseWeapon = QGVAR(M41);
	};
	class IDA_SE28;
	class GVAR(SE28): IDA_SE28 {
		baseWeapon = QGVAR(SE28);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail{};
			class PointerSlot: AGD_PointerSlot{};
		};
	};
	class IDA_SPK12;
	class GVAR(SPK12): IDA_SPK12 {
		baseWeapon = QGVAR(SPK12);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail{};
			class PointerSlot: AGD_PointerSlot{};
		};
	};
	class IDA_T15;
	class GVAR(T15): IDA_T15 {
		baseWeapon = QGVAR(T15);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail{};
			class PointerSlot: AGD_PointerSlot{};
		};
	};
	class IDA_773Firepuncher;
	class GVAR(773Firepuncher): IDA_773Firepuncher {
		baseWeapon = QGVAR(773Firepuncher);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail_Long{};
			class PointerSlot: AGD_PointerSlot{};
			class UnderbarrelSlot: AGD_UnderBarrelSlot{};
		};
	};
	class IDA_774CX;
	class GVAR(774CX): IDA_774CX {
		baseWeapon = QGVAR(774CX);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail_Long{};
			class PointerSlot: AGD_PointerSlot{};
			class UnderbarrelSlot: AGD_UnderBarrelSlot{};
		};
	};
	class IDA_E22;
	class GVAR(E22): IDA_E22 {
		baseWeapon = QGVAR(E22);
		class WeaponSlotsInfo{
			allowedSlots[] = {901};
			mass = 55;
            class CowsSlot: AGD_Rail_Long{};
			class PointerSlot: AGD_PointerSlot{};
			class UnderbarrelSlot: AGD_UnderBarrelSlot{};
		};
	};
};