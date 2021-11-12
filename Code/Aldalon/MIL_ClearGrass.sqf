params [
	["_availableActions",0],["_itemsRequired",[]],
	"_patch","_fireLaneStart","_fireLaneEnd"
];

if ((count _itemsRequired) == 0) then {
	if (({_availableActions == _x} count [0,1]) > 0) then {
		_id = player addAction [
			"<t color='#88B985' shadow='2'>MIL_ClearGrass - Patch</t>",
			{
				nul = createVehicle ["Land_ClutterCutter_small_F",player getPos [0.5,getDir player],[],0,"CAN_COLLIDE"];
			},
			[],
			1.01,
			false,
			true,
			"",
			"alive _target"
		];
	};
	
	if (({_availableActions == _x} count [0,2]) > 0) then {
	
		player setVariable ["MIL_ClearGrass_FireLane",1];
		
		_id = player addAction [
			"<t color='#88B985' shadow='2'>MIL_ClearGrass - Fire Lane</t>",
			{
				private _start = getPos player;
				player setVariable ["MIL_ClearGrass_FireLane_Start",_start];
				player setVariable ["MIL_ClearGrass_FireLane",2];
			},
			[],
			1.01,
			false,
			true,
			"",
			"alive _target && ((player getVariable 'MIL_ClearGrass_FireLane') == 1)"
		];
		
		_id = player addAction [
			"<t color='#88B985' shadow='2'>MIL_ClearGrass - Fire Lane - </t><t color='#FF0000' shadow='2'>End</t>",
			{
				private _start = player getVariable "MIL_ClearGrass_FireLane_Start";
				private _end = getPos player;
				private _distance = _start distance _end;
				private _direction = _start getDir _end;

				for "_i" from 0 to (ceil _distance) step 0.5 do {
					_nextPosL = (_start getPos [0.25,_direction - 90]) getPos [_i,_direction];
					_nextPosR = (_start getPos [0.25,_direction + 90]) getPos [_i,_direction];
					{
						nul = createVehicle ["Land_ClutterCutter_small_F",_x,[],0,"CAN_COLLIDE"];
					} forEach [_nextPosL,_nextPosR];
				};
				player setVariable ["MIL_ClearGrass_FireLane",0];				
			},
			[],
			1.01,
			false,
			true,
			"",
			"alive _target && ((player getVariable 'MIL_ClearGrass_FireLane') == 2)"
		];
	};
	
	} else {
	
	player setVariable ["MIL_ClearGrass_ItemsRequired",_itemsRequired];
	
	if (({_availableActions == _x} count [0,1]) > 0) then {
		_id = player addAction [
			"<t color='#88B985' shadow='2'>MIL_ClearGrass - Patch</t>",
			{
				nul = createVehicle ["Land_ClutterCutter_small_F",player getPos [0.5,getDir player],[],0,"CAN_COLLIDE"];
			},
			[],
			1.01,
			false,
			true,
			"",
			"alive _target && (({_x in (player getVariable 'MIL_ClearGrass_ItemsRequired')} count (items player)) > 0)"
		];
	};
	
	if (({_availableActions == _x} count [0,2]) > 0) then {
	
		player setVariable ["MIL_ClearGrass_FireLane",1];
		
		_id = player addAction [
			"<t color='#88B985' shadow='2'>MIL_ClearGrass - Fire Lane</t>",
			{
				private _start = getPos player;
				player setVariable ["MIL_ClearGrass_FireLane_Start",_start];
				player setVariable ["MIL_ClearGrass_FireLane",2];
			},
			[],
			1.01,
			false,
			true,
			"",
			"alive _target && ((player getVariable 'MIL_ClearGrass_FireLane') == 1) && (({_x in (player getVariable 'MIL_ClearGrass_ItemsRequired')} count (items player)) > 0)"
		];
		
		_id = player addAction [
			"<t color='#88B985' shadow='2'>MIL_ClearGrass - Fire Lane - </t><t color='#FF0000' shadow='2'>End</t>",
			{
				private _start = player getVariable "MIL_ClearGrass_FireLane_Start";
				private _end = getPos player;
				private _distance = _start distance _end;
				private _direction = _start getDir _end;

				for "_i" from 0 to (ceil _distance) step 0.5 do {
					_nextPosL = (_start getPos [0.25,_direction - 90]) getPos [_i,_direction];
					_nextPosR = (_start getPos [0.25,_direction + 90]) getPos [_i,_direction];
					{
						nul = createVehicle ["Land_ClutterCutter_small_F",_x,[],0,"CAN_COLLIDE"];
					} forEach [_nextPosL,_nextPosR];
				};
				player setVariable ["MIL_ClearGrass_FireLane",0];				
			},
			[],
			1.01,
			false,
			true,
			"",
			"alive _target && ((player getVariable 'MIL_ClearGrass_FireLane') == 2)"
		];
	};
};