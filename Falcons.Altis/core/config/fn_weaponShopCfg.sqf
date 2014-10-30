#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};

	case "cop_officier":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 2): {"Tu n'es pas un Officier!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["SMG_01_F",nil,50000],
						["30Rnd_45ACP_Mag_SMG_01",nil,125],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],						
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
	
		case "cop_caporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 3): {"Tu n'es pas un Sergent!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["arifle_MX_GL_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_Black_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],	
						["optic_Nightstalker",nil,750],	
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
	
	case "cop_caporalchef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 4): {"Tu n'es pas un Officier!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_GL_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_Black_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["LMG_Mk200_F",nil,150000],
						["200Rnd_65x39_cased_Box",nil,2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],	
						["optic_Nightstalker",nil,750],	
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
	
	case "cop_adjudant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 5): {"Tu n'es pas un Officier!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_Black_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["LMG_Mk200_F",nil,150000],
						["200Rnd_65x39_cased_Box",nil,2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],	
						["optic_Nightstalker",nil,750],	
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
	
	case "cop_adjudantchef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 6): {"Tu n'es pas un Officier!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
					
						["arifle_MX_SW_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_SW_Black_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_Black_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["LMG_Mk200_F",nil,150000],
						["200Rnd_65x39_cased_Box",nil,2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],	
						["optic_Nightstalker",nil,750],	
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
	
	
	
	case "cop_souslieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 8): {"Tu n'es pas un Officier!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["srifle_LRR_camo_F",nil,250000],
						["srifle_LRR_F",nil,250000],
						["7Rnd_408_Mag",nil,3000],
						["arifle_MX_SW_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_SW_Black_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_Black_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["LMG_Mk200_F",nil,150000],
						["200Rnd_65x39_cased_Box",nil,2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_SOS",nil,750],	
						["optic_LRPS",nil,750],	
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],	
						["optic_Nightstalker",nil,750],	
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};

	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 9): {"Tu n'es pas un Lieutenant!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["LMG_Zafir_F",nil,250000],
						["150Rnd_762x51_Box",nil,5000],
						["srifle_LRR_camo_F",nil,250000],
						["srifle_LRR_F",nil,250000],
						["7Rnd_408_Mag",nil,3000],
						["arifle_MX_SW_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_SW_Black_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_Black_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["LMG_Mk200_F",nil,150000],
						["200Rnd_65x39_cased_Box",nil,2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_SOS",nil,750],	
						["optic_LRPS",nil,750],	
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],	
						["optic_Nightstalker",nil,750],	
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
	
	case "cop_capitaine":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 10): {"Tu n'es pas un Capitaine!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_F",nil,150000],
						["30Rnd_9x21_Mag",nil,2000],
						["LMG_Zafir_F",nil,250000],
						["150Rnd_762x51_Box",nil,5000],
						["srifle_LRR_camo_F",nil,250000],
						["srifle_LRR_F",nil,250000],
						["7Rnd_408_Mag",nil,3000],
						["arifle_MX_SW_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_SW_Black_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_Black_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["LMG_Mk200_F",nil,150000],
						["200Rnd_65x39_cased_Box",nil,2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_SOS",nil,750],	
						["optic_LRPS",nil,750],	
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],	
						["optic_Nightstalker",nil,750],	
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
	
	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 7): {"Tu n'es pas un Officier!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_TRG21_F",nil,150000],
						["30Rnd_556x45_Stanag",nil,2000],
						["arifle_TRG21_GL_F",nil,150000],
						["30Rnd_556x45_Stanag",nil,2000],
						["SMG_02_F",nil,150000],
						["30Rnd_9x21_Mag",nil,2000],
						["LMG_Zafir_F",nil,250000],
						["150Rnd_762x51_Box",nil,5000],
						["srifle_LRR_camo_F",nil,250000],
						["srifle_LRR_F",nil,250000],
						["7Rnd_408_Mag",nil,3000],
						["arifle_MX_SW_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_SW_Black_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_Black_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["LMG_Mk200_F",nil,150000],
						["200Rnd_65x39_cased_Box",nil,2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_SOS",nil,750],	
						["optic_LRPS",nil,750],	
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],	
						["optic_Nightstalker",nil,750],	
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
	
	case "cop_commandant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n'es pas un Policier"};
			case (__GETC__(life_coplevel) < 11): {"Tu n'es pas un Commandant!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["arifle_TRG21_F",nil,150000],
						["30Rnd_556x45_Stanag",nil,2000],
						["arifle_TRG21_GL_F",nil,150000],
						["30Rnd_556x45_Stanag",nil,2000],
						["SMG_02_F",nil,150000],
						["30Rnd_9x21_Mag",nil,2000],
						["LMG_Zafir_F",nil,250000],
						["150Rnd_762x51_Box",nil,5000],
						["srifle_LRR_camo_F",nil,250000],
						["srifle_LRR_F",nil,250000],
						["7Rnd_408_Mag",nil,3000],
						["arifle_MX_SW_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_SW_Black_F",nil,110000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MX_GL_Black_F",nil,70000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["LMG_Mk200_F",nil,150000],
						["200Rnd_65x39_cased_Box",nil,2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_Signal_F","Arme de secours",20000],
						["6Rnd_GreenSignal_F","Munitions de secours",125],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_P07_F",nil,7500],
						["30Rnd_9x21_Mag",nil,100],
						["muzzle_snds_L",nil,650],
						["hgun_PDW2000_F","PDW",40000],
						["16Rnd_9x21_Mag",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_SOS",nil,750],	
						["optic_LRPS",nil,750],	
						["optic_tws",nil,750],
						["optic_tws_mg",nil,750],
						["optic_NVS",nil,750],
						["optic_Aco",nil,750],
						["optic_ACO_grn",nil,750],
						["optic_Aco_smg",nil,750],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,750],
						["optic_DMS",nil,750],
						["optic_Holosight",nil,750],
						["optic_Holosight_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_Hamr",nil,750],	
						["optic_Nightstalker",nil,750],	
						["NVGoggles",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
                        ["arifle_Katiba_C_F",nil,65000],
						["30Rnd_65x39_caseless_green",nil,500],
                        ["arifle_Katiba_F",nil,65000],
						["30Rnd_65x39_caseless_green",nil,500],
                        ["srifle_GM6_F",nil,250000],
						["5Rnd_127x108_Mag",nil,500],
						["srifle_GM6_camo_F",nil,250000],
						["5Rnd_127x108_Mag",nil,500],
						["srifle_EBR_F",nil,70000],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_Mk20_plain_F",nil,80000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Mk20_F",nil,80000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Mk20C_plain_F",nil,90000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Mk20C_F",nil,90000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_MXM_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_MXM_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_MXC_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_MXC_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["srifle_DMR_01_F",nil,90000],
						["10Rnd_762x51_Mag",nil,500],
						["arifle_SDAR_F",nil,55000],
						["30Rnd_556x45_Stanag",nil,300],
						["SMG_02_F",nil,100000],
						["30Rnd_9x21_Mag",nil,500],
						["arifle_TRG20_F",nil,95000],
						["30Rnd_556x45_Stanag",nil,500],
						["LMG_Zafir_F",nil,130000],
						["150Rnd_762x51_Box",nil,750],
						["hgun_PDW2000_F",nil,20000],
						["16Rnd_9x21_Mag",nil,250],
						["hgun_Pistol_heavy_01_F",nil,20000],
						["11Rnd_45ACP_Mag",nil,250],
						["hgun_ACPC2_F",nil,20000],
						["9Rnd_45ACP_Mag",nil,250],
						["hgun_Rook40_F",nil,20000],
						["16Rnd_9x21_Mag",nil,250],
						["hgun_Pistol_heavy_02_F",nil,20000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["optic_Aco",nil,4500],
						["optic_ACO_grn",nil,4500],
						["optic_Aco_smg",nil,4500],
						["optic_ACO_grn_smg",nil,4500],
						["optic_Arco",nil,6000],
						["optic_MRCO",nil,10000],
						["optic_DMS",nil,9500],
						["optic_Holosight",nil,5000],
						["optic_Holosight_smg",nil,6000],
						["optic_LRPS",nil,10000],
						["optic_Hamr",nil,7500],
						["optic_SOS",nil,10000],
                        ["optic_Nightstalker",nil,10000],
						["acc_flashlight",nil,1000],
                        ["muzzle_snds_H",nil,500],
                        ["muzzle_snds_H_MG",nil,500],
                        ["muzzle_snds_B",nil,500]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};

	case "donat":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_donat): {"You don't have a donator license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
                        ["arifle_Katiba_C_F",nil,65000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["ItemRadio","Cellphone",500]
					]
				];
			};
		};
	};
	
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300],
				["ItemRadio","Cellphone",500]
			]
		];
	};
};