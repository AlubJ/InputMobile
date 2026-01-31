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
        __vibrationEnabled = true;
        
        // Multitouch
        __touchDevicePriority = [ 0 ];
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
                
                // Touch
                __down: false,
                __pressed: false,
                __released: false,
                
                // Taps
                __tap: false,
                __doubleTap: false,
                __longTap: false,
                __longTapFired: false,
                __pendingSingleTap: false,
                
                // Gestures
                __flick: false,
                __flickCardinalDirection: 0,
                __flickAngle: 0,
                __flickSpeed: 0,
                
                // Timings
                __touchTime: 0,
                __lastTouchTime: 0,
                __releaseTime: 0,
            };
            ++_i;
        }
        
        // Set up gestures
        gesture_flick_speed(INPUT_MOBILE_MIN_FLICK_DISTANCE / display_get_dpi_x());
        
        // Define plugin
        InputPlugInDefine("Alub.Mobile", "Alun Jones", "1.0", "10.0", function ()
        {
            //if (INPUT_ON_MOBILE)
            //{
                InputPlugInRegisterCallback(INPUT_PLUG_IN_CALLBACK.COLLECT, undefined, function ()
                {
                    __InputMobileUpdate();
                });
            //}
            //else
            //{
            //    InputPlugInWarning("Current platform is not mobile, mobile specific features will not be enabled.");
            //}
        });
        
        // Create gesture controller
        __InputMobileEnsureInstance();
        time_source_start(time_source_create(time_source_game, 1, time_source_units_frames, function ()
        {
            __InputMobileEnsureInstance();
        }, [], -1));
    }
    
    return _system;
}