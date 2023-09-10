var xx = (x+(room_width/2));
var yy = (y+(room_width/4));
insstars = instance_create(xx,80,SR_o_stars);

if(room = SR_win)
{
	ins_replay = instance_create(400,480,SR_o_button_replay);
	ins_continue = instance_create(720,480,SR_o_button_continue);
}

if(room = SR_gameover)
{
	if(displevel >= 21)
	{ 
		if(instance_exists(SR_o_win))
		{
			instance_destroy(SR_o_win);
		}
	}
	
	ins_replay = instance_create(400,480,SR_o_button_replay);
	ins_losecondition = instance_create(320,360,SR_o_losecondition);
	ins_continue = instance_create(720,480,SR_o_button_exit);
}

