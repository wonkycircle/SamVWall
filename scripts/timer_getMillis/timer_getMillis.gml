/// @description timer_getMillis(timer)
/// @param timer
function timer_getMillis(argument0) {

	// This function gets the milliseconds count in real form.

	var timer = argument0;

	// Keep only the ms value (ms under 1000)
	return floor(timer.currentTime % 1000);



}
