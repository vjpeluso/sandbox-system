/// @description draw stuff

//draw info box
draw_sprite(spr_battle_loop,0,400,400);
//draw game results
draw_set_font(font_text);
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_text(room_width/2,550,string_hash_to_newline(global.text));
draw_text(room_width/2,600,string_hash_to_newline("Player Wins "+string(global.player_wins)));
draw_text(room_width/2,650,string_hash_to_newline("Computer Wins "+string(global.computer_wins)));
draw_text(room_width/2,700,string_hash_to_newline("Draws "+string(global.draws)));

switch (global.computer_play)
    {
    case play.ice:
    draw_sprite(spr_ice,0,room_width-200,200);
    break;
    case play.water:
    draw_sprite(spr_water,0,room_width-200,200);
    break;
    case play.earth:
    draw_sprite(spr_ground,0,room_width-200,200);
    break;
    case play.fire:
    draw_sprite(spr_fire,0,room_width-200,200);
    break;
    }

    switch (global.player_play)
    {
    case play.ice:
    draw_sprite(spr_ice,0,200,200);
    break;
    case play.water:
    draw_sprite(spr_water,0,200,200);
    break;
    case play.earth:
    draw_sprite(spr_ground,0,200,200);
    break;
    case play.fire:
    draw_sprite(spr_fire,0,200,200);
    break;
    }

//draw the players
draw_sprite(spr_player_static,0,100,150);
draw_sprite(spr_pirate_static,0,700,150);


