// Feather disable all

/// Returns back the Y pivot point of the rotate gesture in device space.
///
/// @returns {Real}

function InputMobileRotateDevicePivotY()
{
    static _system = __InputMobileSystem();
    return _system.__rotateDevicePivotY;
}