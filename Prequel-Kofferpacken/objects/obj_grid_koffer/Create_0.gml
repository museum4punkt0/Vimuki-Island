global.koffergrid = ds_grid_create(8, 8);
var i = 0;
var j = 0;
repeat (ds_grid_width(global.koffergrid))
   {
   repeat (ds_grid_height(global.koffergrid))
      {
      ds_grid_set(global.koffergrid, i, j, 0);
      j += 1;
      }
   j = 0;
   i += 1;
}

//Set Investor Item
ds_grid_set(global.koffergrid, 4,0,1);
ds_grid_set(global.koffergrid, 4,1,1);
ds_grid_set(global.koffergrid, 4,2,1);
ds_grid_set(global.koffergrid, 4,3,1);
ds_grid_set(global.koffergrid, 5,0,1);
ds_grid_set(global.koffergrid, 5,1,1);
ds_grid_set(global.koffergrid, 5,2,1);
ds_grid_set(global.koffergrid, 5,3,1);
ds_grid_set(global.koffergrid, 6,0,1);
ds_grid_set(global.koffergrid, 6,1,1);
ds_grid_set(global.koffergrid, 6,2,1);
ds_grid_set(global.koffergrid, 6,3,1);
ds_grid_set(global.koffergrid, 7,0,1);
ds_grid_set(global.koffergrid, 7,1,1);
ds_grid_set(global.koffergrid, 7,2,1);
ds_grid_set(global.koffergrid, 7,3,1);