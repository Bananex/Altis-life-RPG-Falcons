#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		
		if(__GETC__(life_medicLevel) > 1) then
		{
		_return pushBack ["C_Offroad_01_F",10000];
		};
		if(__GETC__(life_medicLevel) > 2) then
		{
			_return pushBack ["C_SUV_01_F",20000];
			_return pushBack ["I_Truck_02_medical_F",40000];
			_return pushBack ["O_Truck_03_medical_F",50000];
			_return pushBack ["B_Truck_01_medical_F",60000];
		};
	};
	
	case "med_air_hs": {
		
		if(__GETC__(life_medicLevel) > 2) then
		{
			_return pushBack ["B_Heli_Light_01_F",100000];
		};	
	
	if(__GETC__(life_medicLevel) > 3) then
		{
			_return pushBack ["O_Heli_Light_02_unarmed_F",200000];
		};
	};	
	
	case "civ_car":
	{
		_return = 
		[
			["C_Hatchback_01_F",15500],
			["C_Hatchback_01_sport_F",125000],
			["C_Offroad_01_F",35500],
			["C_SUV_01_F",75000],
			["C_Van_01_transport_F",80000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",90000],
			["I_Truck_02_transport_F",100000],
			["I_Truck_02_covered_F",150000],
			["B_Truck_01_transport_F",300000],
			["O_Truck_03_transport_F",300000],
			["O_Truck_03_covered_F",400000],
			["O_Truck_03_device_F",500000],
			["B_Truck_01_box_F",750000]	
		];	
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",50000],
			["B_G_Offroad_01_F",12500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",60000],
			["C_Van_01_box_F",90000],
			["I_Truck_02_transport_F",100000],
			["I_Truck_02_covered_F",150000],
			["B_Truck_01_transport_F",300000],
			["O_Truck_03_transport_F",300000],
			["O_Truck_03_covered_F",400000],
			["O_Truck_03_device_F",500000],
			["B_Truck_01_box_F",750000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack ["O_MRAP_02_F",225000];
			_return pushBack ["I_MRAP_03_F",550000];
			_return pushBack ["B_G_Offroad_01_armed_F",500000];
			_return pushBack ["I_Truck_02_fuel_F",800000];
			_return pushBack ["B_Heli_Light_01_F",450000];
			_return pushBack ["O_Heli_Light_02_unarmed_F",750000];
			_return pushBack ["I_Heli_Transport_02_F",1250000];
		};
	};

	case "donat_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",50000],
			["B_G_Offroad_01_F",12500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",60000],
			["C_Van_01_box_F",90000],
			["I_Truck_02_transport_F",100000],
			["I_Truck_02_covered_F",150000],
			["B_Truck_01_transport_F",300000],
			["O_Truck_03_transport_F",300000],
			["O_Truck_03_covered_F",400000],
			["O_Truck_03_device_F",500000],
			["B_Truck_01_box_F",750000]
		];
	};
	
	case "cop_car":
	{				
		_return pushBack 
		["C_SUV_01_F",35000];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["C_Offroad_01_F",12500];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["C_Hatchback_01_F",30000];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack ["C_Hatchback_01_sport_F",50000];
			_return pushBack ["B_MRAP_01_F",150000];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack ["I_Truck_02_covered_F",70000];
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack ["I_MRAP_03_F",250000];
			_return pushBack ["B_MRAP_01_gmg_F",350000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["B_Heli_Light_01_F",100000];
		};		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["O_Heli_Light_02_unarmed_F",150000];
			_return pushBack ["I_Heli_light_03_unarmed_F",200000];
		};	
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack ["I_Heli_Transport_02_F",250000];
		};	
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack ["B_Heli_Transport_01_F",300000];
		};	
	};
	
	case "cop_airhq":
	{
		_return pushBack 
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack 
			["B_Heli_Transport_01_F",200000];
			_return pushBack 
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return pushBack ["B_Boat_Transport_01_F",3000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["C_Boat_Civil_01_police_F",20000];
		};		
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack ["B_Boat_Armed_01_minigun_F",75000];
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack ["B_SDV_01_F",100000];
		};
	};
};

_return;