/// @description timer_getFSeconds(timer)
/// @param timer
function timer_getFSeconds(argument0) {

	// This function returns the seconds formatted in a nice way for printing


	// Create variables
	var ms, s, str;
	var timer = argument0;

	// Assign first argument to variable for clarity
	ms = timer.currentTime;

	// Get seconds in real number form
	s = timer_getSeconds(timer);

	// Convert real number to string
	str = string(s);

	// Add the "0" to "05", for example, and return a string ready for printing
	if (s < 10)
	    str = "0" + str;
    
	return str;



}
