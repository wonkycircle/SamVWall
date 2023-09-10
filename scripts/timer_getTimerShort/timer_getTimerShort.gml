/// @description timer_getTimerShort(timer)
/// @param timer
function timer_getTimerShort(argument0) {

	// This returns a string with the seconds and milliseconds 
	// separated by : in a way like this, for example: 00:46:89:345

	var timer = argument0;

	return + timer_getFSeconds(timer) + ":" + timer_getFMillis(timer);



}
