/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 23424D60
/// @DnDArgument : "spriteind" "spr_placeholder_green"
/// @DnDSaveInfo : "spriteind" "spr_placeholder_green"
sprite_index = spr_placeholder_green;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 11D4FE9E
/// @DnDArgument : "alpha" "0.3"
image_alpha = 0.3;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 280809FF
/// @DnDArgument : "colour" "$FF38FF19"
image_blend = $FF38FF19 & $ffffff;
image_alpha = ($FF38FF19 >> 24) / $ff;