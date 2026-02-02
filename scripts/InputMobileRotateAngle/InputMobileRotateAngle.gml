// Feather disable all

/// Returns back the angle of the rotate gesture. The rotation always starts at 0.
///
/// @returns {Real}

function InputMobileRotateAngle()
{
    static _system = __InputMobileSystem();
    return _system.__rotateAbsoluteAngle;
}