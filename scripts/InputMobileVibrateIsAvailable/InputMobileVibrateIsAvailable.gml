// Feather disable all

/// Returns whether GameMaker or the device has vibration available for mobile.
///
/// @returns {Bool}

function InputMobileVibrateIsAvailable()
{
    static _system = __InputMobileSystem();
    return (INPUT_ON_MOBILE && _system.__mobileUtilsAvailable && MobileUtils_Vibrate_Is_Available());
}