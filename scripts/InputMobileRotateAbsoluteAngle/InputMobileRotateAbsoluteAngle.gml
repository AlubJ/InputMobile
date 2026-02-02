// Feather disable all

/// Returns back the absolute angle of the rotate gesture.
///
/// @returns {Real}

function InputMobileRotateAbsoluteAngle()
{
    static _system = __InputMobileSystem();
    return _system.__rotateAbsoluteAngle;
}