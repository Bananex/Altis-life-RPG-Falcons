/* 
	File:fn_radarCam.sqf
	author: [midgetgrimm]
	Flash/Basic premise idea from preller, trigger function from shems and Yuka for the waitUntil <3
	Runs cams on map for speeders, if speed too many times diff shit happens
*/
waitUntil {(!isNil "life_fnc_moveIn") && !isNull (findDisplay 46)};
if((vehicle player isKindOf "Ship") OR (vehicle player isKindOf "Air")) exitWith {};//exit if not a freaking car
private ["_limit","_speed","_driver","_ticket","_ticketWL"];
_driver = _this select 0;
_speed = _this select 1;
_limit = _this select 2;
//_ticket = 1500;//perm set amount ticket
_ticket = (_speed - _limit) * 100;//variable ticket for licensed driver
_ticketWL = (_speed - _limit) * 200;//variable ticket for unlicensed driver
//diag_log format["Ticket Prix: %1 - Sp: %2 -- Limit: %3",_ticket,_speed,_limit];
if (_speed > _limit) then {
	if (side _driver == civilian) then {
			if(isNil "life_speedTicket") then {life_speedTicket = 0;};
			if(isNil "life_speedCaught") then {life_speedCaught = 0;};
			diag_log format["Dr:%1 :: Sp:%2 :: Lmt:%3 ::Prix: %4",name _driver,round _speed,_limit,[_ticket] call life_fnc_numberText];
			player say3d "PhotoSound";
			sleep 0.05;
			"colorCorrections" ppEffectEnable true;   
			"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 1],[0.3, 0.3, 0.3, 0.05]];    
			"colorCorrections" ppEffectCommit 0;  
			sleep 0;   
			"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 1]];    
			"colorCorrections" ppEffectCommit 0.05;   
			sleep 0.05;   
			"colorCorrections" ppEffectEnable false;
			sleep 0.1;
			"colorCorrections" ppEffectEnable true;   
			"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 1],[0.3, 0.3, 0.3, 0.05]];    
			"colorCorrections" ppEffectCommit 0;  
			sleep 0;   
			"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 1]];    
			"colorCorrections" ppEffectCommit 0.05;   
			sleep 0.05;   
			"colorCorrections" ppEffectEnable false;
		if(license_civ_driver OR license_civ_truck ) then {
			
			life_speedTicket = life_speedTicket + 1;
			if(life_speedTicket <= 3) then {systemChat format["Vous avez reçu un total de %1 ticket(s), si vous continuez vous perdrez de l'argent.",life_speedTicket];};
			if(life_speedTicket == 4) then {systemChat format["Vous avez reçu un total de %1 ticket(s), le prochain vous n'aurez plus vos licences.",life_speedTicket];};
			if(life_speedTicket > 4 && life_speedTicket < 8) exitWith {
					
					systemChat format["TIKET NUMERO: %1",life_speedTicket];
					hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Vous êtes souvent en excès de vitesse, vous avez donc perdu vos licences et vous êtes recherché",round _speed,_limit,name _driver];
					[[4],"life_fnc_removeLicenses",_driver,FALSE] spawn life_fnc_MP;
					[[getPlayerUID _driver,name _driver,"120H"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					[2] call SOCK_fnc_updatePartial;
			};
			if(life_speedTicket > 8) exitWith {
					
					vehicle _driver setFuel 0.1;
					systemChat format["TIKET NUMERO: %1",life_speedTicket];
					hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/>Vous êtes maintenant recherché et vous serez arreté",round _speed,_limit,name _driver];
					[[getPlayerUID _driver,name _driver,"120FS"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					[[4],"life_fnc_removeLicenses",_driver,FALSE] spawn life_fnc_MP;
					[2] call SOCK_fnc_updatePartial;
			};
			if(life_cash <= _ticket) then
			{
				if(life_atmcash <= _ticket) exitWith 
				{
					hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Prix: $%4<br/>Vous n'avez pas assez pour payé l'amende, vous êtes donc recherché par la Police",round _speed,_limit,name _driver,[_ticket] call life_fnc_numberText];
					[[getPlayerUID _driver,name _driver,"120S"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				};
				life_atmcash = life_atmcash - _ticket;
				hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Prix: $%4",round _speed,_limit,name _driver,[_ticket] call life_fnc_numberText];
				diag_log "Ticket paid from player bank";
				[1] call SOCK_fnc_updatePartial;
			} else {
						
				life_cash = life_cash - _ticket;
				hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Prix: $%4",round _speed,_limit,name _driver,[_ticket] call life_fnc_numberText];	
				diag_log "Ticket paid from player cash";
				[0] call SOCK_fnc_updatePartial;
			};
		} else {
			
					life_speedCaught = life_speedCaught + 1;
					if(life_speedCaught <= 5) then { systemChat format["Vous avez été flashé %1 fois pour conduite sans permit.",life_speedCaught];};
					if(life_speedCaught == 6) then { systemChat format["Vous avez été flashé %1 fois pour conduite sans permit.",life_speedCaught];};
					
					if(life_speedCaught > 6) exitWith {
					
							vehicle _driver setFuel 0.1;
							systemChat format["TIKET NUMERO: %1",life_speedCaught];
							hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/>Vous êtes recherché par la Police pour excès de vitesse.",round _speed,_limit,name _driver];
							[[getPlayerUID _driver,name _driver,"120FSWL"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
							
					};
					hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Vous êtes maintenant recherché pour conduite sans permis et vous serez soumis à une arrestation",round _speed,_limit,name _driver];
					[[getPlayerUID _driver,name _driver,"120WL"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					if(life_cash <= _ticketWL) then
					{
						if(life_atmcash <= _ticketWL) exitWith 
						{
							hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Prix: $%4<br/>Puisque vous ne pouvez pas payer, vous êtes maintenant recherché par la Police",round _speed,_limit,name _driver,[_ticketWL] call life_fnc_numberText];
							[[getPlayerUID _driver,name _driver,"120S"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
						};
						life_atmcash = life_atmcash - _ticketWL;
						hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Prix: $%4",round _speed,_limit,name _driver,[_ticketWL] call life_fnc_numberText];
						//diag_log "Ticket paid from player bank";//for logging
						[1] call SOCK_fnc_updatePartial;
					} else {
						
						life_cash = life_cash - _ticketWL;
						hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar Automatique<br/><t color='#2f7cac'><t align='center'><t size='1.5'>Vitesse: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Limite de Vitesse: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Conducteur: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Prix: $%4",round _speed,_limit,name _driver,[_ticketWL] call life_fnc_numberText];	
						//diag_log "Ticket paid from player cash";//for logging
						[0] call SOCK_fnc_updatePartial;
					};
		};
	};
};
//diag_log "Speed cam script done";//for logging
sleep 5;