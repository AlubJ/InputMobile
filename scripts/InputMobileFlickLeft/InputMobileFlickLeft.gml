// Feather disable all

/// Returns whether an leftwards flick gesture has been detected.
///
/// @returns {Bool}

function InputMobileFlickLeft()
{
    static _system = __InputMobileSystem();
    return _system.__touchDevices[_system.__touchDevicePriority[0]].__flickCardinalDirection == 180;
}