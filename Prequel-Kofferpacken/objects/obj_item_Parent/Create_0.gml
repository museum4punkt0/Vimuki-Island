grabbed = false; 
xx = 0; 
yy = 0; 

xxOld = x; 
yyOld = y; 
image_angleOld = image_angle;

delay = 0.75 * room_speed; 

tiles = box_height * box_width;

itemgrid = ds_grid_create(box_width, box_height);
var i = 0;
var j = 0;
repeat (ds_grid_width(itemgrid))
   {
   repeat (ds_grid_height(itemgrid))
      {
      ds_grid_set(itemgrid, i, j, 1);
      j += 1;
      } 
   j = 0;
   i += 1;
}