// Feather disable all

/// Returns the angle of the delta of the touch in GUI space.

function InputMobileTouchGuiDeltaAngle()
{
    var _system = __InputMobileSystem();
    return point_direction(0, 0, _system.__pointerGuiDeltaX, _system.__pointerGuiDeltaY);
}