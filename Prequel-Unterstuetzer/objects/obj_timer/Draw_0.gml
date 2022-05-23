/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 57F3963D
draw_self();

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BCE081D
/// @DnDArgument : "value" "sec"
var temp = sec;

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 0169AED0
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "1800"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "15"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "seconds/starting_value*100"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF37FF05"
draw_healthbar(x + 0, y + 0, x + 1800, y + 15, seconds/starting_value*100, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF37FF05 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));