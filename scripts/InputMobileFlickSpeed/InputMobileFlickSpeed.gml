// Feather disable all

/// Returns back the speed of the flick.
///
/// @returns {Real}

function InputMobileFlickSpeed()
{
    static _system = __InputMobileSystem();
    return _system.__touchDevices[_system.__touchDevicePriority[0]].__flickSpeed;
}