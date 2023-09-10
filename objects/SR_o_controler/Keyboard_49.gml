if(can_pick == false)
{
	break_value-=0.01;
	if(break_value<0) break_value = 0;
}
else
{
	pick_speed-=1;
	if(pick_speed<0) pick_speed = 0;
}

