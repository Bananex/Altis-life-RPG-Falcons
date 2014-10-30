/*
    File: fn_civMarkers.sqf
    Author/editor: Worldtrade1101
    Base on Tonic copMarkers.sqf script
    Description:
    
*/
private["_markers","_cops","_hideOut","_hideOutmarkers","_hideoutobj"];
_hideOutmarkers = ["hideout_1","hideout_2","hideout_3"];
_hideout =[];
_markers = [];
{
_hideoutobj = (nearestObjects[getmarkerpos _x,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
_hideout set [count _hideout,_hideoutobj];
}foreach _hideOutmarkers;

sleep 0.5;
if(visibleMap) then {
    
    _number =0;
    //Create markers
    {
        
_pos = getPos _x;
_markerName = format["hideoutOwner_%1",_number];
_marker = createMarkerLocal [_markerName, _pos];
_marker setMarkerShape "ICON"; 
	_marker setMarkerType "hd_warning"; 
	_marker setMarkerColor "ColorBlue"; 
	_marker setMarkerText name (_x getvariable ["gangOwner",grpNull]);
_number=_number + 1;
_markers set [count _markers,_marker];
}foreach _hideout;

while {visibleMap} do
{
if(!visibleMap) exitWith {};
sleep 1;
};

{deleteMarkerLocal _x;}foreach _markers;

};
};