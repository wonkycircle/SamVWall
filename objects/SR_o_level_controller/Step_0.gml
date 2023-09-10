if(level > 10) { zone++; level = 1; }
if(displevel >= 21)
{ 
	if(instance_exists(SR_o_win))
	{
		instance_destroy(SR_o_win);
		lose_condition = 5;
		room_goto(SR_gameover);
	}
}
getdisplevel();


/* start with a globalvar of
	zonelimit = 10;
	
	this will let us know that every 10 levels we change zone
	
	if(level == zonelimit) { zone ++ };
	
	displevel = (level(zone+zonelimit));
	
*/
	