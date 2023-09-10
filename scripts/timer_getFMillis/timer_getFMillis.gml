/// @description timer_getFMillis(timer)
/// @param timer
function timer_getFMillis(argument0) {

	// This function returns the seconds formatted in a nice way for printing


	// Create variables
	var ms, str;
	var timer = argument0;

	// Assign first argument to variable for clarity
	ms = timer.currentTime;

	// Get milliseconds in real number form
	ms = timer_getMillis(timer);

	// Convert real number to string
	str = string(ms);

	// Add the "00" to "005", for example, and return a string ready for printing
	if (ms < 100)
	    str = "0" + str;
	if (ms < 10)
	    str = "0" + str;
    
	return str;



}
