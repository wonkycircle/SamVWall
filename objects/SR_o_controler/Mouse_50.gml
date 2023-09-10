if(can_pick == true)
{
	//calcualting force that will be aplied to each part of the ragdoll
	with(SR_o_part)
	{
	  vx =  mouse_x - phy_position_x;
	  vy =  mouse_y - phy_position_y;
  
	  d = point_distance(0, 0, vx, vy);
  
	  if(d<pick_speed)
	  {
	    if(d!=0)
	    {
	      vx /= d;
	      vy /= d;
	    }
    
	    //force = 17*(1-d/p);
    
	    physics_apply_impulse(mouse_x, mouse_y, vx, vy);
	  }
	  
	}
}