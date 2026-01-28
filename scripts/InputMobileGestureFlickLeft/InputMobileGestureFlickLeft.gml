// Feather disable all

/// Returns whether an leftwards flick has been detected.

function InputMobileGestureFlickLeft()
{
    var _system = __InputMobileSystem();
    
    if (abs(point_distance(0, 0, _system.__pointerGuiDistanceX, _system.__pointerGuiDistanceY)) > INPUT_MOBILE_MIN_FLICK_DISTANCE)
    {
        return (__InputMobileGetGeneralCardinalDirection(_system.__pointerGuiDistanceX, _system.__pointerGuiDistanceY) == 180);
    }
    return false;
}