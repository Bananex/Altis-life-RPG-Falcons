/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/

private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			// Civils
			case 0: {_color = "Rouge";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Blanc";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Rouge";};
			case 5: {_color = "Bleu / Blanc"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Police"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Medic"};
			case 10: {_color = "Rouge";};
			case 11: {_color = "Jaune";};
			case 12: {_color = "Blanc";};
			case 13: {_color = "Bleu";};
			case 14: {_color = "Rouge";};
			case 15: {_color = "Bleu / Blanc"};
			case 16: {_color = "Taxi"};
			case 17: {_color = "RedBull"};
			case 18: {_color = "Rock"};
			case 19: {_color = "RedBull"};
			case 20: {_color = "Rock"};
		};
	};
	
	case "B_G_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = " Rebelleel";};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Vert";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Jaune";};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Gris"};
			case 7: {_color = "Noir"};
			case 8: {_color = "Police"};
			case 9: {_color = "Beige";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Bleu";};
			case 12: {_color = "Bleu";};
			case 13: {_color = "Jaune";};
			case 14: {_color = "Blanc"};
			case 15: {_color = "Gris"};
			case 16: {_color = "Noir"};
			case 17: {_color = "Monster"};
			case 18: {_color = "Monster"};
			case 19: {_color = "RedBull"};
			
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rouge"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Noir / Blanc"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Vert"};
			case 6: {_color = "Police"};
			case 7: {_color = "Rouge"};
			case 8: {_color = "Bleu"};
			case 9: {_color = "Orange"};
			case 10: {_color = "Noir / Blanc"};
			case 11: {_color = "Tan"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Monster"};
			case 14: {_color = "Monster"};
			case 15: {_color = "RedBull"};
			case 16: {_color = "RedBull"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Police";};
			case 2: {_color = "Argent";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Banalisé";};
			case 5: {_color = "Medic";};
			case 6: {_color = "Rouge";};
			case 7: {_color = "Argent";};
			case 8: {_color = "Orange";};
			case 9: {_color = "Camo";};
			case 10: {_color = "Poly";};
			case 11: {_color = "Poly";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Blanc"};
			case 3: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Blanc"};
			case 3: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brun"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Bleu"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Digi Vert"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = " Rebelle Camo"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Bleu"};
			case 11: {_color = "Rouge"};
			case 12: {_color = "Blanc"};
			case 13: {_color = "Digi Vert"};
			case 14: {_color = "Hunter Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Civils Bleu"};
			case 3: {_color = "Civils Rouge"};
			case 4: {_color = "Digi Vert"};
			case 5: {_color = "Bleuline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Bleu"};
			case 9: {_color = "Speedy Rouge"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Bleu"};
			case 13: {_color = "Rebelle Digital"};
			case 14: {_color = "Medic"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Blanc / Bleu"};
			case 2: {_color = "Digi Vert"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "Medic"};
			case 5: {_color = "Police"};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police";};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
			case 1: {_color = "Police2"};
			case 2: {_color = "Noir"};
		};
	};
	
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sable"};
			case 1: {_color = "Jaune Orange"};
			case 2: {_color = "Gris Blanc"};
			case 3: {_color = "Vert Foret"};
			case 4: {_color = "Rouge Gris"};
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
			case 1: {_color = "Rebelle"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Police"};
		};
	};
	
	case "C_Boat_Civilsil_01_police_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
			case 0: {_color = "Gris"};
		};
	};
	
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
	
	case "O_Heli_Attack_02_Noir_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
};

_color;