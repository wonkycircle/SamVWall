/// @description timer_inMinutes(timer)
/// @param timer
function timer_inHours(argument0) {

	// Gets the total number of hours in the timer
	var timer = argument0

	return ((timer.currentTime / 1000) / 60) / 60;



}
