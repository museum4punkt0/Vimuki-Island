if(grabbed = false){
	exit;
	
} else if(isInKofferArea) {

//x = mouse_x+xx; 
x = mouse_x; 
//y = mouse_y+yy; 
y = mouse_y; 

move_snap(100,100);
isInKofferArea = false; 

if (delay > 0) { 
		 delay -= 1 
		 
	} else { 
		image_angle += 90;
		delay = 2 * room_speed; 
	}

} else {
	
	//x = mouse_x+xx; 
	x = mouse_x; 
	//y = mouse_y+yy; 
	y = mouse_y; 
	
	 
}