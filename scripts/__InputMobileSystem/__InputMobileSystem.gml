// Feather disable all

__InputMobileSystem();
function __InputMobileSystem()
{
    static _system = undefined;
    if (_system != undefined) return _system;
    
    _system = {};
    with (_system)
    {
        // Let's see if we have mobile utils
        __mobileUtilsAvailable = true;
        try
        {
            MobileUtils_Vibrate_Is_Available();
            __InputTrace("MobileUtils extension available");
        }
        catch (e)
        {
            __mobileUtilsAvailable = false;
            __InputTrace("MobileUtils extension unavailable");
        }
        
        // Mouse delta
        __pointerDeviceDeltaX = 0;
        __pointerDeviceDeltaY = 0;
        __pointerGuiDeltaX = 0;
        __pointerGuiDeltaY = 0;
        __pointerRoomDeltaX = 0;
        __pointerRoomDeltaY = 0;
        
        // Mouse distance
        __pointerDeviceDistanceX = 0;
        __pointerDeviceDistanceY = 0;
        __pointerGuiDistanceX = 0;
        __pointerGuiDistanceY = 0;
        __pointerRoomDistanceX = 0;
        __pointerRoomDistanceY = 0;
        
        // Mouse last
        __pointerDeviceLastX = 0;
        __pointerDeviceLastY = 0;
        __pointerGuiLastX = 0;
        __pointerGuiLastY = 0;
        __pointerRoomLastX = 0;
        __pointerRoomLastY = 0;
        
        // Mouse start
        __pointerDeviceStartX = 0;
        __pointerDeviceStartY = 0;
        __pointerGuiStartX = 0;
        __pointerGuiStartY = 0;
        __pointerRoomStartX = 0;
        __pointerRoomStartY = 0;
        
        // Touch
        __touchDown = false;
        __touchPressed = false;
        __touchReleased = false;
        
        // Define plugin
        InputPlugInDefine("Alub.Mobile", "Alun Jones", "1.0", "10.0", function ()
        {
            InputPlugInRegisterCallback(INPUT_PLUG_IN_CALLBACK.COLLECT, undefined, function ()
            {
                __InputMobileUpdate();
            });
        });
    }
    
    return _system;
}