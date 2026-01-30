// Feather disable all

/// Returns the X position of the touch in GUI space.
///
/// @returns {Real}

function InputMobileTouchGuiX()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__guiX);
}