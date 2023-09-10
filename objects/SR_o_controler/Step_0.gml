if(show_debug == true)
{
	
}

if(str_lenght <= 0)
{
	str_lenght = 0;
	show_lose_timer = true;
	lose_condition = 3;
}

if(show_win_timer == true)
{
	//if(show_lose_timer == true) { return; }
	
	dance_mode = false;
	
	timer_setPaused(true, roomtimer);
	
	if(winstart = true)
	{
		globalvar wintimer;
		wintimer = timer_createTimer();
	
		timer_runBackward(wintimer);
		timer_addSeconds(win_check_time, wintimer);
		timer_setPaused(true, wintimer);
	
		draw_wintimer = true;
	
		timer_setPaused(false, wintimer);
		
		winstart = false;
	}
	
	if(timer_getSeconds(wintimer) == 0)
	{
		game_win = true;
		timer_destroyTimer(wintimer)
		show_win_timer = false;
	}
	
}
else
{
	
}

if(show_lose_timer == true)
{
	
	dance_mode = false;
	
	timer_setPaused(true, roomtimer);
	
	if(losestart = true)
	{
		losetimer = timer_createTimer();
		
		timer_runBackward(losetimer);
		timer_addSeconds(lose_check_time, losetimer);
		timer_setPaused(true, losetimer);
		
		draw_losetimer = true;
	
		timer_setPaused(false, losetimer);
		
		losestart = false;
	}
	
	if(timer_getSeconds(losetimer) == 0)
	{
		stars = 0;
		timer_destroyTimer(losetimer)
		show_lose_timer = false;
		game_over = true;
	}
	
}
else
{
	///Do nothing but notify
}

if(game_win ==  true)
{
	stars = 1;
	
	global.level++;
	
	if(timer_getSeconds(roomtimer) >= 10)
	{
		stars++;
	}
	
	if(broke_things == 0)
	{ 
		stars++;
	}
	
	room_goto(SR_win);
}

if(game_over == true)
{
	room_goto(SR_gameover);
}

if(timer_getSeconds(roomtimer) == 0 && timer_getMillis(roomtimer) == 0)
{
	lose_condition = 2;
	show_lose_timer = true;
}

if(str_lenght <= 0.5) { cc = 1; }

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

if(zone <= 1) { layer_background_sprite(back_id, back001) };
if(zone >= 2) { layer_background_sprite(back_id, back002) };