/// @description timer_noTime(timer)
/// @param timer
function timer_noTime(argument0) {

	// Returns true if the timer is zeroed, and false otherwise.
	// Useful for knowing when a stopwatch has run its course, for example.

	var timer = argument0;

	if (timer.currentTime == 0)
	    return true;
	else return false;




}
