
function SaveArtefacts() 
{
	if(global.artefakt_dschungel = true){
		pos = ds_list_find_index(global.artefakts, spr_vitrine_pinsel);
		if(pos == -1){
			ds_list_add(global.artefakts, spr_vitrine_pinsel);
		}
	}
	
	if(global.artefakt_hoehle = true){
		pos = ds_list_find_index(global.artefakts, spr_vitrine_haarball);
		if(pos == -1){
			ds_list_add(global.artefakts, spr_vitrine_haarball);
		}
	}
	
	if(global.artefakt_love = true){
		pos = ds_list_find_index(global.artefakts, spr_vitrine_romance);
		if(pos == -1){
			ds_list_add(global.artefakts, spr_vitrine_romance);
		}
	}
	
	if(global.artefakt_strand = true){
		pos = ds_list_find_index(global.artefakts, spr_vitrine_perle);
		if(pos == -1){
			ds_list_add(global.artefakts, spr_vitrine_perle);
		}
	}
	
	if(global.artefakt_tempel = true){
		pos = ds_list_find_index(global.artefakts, spr_vitrine_laterne);
		if(pos == -1){
			ds_list_add(global.artefakts, spr_vitrine_laterne);
		}
	}
}