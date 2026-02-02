// Feather disable all

/// Returns back the X pivot point of the rotate gesture in GUI space.
///
/// @returns {Real}

function InputMobileRotateGuiPivotX()
{
    static _system = __InputMobileSystem();
    return _system.__rotateGuiPivotX;
}