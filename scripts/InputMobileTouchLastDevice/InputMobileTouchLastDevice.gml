// Feather disable all

/// Returns back the last active touch device index.
///
/// @returns {Real}

function InputMobileTouchLastDevice()
{
    static _system = __InputMobileSystem();
    return _system.__lastTouchDevice;
}