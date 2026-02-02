// Feather disable all

/// Returns back whether a zoom gesture is currently taking place.
///
/// @returns {Bool}

function InputMobileZooming()
{
    static _system = __InputMobileSystem();
    return _system.__zooming;
}