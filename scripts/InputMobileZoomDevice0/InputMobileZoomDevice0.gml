// Feather disable all

/// Returns back the first device index of the zoom gesture.
///
/// @returns {Real}

function InputMobileZoomDevice0()
{
    static _system = __InputMobileSystem();
    return _system.__zoomDevice0;
}