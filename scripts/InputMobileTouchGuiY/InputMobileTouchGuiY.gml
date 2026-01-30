// Feather disable all

/// Returns the Y position of the touch in GUI space.
///
/// @returns {Real}

function InputMobileTouchGuiY()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__guiY);
}