#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_Rangemaster",nil,25];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt",nil,350];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["U_Marshal",nil,550];
			_ret pushBack ["U_B_CombatUniform_mcam_vest",nil,1500];
			_ret pushBack ["U_B_CombatUniform_mcam",nil,1500];
			_ret pushBack ["U_B_CombatUniform_mcam_worn",nil,1500];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_HelmetB_plain_mcamo",nil,75];
			_ret pushBack ["H_Booniehat_mcamo",nil,120];
			_ret pushBack ["H_Cap_police",nil,120];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_HelmetB_snakeskin",nil,120];
		};
		
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["H_Beret_Colonel",nil,120];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["H_Beret_02",nil,120];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["H_Beret_blk",nil,120];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Bandanna_khk",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_TacVest_blk_POLICE",nil,800];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_TacVestIR_blk",nil,800];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["V_PlateCarrierIAGL_dgtl",nil,900];
			_ret pushBack ["V_RebreatherIA",nil,1000];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500],
			["B_Carryall_oucamo",nil,6000]
		];
	};
};


_ret;