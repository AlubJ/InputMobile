// Feather disable all

/// Returns back the X pivot point of the rotate gesture in room space.
///
/// @returns {Real}

function InputMobileRotateRoomPivotX()
{
    static _system = __InputMobileSystem();
    return _system.__rotateRoomPivotX;
}