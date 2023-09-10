/// @description timer_addMinutes(minutes, timer)
/// @param minutes
/// @param  timer
function timer_addMinutes(argument0, argument1) {

	var timer = argument1;

	// Add the specified amount of minutes to the timer.
	timer.currentTime += argument0 * 1000 * 60;



}
