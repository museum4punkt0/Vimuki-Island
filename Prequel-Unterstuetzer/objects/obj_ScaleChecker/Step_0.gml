bildWidth = camera_get_view_width(view_camera[0]); 
bildHeight = camera_get_view_height(view_camera[0])
if((bildHeight > bildWidth)){
	global.isLandscapeMode = false; 
	if(!global.isPopUpActive){
		global.isPopUpActive = true; 
	} 
} 

if(bildHeight < bildWidth){
	global.isLandscapeMode = true; 
	if(global.isPopUpActive){
		global.isPopUpActive = false; 
	} 
}