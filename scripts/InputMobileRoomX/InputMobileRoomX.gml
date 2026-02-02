// Feather disable all

/// Returns the X position of the touch in room space.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Real}

function InputMobileRoomX(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__roomX;
}