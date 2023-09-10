/// @description timer_addHours(hours, timer)
/// @param hours
/// @param  timer
function timer_addHours(argument0, argument1) {

	var timer = argument1;

	// Add the specified amount of hours to the timer.
	timer.currentTime += argument0 * 1000 * 60 * 60;



}
