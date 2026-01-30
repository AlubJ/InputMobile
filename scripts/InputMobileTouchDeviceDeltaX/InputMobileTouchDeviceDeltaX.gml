// Feather disable all

/// Returns the X delta of the touch in device space.
///
/// @returns {Real}

function InputMobileTouchDeviceDeltaX()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__deviceDeltaX);
}