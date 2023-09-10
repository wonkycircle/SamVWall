/// @description timer_getSeconds(timer)
/// @param timer
function timer_getSeconds(argument0) {

	// This function gets the seconds (and seconds only) count in real form.


	// Create variables
	var ms, s;
	var timer = argument0;

	// Assign the first argument to the variable ms
	ms = timer.currentTime;

	// Transform from milliseconds to seconds, round and keep seconds under 60
	s = floor(ms/1000);
	s = s % 60;

	return s;



}
