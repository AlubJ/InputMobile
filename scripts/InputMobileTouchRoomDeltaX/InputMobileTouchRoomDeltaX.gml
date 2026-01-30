// Feather disable all

/// Returns the X delta of the touch in room space.
///
/// @returns {Real}

function InputMobileTouchRoomDeltaX()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__roomDeltaX);
}