// Feather disable all

/// Returns back whether the start of a rotate gesture has been detected or not.
///
/// @returns {Bool}

function InputMobileRotateStart()
{
    static _system = __InputMobileSystem();
    return _system.__rotateStart;
}