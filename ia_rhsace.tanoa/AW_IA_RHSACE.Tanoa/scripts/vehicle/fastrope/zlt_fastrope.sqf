/* 
v1g Fast Rope by [STELS]Zealot

Tweaked by Quiksilver, so only Pilots can deploy/retract ropes. 
Passengers will still have 'Cut Ropes' button but it will not do anything, and will appear below Fast Rope instead of above.
________________________________________*/


#define MAX_SPEED_WHILE_FASTROPING 10
#define MAX_SPEED_ROPES_AVAIL 20

zlt_rope_ropes = [];
zlt_mutexAction = false;

zlt_rope_helis = [
					"RHS_UH60M_d",
					"RHS_MELB_MH6M",
					"RHS_CH_47F_10"
];
zlt_rope_helidata = 
[
	[
		["RHS_UH60M_d"],
		[1.32,2,-25.2],
		[-1.32,2,-25.2]
	],
	[
		["RHS_CH_47F_10"],
		[0,-7,-25.5],
		[]
	],	
	[
		["RHS_MELB_MH6M"],
		[1.10,0.85,-25],
		[-1.25,0.85,-25]
	]
];


zlt_fnc_tossropes = {
	private ["_heli","_ropes","_oropes","_rope"];
	_heli = _this;
	_ropes = [];
	_oropes = _heli getvariable ["zlt_ropes",[]];
	if (count _oropes != 0 ) exitwith {};
	_i = 0;
	{
		if ((typeof _heli) in (_x select 0)) exitwith {
			_ropes = _ropes + [_x select 1];
			if ( count (_x select 2) !=0 ) then { 
				_ropes = _ropes + [_x select 2];
			};
		};
		_i = _i +1;
	} foreach zlt_rope_helidata;
	
	sleep random 0.3;
	if ( count (_heli getvariable ["zlt_ropes",[]]) != 0 ) exitwith { zlt_mutexAction = false; };
	//_heli animateDoor ['door_R', 1];
	//_heli animateDoor ['door_L', 1];
	{
		_rope = createVehicle ["land_rope_f", [0,0,0], [], 0, "CAN_COLLIDE"];
		_rope setdir (getdir _heli);
		_rope attachto [_heli, _x];
		_oropes = _oropes + [_rope];
	} foreach _ropes;
	_heli setvariable ["zlt_ropes",_oropes,true];
	
	_heli spawn {
		private ["_heli","_ropes"];
		_heli = _this;
		while {alive _heli and count (_heli getvariable ["zlt_ropes", []]) != 0 and abs (speed _heli) < MAX_SPEED_ROPES_AVAIL } do {
			sleep 0.3;
		};
		_ropes = (_heli getvariable ["zlt_ropes", []]);
		{deletevehicle _x} foreach _ropes;
		_heli setvariable ["zlt_ropes", [], true];
	};

};

zlt_fnc_ropes_cond = {

	_veh = vehicle player;
	_flag = (player == driver _veh) and (_veh != player) and {(not zlt_mutexAction)} and {count (_veh getvariable ["zlt_ropes", []]) == 0} and { (typeof _veh) in zlt_rope_helis } and {alive player and alive _veh and (abs (speed _veh) < MAX_SPEED_ROPES_AVAIL ) };
	_flag;

};

zlt_fnc_fastropeaiunits = {
		private ["_heli","_grunits"];
		diag_log ["zlt_fnc_fastropeaiunits", _this];
		_heli = _this select 0;
		_grunits = _this select 1;

		dostop (driver _heli );
		(driver _heli) setBehaviour "Careless"; 
		(driver _heli) setCombatMode "Blue"; 
		
		_heli spawn zlt_fnc_tossropes;

		[_heli, _grunits] spawn {
			private ["_units","_heli"];
			sleep random 0.5;
			_units = _this select 1;
			_heli = (_this select 0);
			_units = _units - [player];
			_units = _units - [driver _heli];
			{if (!alive _x or isplayer _x or vehicle _x != _heli) then {_units = _units - [_x];}; } foreach _units;
						
			{ sleep (0.5 + random 0.7); _x spawn zlt_fnc_fastropeUnit; } foreach _units;
			waituntil {sleep 0.5; { (getpos _x select 2) < 1 } count _units == count _units; };
			sleep 10;
			(driver _heli) doFollow (leader group (driver _heli ));
			(driver _heli) setBehaviour "Aware"; 
			(driver _heli) setCombatMode "White"; 
			_heli call zlt_fnc_cutropes;
			
		};
};


zlt_fnc_fastrope = {
	diag_log ["fastrope", _this];
	zlt_mutexAction = true;
	sleep random 0.3;
	if (player == leader group player) then {
		[vehicle player, units group player] call zlt_fnc_fastropeaiunits;
	};
	player call zlt_fnc_fastropeUnit;
	zlt_mutexAction = false;
};

zlt_fnc_fastropeUnit = {
	private ["_unit","_heli","_ropes","_rope","_zmax","_zdelta","_zc"];
	_unit = _this;
	_heli = vehicle _unit;
	if (_unit == _heli) exitWith {};

	_ropes = (_heli getvariable ["zlt_ropes", []]);
	if (count _ropes == 0) exitwith {};
	
	_rope = _ropes call BIS_fnc_selectRandom;
	_zmax = 22;
	_zdelta = 7 / 10  ;
	
	_zc = _zmax;
	_unit action ["eject", _heli];
	_unit switchmove "gunner_standup01";
	
	_unit setpos [(getpos _unit select 0), (getpos _unit select 1), 0 max ((getpos _unit select 2) - 3)];
	while {alive _unit and (getpos _unit select 2) > 1 and (abs (speed _heli)) < MAX_SPEED_WHILE_FASTROPING  and _zc > -24} do {
		_unit attachTo [_rope, [0,0,_zc]];
		_zc = _zc - _zdelta;
		sleep 0.1;
	};
	_unit switchmove "";
	detach _unit;

};


zlt_fnc_cutropes = {
	_veh = _this; 
	_ropes = (_veh getvariable ["zlt_ropes", []]);
	{deletevehicle _x} foreach _ropes;
	_veh setvariable ["zlt_ropes", [], true];
	//_veh animateDoor ['door_R', 0];
	//_veh animateDoor ['door_L', 0];

};

zlt_fnc_removeropes = {
	_veh = vehicle player;
	if (player == driver _veh) then {
		(vehicle player) call zlt_fnc_cutropes;
	};
};

zlt_fnc_createropes = {
	zlt_mutexAction = true;
	(vehicle player) call zlt_fnc_tossropes;
	zlt_mutexAction = false;
};