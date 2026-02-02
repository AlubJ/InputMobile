// Feather disable all

/// Returns whether a flick gesture has been detected.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileFlick(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__flick;
}