// Feather disable all

/// Returns back the angle of the flick.
///
/// @returns {Real}

function InputMobileFlickAngle()
{
    static _system = __InputMobileSystem();
    return _system.__touchDevices[_system.__touchDevicePriority[0]].__flickAngle;
}