// Feather disable all

/// Returns back the second device index of the rotate gesture.
///
/// @returns {Real}

function InputMobileRotateDevice1()
{
    static _system = __InputMobileSystem();
    return _system.__rotateDevice1;
}