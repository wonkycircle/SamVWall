/*Joint stuff
Okay so basically all the joints need to be set up into a list so that we know what is what when
we break something.

We also want a script that takes note of what joints have broken.

I don't know whether i will just have it that when he breaks you just lose or whatever yet

*/
function getjointname(argument0)
{
	if(argument0 == 1) { last_broke_thing = "Neck";} else
	if(argument0 == 2 || argument0 = 3) { last_broke_thing = "Shoulder";} else
	if(argument0 == 4 || argument0 = 5) { last_broke_thing = "Arm";} else
	if(argument0 == 6 || argument0 = 7) { last_broke_thing = "Wrist";} else
	if(argument0 == 8 || argument0 = 9) { last_broke_thing = "Hip";} else
	if(argument0 == 10 || argument0 = 11) { last_broke_thing = "Knee";} else
	if(argument0 == 12 || argument0 = 13) { last_broke_thing = "Ankle";}

}