// Feather disable all

/// Returns back the X midpoint of the zoom gesture in GUI space.
///
/// @returns {Real}

function InputMobileZoomGuiMidPointX()
{
    static _system = __InputMobileSystem();
    return _system.__zoomGuiMidPointX;
}