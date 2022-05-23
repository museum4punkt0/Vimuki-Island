/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23AA3739
/// @DnDArgument : "var" "isTouched"
/// @DnDArgument : "value" "true"
if(isTouched == true)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0287824B
	/// @DnDParent : 23AA3739
	/// @DnDArgument : "colour" "$FFFF0000"
	image_blend = $FFFF0000 & $ffffff;
	image_alpha = ($FFFF0000 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54D5327D
	/// @DnDParent : 23AA3739
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "isTouched"
	isTouched = false;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 14662A8C
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 78929EBF
	/// @DnDParent : 14662A8C
	/// @DnDArgument : "colour" "$FF0FFF43"
	image_blend = $FF0FFF43 & $ffffff;
	image_alpha = ($FF0FFF43 >> 24) / $ff;
}