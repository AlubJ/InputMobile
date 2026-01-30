// Feather disable all

/// Set vibrate to enabled or disabled.
///
/// @param {Bool} [enable] Whether to enable or disable vibration.

function InputMobileVibrateSetEnabled(_enable = true)
{
    static _system = __InputMobileSystem();
    _system.__vibrationEnabled = _enable ? true : false;
}