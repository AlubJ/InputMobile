// Feather disable all

/// Returns back whether a touch is currently held down.
///
/// @returns {Bool}
function InputMobileTouchCheck()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__down);
}