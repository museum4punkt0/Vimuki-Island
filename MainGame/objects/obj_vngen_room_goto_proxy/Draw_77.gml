/// @description Go to VNgen event after room change

/*
==========================================================================
SYSTEM OBJECT: MODIFY AT YOUR OWN RISK!
--------------------------------------------------------------------------
  System objects are managed automatically by the engine and typically
  should not be created or destroyed manually by the user
==========================================================================

Jumps to the specified VNgen event after a room change, if specified when
running vngen_room_goto.
*/

//If event skip is set and the target object exists, go to it
if (global.vg_room_object != -1) and (global.vg_room_event != -1) {
	if (instance_exists(global.vg_room_object)) {
		with (global.vg_room_object) {
			vngen_goto(global.vg_room_event, global.vg_room_object, global.vg_room_event_perform);
		}
	}
}

//Reset and self-destruct when complete
global.vg_room_object = -1;
global.vg_room_event = -1;
global.vg_room_event_perform = true;

instance_destroy();