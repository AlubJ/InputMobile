// Feather disable all

/// Returns back whether a touch has just been released.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileTouchReleased(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__released;
}