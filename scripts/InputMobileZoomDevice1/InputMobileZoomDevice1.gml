// Feather disable all

/// Returns back the second device index of the zoom gesture.
///
/// @returns {Real}

function InputMobileZoomDevice1()
{
    static _system = __InputMobileSystem();
    return _system.__zoomDevice1;
}