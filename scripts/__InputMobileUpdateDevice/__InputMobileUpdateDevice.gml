// Feather disable all

/// @ignore
function __InputMobileUpdateDevice(_deviceIndex)
{
    var _device = __InputMobileSystem().__touchDevices[_deviceIndex];
    with (_device)
    {
        __down = device_mouse_check_button(_deviceIndex, mb_left);
        __pressed = device_mouse_check_button_pressed(_deviceIndex, mb_left);
        __released = device_mouse_check_button_released(_deviceIndex, mb_left);
        
        __tap = false;
        __doubleTap = false;
        __longTap = false;
        
        __flick = false;
        
        if (__pressed)
        {
            __touchTime = 0;
            
            __deviceStartX = device_mouse_raw_x(_deviceIndex);
            __deviceStartY = device_mouse_raw_y(_deviceIndex);
            __guiStartX = device_mouse_x_to_gui(_deviceIndex);
            __guiStartY = device_mouse_y_to_gui(_deviceIndex);
            __roomStartX = device_mouse_x(_deviceIndex);
            __roomStartY = device_mouse_y(_deviceIndex);
        }
        
        if (__released)
        {
            __lastTouchTime = __touchTime;
            
            __deviceDeltaX = 0;
            __deviceDeltaY = 0;
            __guiDeltaX = 0;
            __guiDeltaY = 0;
            __roomDeltaX = 0;
            __roomDeltaY = 0;
            
            __longTapFired = false;
            
            // Double tap detection
            var _touchDistance = point_distance(__deviceStartX, __deviceStartY, __deviceX, __deviceY);
            if (__touchTime <= INPUT_MOBILE_MAX_TAP_TIME && _touchDistance <= INPUT_MOBILE_MAX_TAP_DISTANCE)
            {
                var _time = current_time;
                var _secondTouchDistance = point_distance(__deviceLastX, __deviceLastY, __deviceX, __deviceLastY)
                
                if (_time - __releaseTime <= INPUT_MOBILE_MAX_DOUBLE_TAP_TIME && _secondTouchDistance <= INPUT_MOBILE_MAX_DOUBLE_TAP_DISTANCE)
                {
                    __doubleTap = true;
                    
                    __pendingSingleTap = false;
                    __releaseTime = 0;
                }
                else
                {
                    __pendingSingleTap = true;
                    __releaseTime = current_time;
                }
            }
            
            return;
        }
        
        // Single tap detection
        if (__pendingSingleTap)
        {
            if (current_time - __releaseTime > INPUT_MOBILE_MAX_DOUBLE_TAP_TIME)
            {
                __tap = true;
                
                __pendingSingleTap = false;
                __releaseTime = 0;
            }
        }
        
        if (!__down)
        {
            return;
        }
        
        if (!__pressed)
        {
            __touchTime += delta_time / 1_000;
        }
        
        __deviceLastX = __deviceX;
        __deviceLastY = __deviceY;
        __guiLastX = __guiX;
        __guiLastY = __guiY;
        __roomLastX = __roomX;
        __roomLastY = __roomY;
        
        __deviceX = device_mouse_raw_x(_deviceIndex);
        __deviceY = device_mouse_raw_y(_deviceIndex);
        __guiX = device_mouse_x_to_gui(_deviceIndex);
        __guiY = device_mouse_y_to_gui(_deviceIndex);
        __roomX = device_mouse_x(_deviceIndex);
        __roomY = device_mouse_y(_deviceIndex);
        
        __deviceDeltaX = __deviceX - __deviceLastX;
        __deviceDeltaY = __deviceY - __deviceLastY;
        __guiDeltaX = __guiX - __guiLastX;
        __guiDeltaY = __guiY - __guiLastY;
        __roomDeltaX = __roomX - __roomLastX;
        __roomDeltaY = __roomY - __roomLastY;
        
        // Long tap detection
        if (!__longTapFired)
        {
            var _touchDistance = point_distance(__deviceStartX, __deviceStartY, __deviceX, __deviceY);
            
            if (__touchTime > INPUT_MOBILE_MAX_TAP_TIME && _touchDistance <= INPUT_MOBILE_MAX_TAP_DISTANCE)
            {
                __longTap = true;
                __longTapFired = true;
                
                __pendingSingleTap = false;
                __releaseTime = 0;
            }
        }
    }
}