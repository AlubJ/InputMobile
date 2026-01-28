// Feather disable all

/// Returns whether a flick has been detected.

function InputMobileGestureFlick()
{
    var _system = __InputMobileSystem();
    return abs(point_distance(0, 0, _system.__pointerGuiDistanceX, _system.__pointerGuiDistanceY)) > INPUT_MOBILE_MIN_FLICK_DISTANCE;
}