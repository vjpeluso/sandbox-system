/// @description Check if player or enemy dead
if (global.p1hp < 0)
{
	global.message = "Enemy Wins"; // for gameover screen
	room_goto(room_game_over);
}
if (global.enemyhp < 0)
{
	global.message = "player Wins"; // for gameover screen
	room_goto(room_game_over);
}
