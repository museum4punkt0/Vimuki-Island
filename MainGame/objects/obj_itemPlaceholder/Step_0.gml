x = xstart - dist_apply;
dist_apply = lerp(dist_apply, dist, slide_speed);

if (!global.isInventoryOpen){
    dist = obj_inventarManagerSlide.sprite_width - obj_inventarManagerSlide.sprite_xoffset;
}else{
    dist = 0;
}