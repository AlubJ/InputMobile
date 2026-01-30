// Feather disable all

/// Returns whether a flick gesture has been detected.
///
/// @returns {Bool}

function InputMobileGestureFlick()
{
    static _system = __InputMobileSystem();
    
    var _device = _system.__touchDevices[_system.__touchDevicePriority[0]];
    var _distance = abs(point_distance(_device.__deviceStartX, _device.__deviceStartY, _device.__deviceX, _device.__deviceY));
    
    return (_distance > INPUT_MOBILE_MIN_FLICK_DISTANCE && _device.__touchTime < INPUT_MOBILE_MAX_FLICK_TIME);
}