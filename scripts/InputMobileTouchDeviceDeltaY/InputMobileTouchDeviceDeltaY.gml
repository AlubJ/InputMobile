// Feather disable all

/// Returns the Y delta of the touch in device space.
///
/// @returns {Real}

function InputMobileTouchDeviceDeltaY()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__deviceDeltaY);
}