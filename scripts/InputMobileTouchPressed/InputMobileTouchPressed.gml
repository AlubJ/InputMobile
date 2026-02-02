// Feather disable all

/// Returns back whether a touch has just been pressed.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileTouchPressed(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__pressed;
}