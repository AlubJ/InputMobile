// Feather disable all

/// Returns the Y position of the touch in device space.
///
/// @returns {Real}

function InputMobileTouchDeviceY()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__deviceY);
}