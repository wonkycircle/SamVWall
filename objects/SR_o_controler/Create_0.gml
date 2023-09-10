//creating physics word
physics_world_create(1/32);
physics_world_gravity(0, 5);
physics_world_update_iterations(20); 
physics_world_update_speed(room_speed * 2); 

globalvar game_over, game_win, cellsize, str_lenght, 
lower_str, win_check_time, show_win_timer, draw_wintimer, 
lose_check_time, show_lose_timer, draw_losetimer, show_hud, 
can_break, break_value, pick_speed, block_height, can_pick, 
isbroke, show_debug, broke_things, last_broke_thing, dance_mode
;
game_over = false;
game_win = false;
cellsize = 40;
str_lenght = 1;
lower_str = false;
win_check_time = 6;
show_win_timer = false;
draw_losetimer = false;
lose_check_time = 4;
show_lose_timer = false;
draw_wintimer = false;
can_break = true;   //set this to true if you want breakable ragdolls
break_value = 0.03;   //how sensitive joints will be smaller means more sensitive
pick_speed = 10;
block_height = 640;
can_pick = true;
isbroke = false;
show_hud = true;
show_debug = false;
broke_things = 0;
last_broke_thing = "Nothing (Yet)";
dance_mode = false;

picking = false;

winstart = true;
losestart = true;

//Create buttons
ins = instance_create_depth(240,40,0,SR_o_gui_replay);
ins = instance_create_depth(240,120,0,SR_o_gui_pause);
ins = instance_create_depth(1000,40,0,SR_o_gui_quit);
ins = instance_create_depth(1000,120,0,SR_o_gui_save);

//creating walls 
ins = instance_create_depth(0,0,0,SR_o_sides);
ins = instance_create_depth(1000,0,0,SR_o_sides);

ins = instance_create_depth(280, 680, 0, SR_o_floor);
ins = instance_create_depth(640, 680, 0, SR_o_floor);
ins = instance_create_depth(280, 0, 0, SR_o_floor);


ins = instance_create_depth(280, 0, 0, SR_o_wall);
ins = instance_create_depth(960, 0, 0, SR_o_wall);

ins = instance_create_depth(((room_width/6)*4),680,0,SR_o_win);
ins = instance_create_depth(((room_width/6)*2), 555, 0, SR_o_ragdoll);

for(a=0; a<displevel; a++)
{
	randomise();
	num = irandom_range(360,560);
	inslevelbottles = instance_create_depth(num, num, 0, SR_o_bottley);
}

var num = (block_height-(cellsize*(level - 1)));
var xco = ((room_width/2) - 40);

if(displevel <= 10) { var ob = SR_o_block; };
if(displevel > 10) { var ob = SR_o_block_2; };

insblocktop = instance_create_depth(xco,-300, 0, SR_o_block);
with(insblocktop) { image_alpha = 0.5; }

if(level = 1){ insblock = instance_create_depth(xco, block_height, 0, ob); } 
if(level = 2){ insblock = instance_create_depth(xco, (block_height-cellsize), 0, ob); } 
if(level >= 3){ insblock = instance_create_depth(xco, num, 0, ob); }

cc = 0;
	

///Time stuff
//Win  timer
wintimer = timer_createTimer();
timer_runBackward(wintimer);
timer_addSeconds(win_check_time, wintimer);
timer_setPaused(true, wintimer);

if(level > 1)
{
	roomtime = 20;
	roomtime = (roomtime+(2*(level-1)));
}

//Room timer
roomtimer = timer_createTimer();
timer_runBackward(roomtimer);
timer_addSeconds(roomtime, roomtimer);
timer_setPaused(true, roomtimer);


	



