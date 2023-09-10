//save load stuff // start

globalvar slot_1_zone, slot_1_level, slot_1_stars, slot_1_bottles,
slot_2_zone, slot_2_level, slot_2_stars, slot_2_bottles,
slot_3_zone, slot_3_level, slot_3_stars, slot_3_bottles,
can_save, can_load;

//nullify all vars

slot_1_zone = 0; slot_1_level = 0; slot_1_stars = 0; slot_1_bottles = 0;
slot_2_zone = 0; slot_2_level = 0; slot_2_stars = 0; slot_2_bottles = 0;
slot_3_zone = 0; slot_3_level = 0; slot_3_stars = 0; slot_3_bottles = 0;

can_save = false;
can_load = false;

//save function
Save = function ()
{
	// Relevant data
	
	var _slot_1_zone = slot_1_zone; 
	var _slot_1_level = slot_1_level; 
	var _slot_1_stars = slot_1_stars; 
	var _slot_1_bottles = slot_1_bottles;
	var _slot_2_zone = slot_2_zone; 
	var _slot_2_level = slot_2_level; 
	var _slot_2_stars = slot_2_stars; 
	var _slot_2_bottles = slot_2_bottles;
	var _slot_3_zone = slot_3_zone; 
	var _slot_3_level = slot_3_level; 
	var _slot_3_stars = slot_3_stars; 
	var _slot_3_bottles = slot_3_bottles;
	
	
	// Create root struct
	var _SaveStruct =
	{
		a_slot_1_zone : _slot_1_zone, 
		a_slot_1_level : _slot_1_level, 
		a_slot_1_stars : _slot_1_stars, 
		a_slot_1_bottles : _slot_1_bottles,
		a_slot_2_zone : _slot_2_zone, 
		a_slot_2_level : _slot_2_level, 
		a_slot_2_stars : _slot_2_stars, 
		a_slot_2_bottles : _slot_2_bottles,
		a_slot_3_zone : _slot_3_zone, 
		a_slot_3_level : _slot_3_level, 
		a_slot_3_stars : _slot_3_stars, 
		a_slot_3_bottles : _slot_3_bottles
		
	};
	
	// Save to json
	var _json = json_stringify(_SaveStruct);
	
	SaveString(_json, "savedata");
}

//load function

Load = function ()
{
	if (!file_exists("savedata")) return;
	
	// Load JSON
	var _json = LoadString("savedata");
	var _SaveStruct = json_parse(_json);
	
	slot_1_zone = _SaveStruct.a_slot_1_zone; 
	slot_1_level = _SaveStruct.a_slot_1_level; 
	slot_1_stars = _SaveStruct.a_slot_1_stars; 
	slot_1_bottles = _SaveStruct.a_slot_1_bottles;
	slot_2_zone = _SaveStruct.a_slot_2_zone; 
	slot_2_level = _SaveStruct.a_slot_2_level; 
	slot_2_stars = _SaveStruct.a_slot_2_stars; 
	slot_2_bottles = _SaveStruct.a_slot_2_bottles;
	slot_3_zone = _SaveStruct.a_slot_3_zone; 
	slot_3_level = _SaveStruct.a_slot_3_level; 
	slot_3_stars = _SaveStruct.a_slot_3_stars; 
	slot_3_bottles = _SaveStruct.a_slot_3_bottles;
	
}


 // ---------- // end
 
 can_load = true;