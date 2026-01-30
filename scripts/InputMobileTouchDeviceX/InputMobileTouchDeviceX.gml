// Feather disable all

/// Returns the X position of the touch in device space.
///
/// @returns {Real}

function InputMobileTouchDeviceX()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__deviceX);
}