// Feather disable all

/// Returns back the X midpoint of the zoom gesture in device space.
///
/// @returns {Real}

function InputMobileZoomDeviceMidPointX()
{
    static _system = __InputMobileSystem();
    return _system.__zoomDeviceMidPointX;
}