/// @description timer_getTimerLong(timer)
/// @param timer
function timer_getTimerLong(argument0) {

	// This returns a string with the hours, minutes, seconds and milliseconds 
	// separated by : in a way like this, for example: 00:46:89:345

	var timer = argument0;

	return timer_getFHours(timer) + ":" 
	    + timer_getFMinutes(timer) + ":"
	    + timer_getFSeconds(timer) + ":"
	    + timer_getFMillis(timer);



}
