/*
@filename: fn_conditionUH80TurretControl.sqf
Author:

	Quiksilver
	
Last modified:

	22/10/2014 ArmA 1.32 by Quiksilver
	
Description:

	Add action condition for pilot control of UH80 turrets
_______________________________________________________________*/

private ["_c","_v","_type"];

_c = false;
_v = vehicle player;
_type = typeOf _v;
_uh80 = ["RHS_UH60M_d", "RHS_CH_47F_10"];

if (_type in _uh80) then {
	if (_v getVariable "turretR_locked") then {
		_c = true;
	};
};
_c;	