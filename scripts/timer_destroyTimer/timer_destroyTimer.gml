/// @description  timer_destroyTimer(timer)
/// @param timer
function timer_destroyTimer(argument0) {

	// Destroy a timer to free memory

	var timer = argument0;

	with (timer) { instance_destroy() };



}
