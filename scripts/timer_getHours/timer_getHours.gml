/// @description timer_getMinutes(timer)
/// @param timer
function timer_getHours(argument0) {

	// This function gets the hours count in real form.

	// Create variables
	var ms, s, m, h;
	var timer = argument0;

	// Assign the first argument to the variable ms
	ms = timer.currentTime;

	// Transform from minutes to hours and round
	s = floor(ms/1000);
	m = floor(s/60);
	h = floor(m/60);

	return h;



}
