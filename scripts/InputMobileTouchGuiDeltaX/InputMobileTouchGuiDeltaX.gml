// Feather disable all

/// Returns the X delta of the touch in GUI space.
///
/// @returns {Real}

function InputMobileTouchGuiDeltaX()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__guiDeltaX);
}