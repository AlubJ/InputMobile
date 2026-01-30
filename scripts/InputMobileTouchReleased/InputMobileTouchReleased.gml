// Feather disable all

/// Returns back whether a touch has just been released.
///
/// @returns {Bool}
function InputMobileTouchReleased()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__released);
}