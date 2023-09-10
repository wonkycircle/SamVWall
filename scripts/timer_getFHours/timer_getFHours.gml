/// @description timer_getFHours(timer)
/// @param timer
function timer_getFHours(argument0) {

	/// This function returns the hours formatted in a nice way for printing

	// Create variables
	var ms, h, str;
	var timer = argument0;

	// Assign first argument to variable for clarity
	ms = timer.currentTime;

	// Get minutes in real number form
	h = timer_getHours(timer);

	// Convert real number to string
	str = string(h);

	// Add the "0" to "05", for example, and return a string ready for printing
	if (h < 10)
	    str = "0" + str;
    
	return str;





}
