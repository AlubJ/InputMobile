// Feather disable all

/// Returns back whether a long tap has been detected or not.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileLongTap(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__longTap;
}