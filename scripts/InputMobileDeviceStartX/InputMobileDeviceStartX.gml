// Feather disable all

/// Returns the X position of the start point of the touch in device space.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Real}

function InputMobileDeviceStartX(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__deviceStartX;
}