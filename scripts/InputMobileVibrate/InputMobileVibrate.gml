// Feather disable all

/// Vibrate a mobile device for a defined amount of time.
///
/// N.B. This function will only work when running on a mobile device and if the MobileUtils extension from YYG is installed.
///
/// @param vibrateTime The time in milliseconds that you want to vibrate the device.

function InputMobileVibrate(_vibrateTime)
{
    static _system = __InputMobileSystem();
    if (INPUT_ON_MOBILE && _system.__mobileUtilsAvailable && _system.__vibrationEnabled)
    {
        if (MobileUtils_Vibrate_Is_Available())
        {
            // Reset the vibrate time to 15ms if the iOS version is <= 13 as
            // the shot will be replaced with a generic heavy haptic
            if (INPUT_ON_IOS && _system.__mobileVersion <= 13)
            {
                _vibrateTime = 15;
            }
            
            _system.__vibrationTime = _vibrateTime;
            _system.__vibrationBeginTime = current_time;
            
            MobileUtils_Vibrate_Shot(_vibrateTime);
        }
    }
}