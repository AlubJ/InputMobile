// Feather disable all

/// Returns back the X pivot point of the rotate gesture in device space.
///
/// @returns {Real}

function InputMobileRotateDevicePivotX()
{
    static _system = __InputMobileSystem();
    return _system.__rotateDevicePivotX;
}