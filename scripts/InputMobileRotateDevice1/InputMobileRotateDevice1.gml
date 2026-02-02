// Feather disable all

/// Returns back the first device index of the rotate gesture.
///
/// @returns {Real}

function InputMobileRotateDevice0()
{
    static _system = __InputMobileSystem();
    return _system.__rotateDevice0;
}