/// @description timer_addSeconds(seconds, timer)
/// @param seconds
/// @param  timer
function timer_addSeconds(argument0, argument1) {

	var timer = argument1;

	// Add the specified amount of seconds to the timer.
	timer.currentTime += argument0 * 1000;



}
