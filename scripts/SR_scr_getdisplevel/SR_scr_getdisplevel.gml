// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getdisplevel()
{
	var mult = 10;
	var zonemult = (mult * (zone-1));
	
	if(level <= 10 && zone == 1) { displevel = level; } else
	if(level <= 10 && zone > 1) { displevel = (level+zonemult); }
	
	return displevel;
}