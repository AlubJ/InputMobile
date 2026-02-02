// Feather disable all

/// Returns whether an downwards flick gesture has been detected.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileFlickDown(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__flickCardinalDirection == 90;
