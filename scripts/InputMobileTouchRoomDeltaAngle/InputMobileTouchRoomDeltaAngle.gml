// Feather disable all

/// Returns the angle of the delta of the touch in room space.
///
/// @param {Real} default The default angle to return back if the length of the delta is 0.
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileTouchRoomDeltaAngle(_default, _deviceID = undefined)
{
    var _device = __InputMobileGetDevice(_deviceID);
    if (point_distance(0, 0, _device.__roomDeltaX, _device.__roomDeltaY) < 1)
    {
        return _default;
    }
    else
    {
        return point_direction(0, 0, _device.__roomDeltaX, _device.__roomDeltaY);
    }
}