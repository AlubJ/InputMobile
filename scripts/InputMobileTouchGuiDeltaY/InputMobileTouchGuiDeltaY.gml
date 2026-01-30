// Feather disable all

/// Returns the Y delta of the touch in GUI space.
///
/// @returns {Real}

function InputMobileTouchGuiDeltaY()
{
    static _system = __InputMobileSystem();
    return (_system.__touchDevices[_system.__touchDevicePriority[0]].__guiDeltaY);
}