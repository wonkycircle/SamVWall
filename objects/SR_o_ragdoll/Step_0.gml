//this code is responsible for deleting joints if they are streatched too much
if(can_break==true)
{
  for(i=2; i<14; i++)
    if(j[i]!=noone)
      if(abs(physics_joint_get_value(j[i], phy_joint_reaction_force_x))>break_value || abs(physics_joint_get_value(j[i], phy_joint_reaction_force_y))>break_value)
      {
		getjointname(j[i]);
        physics_joint_delete(j[i]);
        j[i] = noone; 
		isbroke = true;
		broke_things++;
      }
}

if(broke_things >= 3)
{
	lose_condition = 1;
	show_lose_timer = true;
	
}

/*
if(can_break==true)
{
  for(i=2; i<14; i++)
    if(j[i]!=noone)
      if(abs(physics_joint_get_value(j[i], phy_joint_reaction_force_x))>break_value || abs(physics_joint_get_value(j[i], phy_joint_reaction_force_y))>break_value)
      {
		if(j[i] = 2) { physics_joint_delete(j[i]); broke_things++; getjointname(j[i]); isbroke = true; j[i] = noone; }
		if(j[i] = 3) { physics_joint_delete(j[i]); broke_things++; getjointname(j[i]); isbroke = true; j[i] = noone; }
		if(j[i] = 8) { physics_joint_delete(j[i]); broke_things++; getjointname(j[i]); isbroke = true; j[i] = noone; }
		if(j[i] = 9) { physics_joint_delete(j[i]); broke_things++; getjointname(j[i]); isbroke = true; j[i] = noone; }
        
		// YOU BROKE!
		// bring up game over screen 
      }
}
*/

