// Feather disable all

/// Returns back whether a long tap has been detected or not.
///
/// @returns {Bool}
function InputMobileLongTap()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__longTap);
}