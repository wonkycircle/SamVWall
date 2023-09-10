startimer = timer_createTimer();
timer_runBackward(startimer);
timer_addSeconds(3, startimer);
timer_setPaused(false, startimer);