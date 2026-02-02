// Feather disable all

/// Returns back the relative angle of the rotate gesture.
///
/// @returns {Real}

function InputMobileRotateRelativeAngle()
{
    static _system = __InputMobileSystem();
    return _system.__rotateRelativeAngle;
}