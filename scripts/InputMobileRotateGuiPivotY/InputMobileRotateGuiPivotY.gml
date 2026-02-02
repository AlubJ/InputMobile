// Feather disable all

/// Returns back the Y pivot point of the rotate gesture in GUI space.
///
/// @returns {Real}

function InputMobileRotateGuiPivotY()
{
    static _system = __InputMobileSystem();
    return _system.__rotateGuiPivotY;
}