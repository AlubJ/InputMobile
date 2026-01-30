// Feather disable all

__InputMobileSystem();
function __InputMobileSystem()
{
    static _system = undefined;
    if (_system != undefined) return _system;
    
    _system = {};
    with (_system)
    {
        // GameMaker likes to encode the system versioning when using `os_version` into a big integer on iOS for some reason
        // so we have to use `os_get_info` for iOS
        if (INPUT_ON_ANDROID)
        {
            __mobileVersion = os_version;
            __InputTrace($"Android version: {__mobileVersion}");
        }
        else if (INPUT_ON_IOS)
        {
            var _osInfo = os_get_info();
            __mobileVersion = real(string_split(_osInfo[? "systemVersion"], ".")[0]);
            ds_map_destroy(_osInfo);
            __InputTrace($"iOS version: {__mobileVersion}");
        }
        else
        {
            __mobileVersion = undefined;
        }
        
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
        
        // Vibrate tracking
        __vibrationBeginTime = 0;
        __vibrationTime = 0;
        
        // Multitouch
        __touchDevicePriority = [  ];
        __touchDevices = [  ];
        __lastTouchDevice = 0;
        
        var _i = 0;
        repeat(INPUT_MOBILE_MAX_MULTITOUCH_DEVICES)
        {
            __touchDevices[_i] = {
                // Device space
                __deviceX: 0,
                __deviceY: 0,
                __deviceStartX: 0,
                __deviceStartY: 0,
                __deviceLastX: 0,
                __deviceLastY: 0,
                __deviceDeltaX: 0,
                __deviceDeltaY: 0,
                
                // GUI space
                __guiX: 0,
                __guiY: 0,
                __guiStartX: 0,
                __guiStartY: 0,
                __guiLastX: 0,
                __guiLastY: 0,
                __guiDeltaX: 0,
                __guiDeltaY: 0,
                
                // Room space
                __roomX: 0,
                __roomY: 0,
                __roomStartX: 0,
                __roomStartY: 0,
                __roomLastX: 0,
                __roomLastY: 0,
                __roomDeltaX: 0,
                __roomDeltaY: 0,
                
                // Other
                __down: false,
                __pressed: false,
                __released: false,
                
                __tap: false,
                __doubleTap: false,
                __longTap: false,
                __longTapFired: false,
                
                __tapCount: 0,
                __pendingSingleTap: false,
                
                __touchTime: 0,
                __lastTouchTime: 0,
                
                __releaseTime: 0,
            };
            ++_i;
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