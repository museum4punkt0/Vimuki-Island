if (move && point_distance(x, y ,target ,y) > 20){
    move_towards_point(target ,y,20);
} else {
	move = false; 
	speed = 0;
}