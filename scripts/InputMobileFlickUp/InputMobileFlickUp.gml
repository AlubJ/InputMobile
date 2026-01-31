// Feather disable all

/// Returns whether an upwards flick gesture has been detected.
///
/// @returns {Bool}

function InputMobileFlickUp()
{
    static _system = __InputMobileSystem();
    return _system.__touchDevices[_system.__touchDevicePriority[0]].__flickCardinalDirection == 270;
}