// Feather disable all

/// Returns back the scale of the current zoom.
///
/// @returns {Real}

function InputMobileZoomScale()
{
    static _system = __InputMobileSystem();
    return _system.__zoomAbsoluteScale;
}