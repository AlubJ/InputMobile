// Feather disable all

/// Returns the Y position of the touch in room space.
///
/// @returns {Real}

function InputMobileTouchRoomY()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__roomY);
}