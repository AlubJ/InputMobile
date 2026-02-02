// Feather disable all

/// Returns the angle of the delta of the touch in GUI space.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileTouchGuiDeltaAngle(_deviceID = undefined)
{
    var _device = __InputMobileGetDevice(_deviceID);
    return point_direction(0, 0, _device.__guiDeltaX, _device.__guiDeltaY);
}