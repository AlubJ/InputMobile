// Feather disable all

/// Returns the angle of the delta of the touch in GUI space.
///
/// @returns {Real}

function InputMobileTouchGuiDeltaAngle()
{
    static _system = __InputMobileSystem();
    var _device = _system.__touchDevices[_system.__touchDevicePriority[0]];
    return point_direction(0, 0, _device.__guiDeltaX, _device.__guiDeltaY);
}