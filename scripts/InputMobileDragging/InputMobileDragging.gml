// Feather disable all

/// Returns back whether a drag is taking place.
///
/// @param {Real} [deviceID] The device ID to check. Pass nothing or `undefined` to use the youngest active device index.
///
/// @returns {Bool}

function InputMobileDragging(_deviceID = undefined)
{
    return __InputMobileGetDevice(_deviceID).__dragging;
}