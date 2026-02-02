// Feather disable all

/// Returns the Y position of the touch in GUI space.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileGuiY(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__guiY;
}