/*
    file: eli_earplugs.sqf
    Primitive earplug script.
        Made by ELi. v.003
*/


ELI_BLUE_COLOR = "0.3,0.7,0.9,1";
ELI_BLUE_COLOR = "#4199FF";
ELI_ACTION_AVAILABLE = False;
ELI_EARPLUGS_ACTIVATED = False;
ELI_DELAY_TIME = 1;

ELI_TOGGLE_EARPLUGS = {

    if (!ELI_EARPLUGS_ACTIVATED) then {
        ELI_DELAY_TIME fadeSound 0.2;
        systemChat "Earplugs ON";
        ELI_EARPLUGS_ACTIVATED = True;
    }
    else
    {
        ELI_DELAY_TIME fadeSound 1;
        systemChat "Earplugs OFF";
        ELI_EARPLUGS_ACTIVATED = False;
    };
    
    player say "FD_Timer_F";
};


ELI_ADD_THE_ACTION = {

    waitUntil {(!isNull player) and (alive player)};
    
    player addAction [
    "<img image='\a3\ui_f\data\gui\cfg\Ranks\major_gs.paa' /> <t color='#6199FF'> [ Earplugs ]", 
    //{systemChat format ["DEBUG"]},
    ELI_TOGGLE_EARPLUGS,
    0, 
    -1, 
    false, 
    true, 
    "User14", 
    "true", 
    -1, 
    false];
    
    ELI_ACTION_AVAILABLE = True;
    systemChat "::::: Earplugs added to player! :::::";
};


waitUntil {(!isNull player) and (alive player)};
if (!ELI_ACTION_AVAILABLE) then {[] call ELI_ADD_THE_ACTION};


_EHRespawn = player addEventHandler ["Respawn", {[_this] call ELI_ADD_THE_ACTION}];



