/*
	File: fn_cellphone2.sqf
	Author: Timo
 
	Description:
	With no radio cant use Cellphone
*/

if("ItemRadio" in assignedItems player) then {
createDialog "Life_cell_phone";
}else{
hint parseText format ["<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Aucun téléphone</t><br/><br/>
<t size='0.90 'font='puristaLight' align='left'>Vous devez avoir avoir un téléphone portable (Radio). Vous pouvez acheter le téléphone portable dans un magasin général</t><br/>"];
};
