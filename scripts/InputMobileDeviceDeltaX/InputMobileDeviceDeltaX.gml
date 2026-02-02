// Feather disable all

/// Returns the X delta of the touch in device space.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileDeviceDeltaX(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__deviceDeltaX;
}