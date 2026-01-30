// Feather disable all

/// Get whether vibrate is enabled or disabled.
///
/// @returns {Bool}

function InputMobileVibrateSetEnabled(_enable = true)
{
    static _system = __InputMobileSystem();
    return _system.__vibrationEnabled;
}