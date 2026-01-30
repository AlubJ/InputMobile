// Feather disable all

/// Returns back whether a single tap has been detected or not.
///
/// @returns {Bool}
function InputMobileTap()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__tap);
}