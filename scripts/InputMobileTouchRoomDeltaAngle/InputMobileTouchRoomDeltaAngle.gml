// Feather disable all

/// Returns the angle of the delta of the touch in room space.

function InputMobileTouchRoomDeltaAngle()
{
    var _system = __InputMobileSystem();
    return point_direction(0, 0, _system.__pointerRoomDeltaX, _system.__pointerRoomDeltaY);
}