// Feather disable all

/// Returns whether a flick gesture has been detected.
///
/// @returns {Bool}

function InputMobileFlick()
{
    static _system = __InputMobileSystem();
    return _system.__touchDevices[_system.__touchDevicePriority[0]].__flick;
}