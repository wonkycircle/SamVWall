if(instance_exists(insblock))
{
	instance_destroy(insblock);
	block_height = (block_height+8);
	insblock = instance_create_depth(324, block_height, 0, SR_o_block);
}