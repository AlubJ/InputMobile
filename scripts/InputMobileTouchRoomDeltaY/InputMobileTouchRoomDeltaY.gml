// Feather disable all

/// Returns the Y delta of the touch in room space.
///
/// @returns {Real}

function InputMobileTouchRoomDeltaY()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__roomDeltaY);
}