// Feather disable all

/// Returns back whether the end of a rotate gesture has been detected or not.
///
/// @returns {Bool}

function InputMobileRotateEnd()
{
    static _system = __InputMobileSystem();
    return _system.__rotateEnd;
}