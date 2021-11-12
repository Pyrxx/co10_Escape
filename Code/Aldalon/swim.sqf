SwimFastScriptHandle = [] spawn {
  while {true} do {
    if ("AsswPercMrunSnonWnonDf" == AnimationState player) then {
      player setAnimSpeedCoef 1.6;
    } else {    
      if (isTouchingGround player) then {
        player setAnimSpeedCoef 1;
      };
    };
  };
};