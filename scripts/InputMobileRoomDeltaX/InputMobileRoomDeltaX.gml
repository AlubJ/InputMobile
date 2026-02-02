// Feather disable all

/// Returns the X delta of the touch in room space.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileRoomDeltaX(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__roomDeltaX;
}