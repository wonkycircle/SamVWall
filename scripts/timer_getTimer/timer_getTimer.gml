/// @description timer_getTimer(timer)
/// @param timer
function timer_getTimer(argument0) {

	// This returns a string with the minutes and seconds
	// separated by : in a way like this, for example: 46:89

	var timer = argument0;

	return timer_getFMinutes(timer) + ":" + timer_getFSeconds(timer);



}
