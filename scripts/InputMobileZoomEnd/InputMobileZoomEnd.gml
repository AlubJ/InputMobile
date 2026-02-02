// Feather disable all

/// Returns back whether the end of a zoom gesture has been detected or not.
///
/// @returns {Bool}

function InputMobileZoomEnd()
{
    static _system = __InputMobileSystem();
    return _system.__zoomEnd;
}