/// @description scr_play(global.player_play, global.computer_play);
/// @param global.player_play
/// @param  global.computer_play
switch (argument0) {
    case play.fire:
        switch (argument1) {
        case play.water: return -1;
        case play.earth: return 1;
        default: return 0;
    }; break;
    case play.earth:
        switch (argument1) {
        case play.fire: return -1;
        case play.ice: return 1;
        default: return 0;
    }; break;
    case play.ice:
        switch (argument1) {
        case play.water: return 1;
        case play.earth: return -1;
        default: return 0;
    }; break;
    case play.water:
        switch (argument1) {
        case play.ice: return -1;
        case play.fire: return 1;
        default: return 0;
    }; break;
    
    
}
