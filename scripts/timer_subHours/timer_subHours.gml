/// @description timer_subHours(hours, timer)
/// @param hours
/// @param  timer
function timer_subHours(argument0, argument1) {

	var timer = argument1;

	// Subtracts the specified amount of hours from the timer.
	timer.currentTime -= argument0 * 1000 * 60 * 60;



}
