// Feather disable all

/// Returns whether an downwards flick gesture has been detected.
///
/// @returns {Bool}

function InputMobileFlickDown()
{
    static _system = __InputMobileSystem();
    return _system.__touchDevices[_system.__touchDevicePriority[0]].__flickCardinalDirection == 90;
}