// Feather disable all

/// Returns if a transformation gesture (two fingers) is currently down.
///
/// @returns {Bool}

function InputMobileTransformationCheck()
{
    static _system = __InputMobileSystem();
    return array_length(_system.__touchDevicePriority) == 3; // The last index is always 0 to account for no devices on the screen.
}