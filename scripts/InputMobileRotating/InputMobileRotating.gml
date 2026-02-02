// Feather disable all

/// Returns back whether a rotate gesture is currently taking place.
///
/// @returns {Bool}

function InputMobileRotating()
{
    static _system = __InputMobileSystem();
    return _system.__rotating;
}