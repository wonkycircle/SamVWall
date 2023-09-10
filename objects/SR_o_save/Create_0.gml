//objects
var slotobj = SR_o_save_partition;
var slot_y = 320;
slot1 = instance_create_depth(360,slot_y,-2, slotobj);
slot2 = instance_create_depth(560,slot_y,-2, slotobj);
slot3 = instance_create_depth(760,slot_y,-2, slotobj);

exit_save = instance_create_depth(1000,40,0,SR_o_save_exit);

with(slot1) { image_index = 0; slotnum = 1; ss = slot_1_stars; sb = slot_1_bottles; sl = slot_1_level; }
with(slot2) { image_index = 1; slotnum = 2; ss = slot_2_stars; sb = slot_2_bottles; sl = slot_2_level; }
with(slot3) { image_index = 2; slotnum = 3; ss = slot_3_stars; sb = slot_3_bottles; sl = slot_3_level; }
