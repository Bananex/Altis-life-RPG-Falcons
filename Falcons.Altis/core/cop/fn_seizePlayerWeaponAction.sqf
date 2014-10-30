/*
	File: fn_seizePlayerWeaponAction.sqf
	Author: Skalicon
	
	Description:
	Removes the players weapons client side
*/
removeAllWeapons player;
[] call life_fnc_civFetchGear;
[] call life_fnc_sessionUpdate;
[] call life_fnc_civLoadGear;
titleText["Vos armes ont été saisis.","PLAIN"];