/// @description timer_multiply(x, timer)
/// @param x
/// @param  timer
function timer_multiply(argument0, argument1) {


	// This scripts multiplies the total time on the timer.
	// This way you can, for example, double available time ( timer_multiply(2) )
	// or halve it ( timer_multiply(0.5) )

	var timer = argument1;

	timer.currentTime *= argument0;



}
