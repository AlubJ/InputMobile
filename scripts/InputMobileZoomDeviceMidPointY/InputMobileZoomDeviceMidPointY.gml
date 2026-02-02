// Feather disable all

/// Returns back the Y midpoint of the zoom gesture in device space.
///
/// @returns {Real}

function InputMobileZoomDeviceMidPointY()
{
    static _system = __InputMobileSystem();
    return _system.__zoomDeviceMidPointY;
}