draw_sprite(gui_level,0,360,80);
draw_sprite(gui_bone,0,840,80);
//draw_sprite(gui_replay,0,240,40);
//draw_sprite(gui_quit,0,1000,40);


draw_sprite_ext(gui_str_back,0,(room_width/2),150,1,1,image_angle,image_blend,image_alpha);
draw_sprite_ext(gui_str_top,cc,(room_width/2),150,str_lenght,1,image_angle,image_blend,image_alpha);


draw_set_color(c_white);
draw_set_font(fnt_gui);
draw_set_halign(fa_center);

draw_text(400, 120, displevel);

if(!broke_things > 0)
{
	draw_text(880, 120, broke_things);
}
else
{
	draw_set_color(c_red);
	draw_text(880, 120, broke_things);
	draw_set_color(c_white);
}

if(timer_getSeconds(roomtimer) >= 9)
{
	draw_text(room_width/2, 80, string_hash_to_newline(timer_getTimerLong(roomtimer)));
} else
{
	draw_set_color(c_red);
	draw_text(room_width/2, 80, string_hash_to_newline(timer_getTimerLong(roomtimer)));
}