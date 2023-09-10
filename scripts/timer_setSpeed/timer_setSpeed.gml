/// @description timer_setSpeed(speed, timer)
/// @param speed
/// @param  timer
function timer_setSpeed(argument0, argument1) {

	// Sets the speed at which the timer runs. 
	// For example, 0.5 makes the timer run at half speed, 
	// speed, 1 is normal speed and 2 is double speed.

	var timer = argument1;

	timer.timerSpeed = argument0;



}
