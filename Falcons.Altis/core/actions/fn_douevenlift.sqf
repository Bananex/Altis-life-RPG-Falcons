/*

File: douevenlift.sqf
Author: Dexter, feel free to modify

Description:
simple fitness center

*/

_price = 2500;

if(life_cash < _price) exitWith {hint "Tu n'as pas assez d'argent!";};
if(life_hunger < 50) exitWith {hint "Vous devriez manger quelque chose avant de commencer à vous entraîner!";};
if(life_thirst < 50) exitWith {hint "Vous devriez boire quelque chose avant de commencer à vous entraîner!";};

life_cash = life_cash - _price;
life_thirst = life_thirst - 30;
life_hunger = life_hunger - 30;
[] call life_fnc_hudUpdate;
player setFatigue 0;
	[] spawn
		{
			life_redgull_effect = time;
			titleCut ["", "BLACK FADED", 999];
			titleText["Formation ...","PLAIN"];
			sleep 3;
			titlecut [" ","BLACK IN",3];
			titleText["Après votre formation vous avez un peu faim et soif.","PLAIN"];
			player enableFatigue false;
			waitUntil {!alive player OR ((time - life_redgull_effect) > (10 * 60))};
			player enableFatigue true;
		};