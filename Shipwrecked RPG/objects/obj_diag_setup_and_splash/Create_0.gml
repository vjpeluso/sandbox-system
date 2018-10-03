/// @desc In-game dialog
//setup array to hold data
global.diag[1,1] = "Are you in a good mood?";
global.diag[1,2] = "Yes, I'm in a great mood.";
global.diag[1,3] = "No, I'm sad.";
global.diag[1,4] = 2
global.diag[1,5] = 3;

global.diag[2,1] = "That's great!/nWould you like /nsome cheese?";
global.diag[2,2] = "Yes, I love cheese!";
global.diag[2,3] = "No, I'll pass.";
global.diag[2,4] = 4
global.diag[2,5] = 5

global.diag[3,1] = "Too bad. /nCan I sing /nyou a song?";
global.diag[3,2] = "Yes. Sing me a /nshanty song.";
global.diag[3,3] = "No. I'd rather you didn't";
global.diag[3,4] = 6;
global.diag[3,5] = 7;


global.diag[4,1] = "Brie or stilton?";
global.diag[4,2] = "Brie, please.";
global.diag[4,3] = "Stilton, please.";
global.diag[4,4] = 10
global.diag[4,5] = 8

global.diag[5,1] = "How about some gold?";
global.diag[5,2] = "Yes, I'm after gold.";
global.diag[5,3] = "No, I have enough money.";
global.diag[5,4] = 11;
global.diag[5,5] = 14;

global.diag[6,1] = "Yo ho ho & /na bottle of rum./nWant some rum?";
global.diag[6,2] = "yes. Hmm rum.";
global.diag[6,3] = "No. I don't drink.";
global.diag[6,4] = 15;
global.diag[6,5] = 12;

global.diag[7,1] = "OK. Want to go fishing?";
global.diag[7,2] = "Yes. Sounds good!";
global.diag[7,3] = "No. Fishing is boring";
global.diag[7,4] = 9;
global.diag[7,5] = 13;

global.diag[8,1] = "Yuck! I prefer brie./n/n[R to Restart]";
global.diag[8,2] = "";
global.diag[8,3] = "";
global.diag[8,4] = 0;
global.diag[8,5] = 0;

global.diag[9,1] = "Awesome! I'll get my rod./n/n[R to Restart]";
global.diag[9,2] = "";
global.diag[9,3] = "";
global.diag[9,4] = 0;
global.diag[9,5] = 0;

global.diag[10,1] = "Great choice!/n/n[R to Restart]";
global.diag[10,2] = "";
global.diag[10,3] = "";
global.diag[10,4] = 0;
global.diag[10,5] = 0;

global.diag[11,1] = "Here's 1,000 coins./n/n[R to Restart]";
global.diag[11,2] = "";
global.diag[11,3] = "";
global.diag[11,4] = 0;
global.diag[11,5] = 0;

global.diag[12,1] = "Probably for the best!/n/n[R to Restart]";
global.diag[12,2] = "";
global.diag[12,3] = "";
global.diag[12,4] = 0;
global.diag[12,5] = 0;

global.diag[13,1] = "OK. Be boring then!/n/n[R to Restart]";
global.diag[13,2] = "";
global.diag[13,3] = "";
global.diag[13,4] = 0;
global.diag[13,5] = 0;

global.diag[14,1] = "No gold! Your choice!/n/n[R to Restart]";
global.diag[14,2] = "";
global.diag[14,3] = "";
global.diag[14,4] = 0;
global.diag[14,5] = 0;

global.diag[15,1] = "Don't drink too much!/n/n[R to Restart]";
global.diag[15,2] = "Continue";
global.diag[15,3] = "";
global.diag[15,4] = 16;
global.diag[15,5] = 0;

global.diag[16,1] = "Maybe just have a coffee../n/n[R to Restart]";
global.diag[16,2] = "";
global.diag[16,3] = "";
global.diag[16,4] = 0;
global.diag[16,5] = 0;

global.message = 1;
global.gold = 0;
room_goto(room_dialogue);