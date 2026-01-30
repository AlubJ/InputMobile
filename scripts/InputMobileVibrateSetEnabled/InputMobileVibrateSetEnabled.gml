// Feather disable all

/// Set vibrate to enabled or disabled.
/// 
/// N.B. Disabling vibration whilst a vibration is playing will not stop the current vibration from playing.
///
/// @param {Bool} [enable] Whether to enable or disable vibration. Default `true`.

function InputMobileVibrateSetEnabled(_enable = true)
{
    static _system = __InputMobileSystem();
    _system.__vibrationEnabled = _enable ? true : false;
}