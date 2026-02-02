// Feather disable all

/// Returns the Y delta of the touch in device space.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileTouchDeviceDeltaY(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__deviceDeltaY;
}