// Feather disable all

/// Returns back whether the start of a zoom gesture has been detected or not.
///
/// @returns {Bool}

function InputMobileZoomStart()
{
    static _system = __InputMobileSystem();
    return _system.__zoomStart;
}