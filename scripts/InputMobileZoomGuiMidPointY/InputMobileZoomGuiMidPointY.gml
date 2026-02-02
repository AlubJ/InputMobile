// Feather disable all

/// Returns back the Y midpoint of the zoom gesture in GUI space.
///
/// @returns {Real}

function InputMobileZoomGuiMidPointY()
{
    static _system = __InputMobileSystem();
    return _system.__zoomGuiMidPointY;
}