/// @description timer_getMinutes(timer)
/// @param timer
function timer_getMinutes(argument0) {

	// This function gets the minutes (and minutes only) count in real form.


	// Create variables
	var ms, s, m;
	var timer = argument0;

	// Assign the first argument to the variable ms
	ms = timer.currentTime;

	// Transform from milliseconds to seconds to minutes, round and keep minutes under 60
	s = floor(ms/1000);
	m = floor(s/60);
	m = m % 60;

	return m;



}
