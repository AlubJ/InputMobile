// Feather disable all

/// Returns back whether a double tap has been detected or not.
///
/// @returns {Bool}
function InputMobileDoubleTap()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__doubleTap);
}