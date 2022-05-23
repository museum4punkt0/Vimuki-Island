x = xstart - dist_apply;
dist_apply = lerp(dist_apply, dist, slide_speed);

if (!global.isInventoryOpen){
    dist = sprite_width - sprite_xoffset;
	obj_basis_area.sprite_index = spr_map_camp;
	obj_basis_area.isSelected = false;
	obj_dschungel_area.sprite_index = spr_map_dschungel; 
	obj_dschungel_area.isSelected = false; 
	obj_froschtempel_area.sprite_index = spr_map_froschtempel;
	obj_froschtempel_area.isSelected = false;
	obj_strand_area.sprite_index = spr_map_strand;
	obj_strand_area.isSelected = false; 
	obj_tropfsteinhoehle_area.sprite_index = spr_map_hoehle;
	obj_tropfsteinhoehle_area.isSelected = false;
}else{
    dist = 0;
}
