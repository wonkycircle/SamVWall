with(SR_o_controler)
{
	randomise();
	var numm = irandom_range(100, 200);
	
	if(timer_getMillis(roomtimer) >= numm)
	{
		global.dancemove = true;
	}
}

if(dance_mode == true)
{
	if(global.dancemove == true)
	{
		randomise();

		var numy = irandom_range(0,-10);
		var numx = irandom_range(-10,10);

		phy_position_y = (phy_position_y + numy);
		phy_position_x = (phy_position_x + numx);
		
		global.dancemove = false;
	}
}
