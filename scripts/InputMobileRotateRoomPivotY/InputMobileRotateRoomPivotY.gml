// Feather disable all

/// Returns back the Y pivot point of the rotate gesture in room space.
///
/// @returns {Real}

function InputMobileRotateRoomPivotY()
{
    static _system = __InputMobileSystem();
    return _system.__rotateRoomPivotY;
}