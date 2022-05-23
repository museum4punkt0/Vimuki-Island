/// gmcallback_imgloadbar(context, current, total, width, height, img_width, img_height)
var r;
var pc = argument1; // progress current
var pt = argument2; // progress total
var cw = argument3; // canvas width
var ch = argument4; // canvas height
var iw = argument5; // image width
var ih = argument6; // image height
switch (argument0) {
    case "image_rect": // ([left, top, width, height] in pixels)
        r[0] = (current_time div 500) mod 4 * (iw div 4);
        r[1] = 0;
        r[2] = iw div 4;
        r[3] = ih;
        return r;
    case "background_color": return c_white;
    case "bar_background_color": return c_white;
    case "bar_foreground_color": return $242238;
    case "bar_border_color": return $242238;
    case "bar_width": return round(cw * 0.6); // (px)
    case "bar_height": return 20; // (px)
    case "bar_border_width": return 2; // (px)
    case "bar_offset": return 10; // (px from image)
}
return undefined;