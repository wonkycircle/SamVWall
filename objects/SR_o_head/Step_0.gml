if(dance_mode == true)
{
	if(global.dancemove == true)
	{
		randomise();

		var numy = irandom_range(-15,30);
		var numx = irandom_range(-5,10);

		phy_position_y = (phy_position_y + numy);
		phy_position_x = (phy_position_x + numx);
		
		global.dancemove = false;
	}
}