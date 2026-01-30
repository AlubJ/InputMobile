// Feather disable all

/// Returns the X position of the touch in room space.
///
/// @returns {Real}

function InputMobileTouchRoomX()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__roomX);
}