/// @description timer_inMinutes(timer)
/// @param timer
function timer_inMinutes(argument0) {

	// Gets the total number of minutes in the timer
	var timer = argument0

	return (timer.currentTime / 1000) / 60;



}
