// Feather disable all

/// Vibrate a mobile device using a predefined vibration from MobileUtils.
///
/// N.B. This function will only work when running on a mobile device and if the MobileUtils extension from YYG is installed.
///
/// @param vibrateType The predefined vibration type from MobileUtils to use.

function InputMobileVibratePredefined(_vibrateType)
{
    var _system = __InputMobileSystem();
    if (INPUT_ON_MOBILE && _system.__mobileUtilsAvailable)
    {
        if (MobileUtils_Vibrate_Is_Available())
        {
            MobileUtils_Vibrate_Predefined(_vibrateType);
        }
    }
}