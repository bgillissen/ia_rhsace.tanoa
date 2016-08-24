/*
Author: 

	Quiksilver
	
Last modified:

	25/04/2014

Description:

	Spawn OPFOR enemy around side objectives.
	Enemy should have backbone AA/AT + random composition.
	
___________________________________________*/

//---------- CONFIG

//#define INF_TEAMS "OIA_InfTeam","OIA_InfTeam_AT","OIA_InfTeam_AA","OI_reconPatrol","OIA_GuardTeam"
//#define VEH_TYPES "O_MBT_02_cannon_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_APC_Tracked_02_AA_F"

#define INF_TEAMS "rhs_group_rus_msv_infantry_chq","rhs_group_rus_msv_infantry_fireteam","rhs_group_rus_msv_infantry_MANEUVER","rhs_group_rus_msv_infantry_section_AA","rhs_group_rus_msv_infantry_section_AT","rhs_group_rus_msv_infantry_section_marksman","rhs_group_rus_msv_infantry_section_mg","rhs_group_rus_msv_infantry_squad","rhs_group_rus_msv_infantry_squad_2mg"
#define VEH_TYPES "rhs_btr60_msv","rhs_btr70_msv","rhs_btr80_msv","rhs_bmp1_msv","rhs_bmp1d_msv","rhs_bmp1k_msv","rhs_bmp1p_msv","rhs_bmp3_late_msv","rhs_t72bd_tv","rhs_t80","rhs_t90_tv"
private ["_x","_pos","_flatPos","_randomPos","_enemiesArray","_infteamPatrol","_SMvehPatrol","_SMveh1","_SMveh2","_SMaaPatrol","_SMaa","_smSniperTeam"];
_enemiesArray = [grpNull];
_x = 0;

//---------- GROUPS
	
_infteamPatrol = createGroup east;
_smSniperTeam = createGroup east;
_SMvehPatrol = createGroup east;
_SMaaPatrol = createGroup east;

//---------- INFANTRY RANDOM
for "_x" from 0 to (3 + (random 4)) do {
	_randomPos = [[[getPos priorityObj1, 300],[]],["water","out"]] call BIS_fnc_randomPos;
	//_infteamPatrol = [_randomPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> [INF_TEAMS] call BIS_fnc_selectRandom)] call BIS_fnc_spawnGroup;
	_infteamPatrol = [_randomPos, EAST, (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> [INF_TEAMS] call BIS_fnc_selectRandom)] call BIS_fnc_spawnGroup;
	[_infteamPatrol, getPos priorityObj1, 100] call BIS_fnc_taskPatrol;
				
	_enemiesArray = _enemiesArray + [_infteamPatrol];
	{
		_x addCuratorEditableObjects [units _infteamPatrol, false];
	} foreach allCurators;	
};


//---------- SNIPER

for "_x" from 0 to 1 do {
	_randomPos = [getPos priorityObj1, 500, 100, 20] call BIS_fnc_findOverwatch;
	_smSniperTeam = [_randomPos, EAST, (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_squad_sniper")] call BIS_fnc_spawnGroup;
	_smSniperTeam setBehaviour "COMBAT";
	_smSniperTeam setCombatMode "RED";
		
	_enemiesArray = _enemiesArray + [_smSniperTeam];
	{
		_x addCuratorEditableObjects [units _smSniperTeam, false];
	} foreach allCurators;
};

	
//---------- VEHICLE RANDOM
	
_randomPos = [[[getPos priorityObj1, 300],[]],["water","out"]] call BIS_fnc_randomPos;
_SMveh1 = [VEH_TYPES] call BIS_fnc_selectRandom createVehicle _randomPos;
waitUntil {sleep 0.5; !isNull _SMveh1};
[_SMveh1, _SMvehPatrol] call BIS_fnc_spawnCrew;

_SMveh1 lock 3;
[_SMvehPatrol, getPos priorityObj1, 75] call BIS_fnc_taskPatrol;
sleep 0.1;

_enemiesArray = _enemiesArray + [_SMveh1];

{
	_x addCuratorEditableObjects [[_SMveh1], false];
	_x addCuratorEditableObjects [units _SMvehPatrol, false];
} foreach allCurators;

//---------- VEHICLE RANDOM	
	
_randomPos = [[[getPos priorityObj1, 300],[]],["water","out"]] call BIS_fnc_randomPos;
_SMveh2 = [VEH_TYPES] call BIS_fnc_selectRandom createVehicle _randomPos;
waitUntil {sleep 0.5; !isNull _SMveh2};
[_SMveh2, _SMvehPatrol] call BIS_fnc_spawnCrew;

_SMveh2 lock 3;
[_SMvehPatrol, getPos priorityObj1, 150] call BIS_fnc_taskPatrol;
sleep 0.1;
	
_enemiesArray = _enemiesArray + [_SMveh2];
sleep 0.1;
_enemiesArray = _enemiesArray + [_SMvehPatrol];
//_enemiesArray = _enemiesArray + [_SMveh1];

{
	_x addCuratorEditableObjects [[_SMveh2], false];
	_x addCuratorEditableObjects [units _SMvehPatrol, false];
} foreach allCurators;

//---------- VEHICLE AA
	
_randomPos = [[[getPos priorityObj1, 300],[]],["water","out"]] call BIS_fnc_randomPos;
_SMaa = "rhs_zsu234_aa" createVehicle _randomPos;
waitUntil {sleep 0.5; !isNull _SMaa};
[_SMaa, _SMaaPatrol] call BIS_fnc_spawnCrew;

_SMaa lock 3;
[_SMaaPatrol, getPos priorityObj1, 150] call BIS_fnc_taskPatrol;
	
_enemiesArray = _enemiesArray + [_SMaaPatrol];
sleep 0.1;
_enemiesArray = _enemiesArray + [_SMaa];
{
	_x addCuratorEditableObjects [[_SMaa], false];
	_x addCuratorEditableObjects [units _SMaaPatrol, false];
} foreach allCurators;

//---------- COMMON

[(units _infteamPatrol)] call QS_fnc_setSkill2;
[(units _smSniperTeam)] call QS_fnc_setSkill3;
[(units _SMaaPatrol)] call QS_fnc_setSkill4;
[(units _SMvehPatrol)] call QS_fnc_setSkill2;
	
//---------- GARRISON FORTIFICATIONS
	
{
	_newGrp = [_x] call QS_fnc_garrisonFortEAST;
	if (!isNull _newGrp) then { 
		_enemiesArray = _enemiesArray + [_newGrp];
		{
			_x addCuratorEditableObjects [units _newGrp, false];
		} foreach allCurators; 
	};
} forEach (getPos priorityObj1 nearObjects ["House", 150]);

_enemiesArray