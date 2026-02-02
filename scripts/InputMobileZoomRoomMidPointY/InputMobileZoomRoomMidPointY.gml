// Feather disable all

/// Returns back the Y midpoint of the zoom gesture in room space.
///
/// @returns {Real}

function InputMobileZoomRoomMidPointY()
{
    static _system = __InputMobileSystem();
    return _system.__zoomRoomMidPointY;
}