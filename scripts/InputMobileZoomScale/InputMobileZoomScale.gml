// Feather disable all

/// Returns back the scale of the current zoom, where a scale of 0 is the starting scale.
///
/// @returns {Real}

function InputMobileZoomScale()
{
    static _system = __InputMobileSystem();
    return _system.__zoomAbsoluteScale;
}