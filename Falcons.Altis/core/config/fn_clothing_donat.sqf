/*
	File: fn_clothing_donat.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Donator shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Donateur Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_Protagonist_VR",nil,50000],
			["U_O_Protagonist_VR",nil,50000],
			["U_B_Protagonist_VR",nil,50000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500]
		];
	};
};