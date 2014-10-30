/*
	File: fn_equipGear.sqf
	Author: Pepitas "VTL" VTL-Team

	Description:
	Initializes custom gear textures
*/

if (playerSide == west) then {
	if ((uniform player) == "U_Rangemaster") then
	{
		player setObjectTextureGlobal [0, "skins\homme\police\recrue.jpg"];
	};
	if ((uniform player) == "U_B_CombatUniform_mcam_vest") then
	{
		player setObjectTextureGlobal [0, "skins\homme\police\police_uniforme.jpg"];
	};
	if ((uniform player) == "U_B_CombatUniform_mcam") then
	{
		player setObjectTextureGlobal [0, "skins\homme\police\sek.jpg"];
	};
	if ((uniform player) == "U_B_CombatUniform_mcam_worn") then
	{
		player setObjectTextureGlobal [0, "skins\homme\police\gsg9.paa"];
	};
};