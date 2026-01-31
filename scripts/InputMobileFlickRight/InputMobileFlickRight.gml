// Feather disable all

/// Returns whether an rightwards flick gesture has been detected.
///
/// @returns {Bool}

function InputMobileFlickRight()
{
    static _system = __InputMobileSystem();
    return _system.__touchDevices[_system.__touchDevicePriority[0]].__flickCardinalDirection == 0;
}