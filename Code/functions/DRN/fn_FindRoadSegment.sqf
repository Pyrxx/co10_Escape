private ["_isOk", "_tries", "_result"];
params["_center", "_minDist", "_maxDist"];

_isOk = false;
_tries = 0;
_result = objNull;

while {!_isOk && _tries < 5} do {
    // Find a position with no minimum clearance (we don't care) on land
    // On success this returns an [x, y], otherwise an [x, y, 0]
    _ranPos = [_center, _minDist, _maxDist, 0, 0] call BIS_fnc_findSafePos;
    // Check if we succeeded
    if (count _ranPos == 2) then {
        // Now find the nearest road segment within 200 m (fine for most maps)
        _roadSegment = [_ranPos, 200] call BIS_fnc_nearestRoad;
        if (!isNull _roadSegment) then {
            _result = _roadSegment;
            _isOk = true;
        };
    };
    _tries = _tries + 1;
};

_result
