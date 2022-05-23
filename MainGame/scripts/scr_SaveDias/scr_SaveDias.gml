function SaveDias(dia) 
{
	pos = ds_list_find_index(global.dias, dia);
	if(pos == -1){
		ds_list_add(global.dias, dia);
	}
}