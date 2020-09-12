// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


//Fin

#define fin_u ["FDF_fat_m05_worn","FDF_fat_rs_m05_worn"]
#define fin_v ["FDF_VEST_11","FDF_VEST_12"]
#define fin_h ["FDF_hel_m05","FDF_hel_m05_worn"]
#define fin_g ["","CUP_G_ESS_BLK","CUP_G_Oakleys_Clr"]


kit_fin_pl = [
	["<EQUIPEMENT >>  ",fin_u,fin_v,"tf_rt1523g_bwmod","FDF_beret_border","CUP_G_PMC_RadioHeadset"],
	["<PRIMARY WEAPON >>  ","hlc_rifle_RK62_ris","hlc_30Rnd_762x39_b_ak_Valmet",["CUP_muzzle_snds_KZRZP_AK762","KA_ANPEQ15_Black_IR","CUP_optic_ACOG2_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["hlc_30Rnd_762x39_m_ak_Valmet",7],["HANDGUN MAG",1],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["SmokeShell",2],["SmokeShellGreen",2]]]
];

kit_fin_sl = [
	["<EQUIPEMENT >>  ",fin_u,fin_v,"tf_rt1523g_bwmod",fin_h,fin_g],
	["<PRIMARY WEAPON >>  ","hlc_rifle_RK62_ris","hlc_30Rnd_762x39_b_ak_Valmet",["CUP_muzzle_snds_KZRZP_AK762","KA_ANPEQ15_Black_IR","CUP_optic_ACOG2_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["hlc_30Rnd_762x39_m_ak_Valmet",7],["HANDGUN MAG",1],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["SmokeShell",2],["SmokeShellGreen",2]]]
];

kit_fin_ftl = [
	["<EQUIPEMENT >>  ",fin_u,fin_v,"B_Kitbag_rgr",fin_h,fin_g],
	["<PRIMARY WEAPON >>  ","hlc_rifle_RK62_ris","hlc_30Rnd_762x39_b_ak_Valmet",["CUP_muzzle_snds_KZRZP_AK762","KA_ANPEQ15_Black_IR","CUP_optic_ACOG2_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["hlc_30Rnd_762x39_m_ak_Valmet",7],["HANDGUN MAG",1],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["ACE_Clacker",1],["SmokeShell",2],["SmokeShellGreen",2],["DemoCharge_Remote_Mag",2]]]
];

kit_fin_ar = [
	["<EQUIPEMENT >>  ",fin_u,"FDF_VEST_11","B_Kitbag_rgr",fin_h,fin_g],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKMN","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["CUP_muzzle_snds_KZRZP_PK","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",1],["HandGrenade",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_fin_gr = [
	["<EQUIPEMENT >>  ",fin_u,fin_v,"B_Kitbag_rgr",fin_h,fin_g],
	["<PRIMARY WEAPON >>  ","hlc_rifle_RK62_ris","hlc_30Rnd_762x39_b_ak_Valmet",["CUP_muzzle_snds_KZRZP_AK762","","CUP_optic_CompM2_low",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M441_HE",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["hlc_30Rnd_762x39_m_ak_Valmet",7]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_M203",10],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2]]]
];

kit_fin_r = [
	["<EQUIPEMENT >>  ",fin_u,"FDF_VEST_11","B_Kitbag_rgr",fin_h,fin_g],
	["<PRIMARY WEAPON >>  ","hlc_rifle_RK62_ris","hlc_30Rnd_762x39_b_ak_Valmet",["CUP_muzzle_snds_KZRZP_AK762","","CUP_optic_CompM2_low",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_NLAW_Loaded","CUP_NLAW_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",1],["HandGrenade",2],["hlc_30Rnd_762x39_m_ak_Valmet",7]]],
	["<BACKPACK ITEMS >> ",[["ACE_Clacker",1],["DemoCharge_Remote_Mag",2]]]
];

kit_fin_medic = [
	["<EQUIPEMENT >>  ",fin_u,"FDF_VEST_11","B_Kitbag_rgr",fin_h,""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_RK62_ris","hlc_30Rnd_762x39_b_ak_Valmet",["CUP_muzzle_snds_KZRZP_AK762","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",1],["HandGrenade",1],["hlc_30Rnd_762x39_m_ak_Valmet",5]]],
	["<BACKPACK ITEMS >> ",[["ACE_personalAidKit",4],["ACE_surgicalKit",1],["ACE_elasticBandage",20],["ACE_fieldDressing",20],["ACE_packingBandage",10],["ACE_quikclot",20],["ACE_morphine",5],["ACE_epinephrine",5],["ACE_tourniquet",10]]]
];

cargo_kit_ammo_cargo = [
	[["CUP_launch_NLAW_Loaded",2]],
	[["hlc_30Rnd_762x39_m_ak_Valmet",50],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",20],["CUP_1Rnd_HE_M203",30],["HandGrenade",10],["DemoCharge_Remote_Mag",4]],
	[["ACE_Clacker",2]],
	[]
];

cargo_kit_aid_cargo = [
	[],
	[],
	[["ACE_fieldDressing",60],["ACE_packingBandage",60],["ACE_elasticBandage",60],["ACE_tourniquet",30],["ACE_quikclot",60],["ACE_morphine",20],["ACE_epinephrine",20]],
	[]
];


//rus

#define rus_u ["CUP_U_O_RUS_EMR_gloves_pads","CUP_U_O_RUS_EMR_1","CUP_U_O_RUS_EMR_rolled_up_gloves_pads","CUP_U_O_RUS_EMR_2"]
#define rus_v ["CUP_V_RUS_6B45_1","CUP_V_RUS_6B45_2","CUP_V_RUS_6B45_3"]
#define rus_h ["CUP_H_RUS_6B47_headset_goggles","CUP_H_RUS_6B47_headset","CUP_H_RUS_6B47","CUP_H_RUS_6B47_SF"]

kit_rus_r = [
	["<EQUIPEMENT >>  ",rus_u,rus_v,"",rus_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M","CUP_30Rnd_545x39_AK74M_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_mg = [
	["<EQUIPEMENT >>  ",rus_u,rus_v,"CUP_B_AlicePack_OD",rus_h,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_Pecheneg","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Rook40_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_rus_gr = [
	["<EQUIPEMENT >>  ",rus_u,rus_v,"",rus_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M_GL","CUP_30Rnd_545x39_AK74M_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Rook40_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["CUP_1Rnd_HE_GP25_M",8],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_ar = [
	["<EQUIPEMENT >>  ",rus_u,rus_v,"",rus_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74M_top_rail","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Rook40_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_rpg26 = [
	["<EQUIPEMENT >>  ",rus_u,rus_v,"",rus_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M","CUP_30Rnd_545x39_AK74M_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_mm = [
	["<EQUIPEMENT >>  ",rus_u,rus_v,"",rus_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svds","CUP_10Rnd_762x54_SVD_M",["","","rhs_acc_pso1m21_svd",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Rook40_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_rop = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_EMR_gloves_pads","CUP_V_RUS_6B45_1","","CUP_H_RUS_6B47_headset_goggles",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M","CUP_30Rnd_545x39_AK74M_M",["","","CUP_optic_PechenegScope",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_crew = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_EMR_1","CUP_V_RUS_6B45_1","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74U","CUP_30Rnd_545x39_AK74M_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_rus_random = [
    "kit_rus_r","kit_rus_r"
    ,"kit_rus_gr"
    ,"kit_rus_mg"
    ,"kit_rus_ar","kit_rus_ar"
	,"kit_rus_mm"
	,"kit_rus_rpg26"
];