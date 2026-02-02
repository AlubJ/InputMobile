// Feather disable all

/// Returns back the angle of the flick.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileFlickAngle(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__flickAngle;
}