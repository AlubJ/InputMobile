// Feather disable all

/// Returns back the speed of the flick.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileFlickSpeed(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__flickSpeed;
}