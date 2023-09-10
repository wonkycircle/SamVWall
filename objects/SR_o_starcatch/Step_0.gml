if(timer_getSeconds(startimer) == 0)
{
	timer_destroyTimer(startimer);
	instance_destroy(self);
}
