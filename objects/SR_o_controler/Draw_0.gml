if(show_debug == true)
{
/*
draw_set_font(font0);
draw_set_color(c_white);
draw_text(50+x, 50+y, string_hash_to_newline("[Press LMB to Drag]   [Press RMB to Push]"));
draw_text(50+x, 50+y+25, string_hash_to_newline("Last Broke Thing: " + string(last_broke_thing)));
draw_text(50+x, 50+y+50, string_hash_to_newline("Things broken: " + string(broke_things)));
draw_text(50+x, 50+y+75, string_hash_to_newline("Hand Strenght " + string(pick_speed)));
draw_text(50+x, 50+y+125, string_hash_to_newline("Press 1-2 to change breaking value " + string(break_value)));
draw_text(50+x, 50+y+150, string_hash_to_newline("Press space to turn on/off breaking. Currently=" + string(can_break)));
draw_text(50+x, 50+y+175, string_hash_to_newline("Press Enter to enable picking up. Currently=" + string(can_pick)));
*/

draw_set_color(c_lime);
physics_draw_debug();

flag1 = phy_debug_render_aabb;
flag2 = phy_debug_render_collision_pairs;
flag3 = phy_debug_render_obb;
flag4 = phy_debug_render_core_shapes;

physics_world_draw_debug(flag1);
physics_world_draw_debug(flag2);
physics_world_draw_debug(flag3);
physics_world_draw_debug(flag4);

}

if(game_over == true)
{
	
	//layer_background_change(1, b_002);
}

if(draw_wintimer == true)
{
	time = timer_getSeconds(wintimer);
	draw_set_color(c_white);
	draw_set_font(fnt_wintimer);
	draw_set_halign(fa_center);
	draw_text(room_width/2, 160, string_hash_to_newline(time));
	
}

if(draw_losetimer == true)
{
	time = timer_getSeconds(losetimer);
	draw_set_color(c_red);
	draw_set_font(fnt_wintimer);
	draw_set_halign(fa_center);
	draw_text(room_width/2, 160, string_hash_to_newline(time));
	
}


