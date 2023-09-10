/// @description timer_getFMinutes(timer)
/// @param timer
function timer_getFMinutes(argument0) {

	/// This function returns the minutes formatted in a nice way for printing

	// Create variables
	var ms, m, str;
	var timer = argument0;

	// Assign first argument to variable for clarity
	ms = timer.currentTime;

	// Get minutes in real number form
	m = timer_getMinutes(timer);

	// Convert real number to string
	str = string(m);

	// Add the "0" to "05", for example, and return a string ready for printing
	if (m < 10)
	    str = "0" + str;
    
	return str;





}
