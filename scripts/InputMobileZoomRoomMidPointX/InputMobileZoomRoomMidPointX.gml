// Feather disable all

/// Returns back the X midpoint of the zoom gesture in room space.
///
/// @returns {Real}

function InputMobileZoomRoomMidPointX()
{
    static _system = __InputMobileSystem();
    return _system.__zoomRoomMidPointX;
}