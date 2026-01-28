// Feather disable all

/// Returns the angle of the delta of the touch in device space.

function InputMobileTouchDeviceDeltaAngle()
{
    var _system = __InputMobileSystem();
    return point_direction(0, 0, _system.__pointerDeviceDeltaX, _system.__pointerDeviceDeltaY);
}