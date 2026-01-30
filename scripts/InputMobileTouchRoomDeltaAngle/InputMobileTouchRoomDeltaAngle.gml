// Feather disable all

/// Returns the angle of the delta of the touch in room space.
///
/// @returns {Real}

function InputMobileTouchRoomDeltaAngle()
{
    static _system = __InputMobileSystem();
    var _device = _system.__touchDevices[_system.__touchDevicePriority[0]];
    return point_direction(0, 0, _device.__roomDeltaX, _device.__roomDeltaY);
}