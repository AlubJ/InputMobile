// Feather disable all

function __InputMobileUpdate()
{
    var _system = __InputMobileSystem();
    with (_system)
    {
        var _i = 0;
        repeat(INPUT_MOBILE_MAX_MULTITOUCH_DEVICES)
        {
            __InputMobileUpdateDevice(_i);
            ++_i;
        }
        
        // TODO: remove all this please
        __touchDown = InputMouseCheck();
        __touchPressed = InputMousePressed();
        __touchReleased = InputMouseReleased();
        
        // Mouse distance
        __pointerDeviceDistanceX = 0;
        __pointerDeviceDistanceY = 0;
        __pointerGuiDistanceX = 0;
        __pointerGuiDistanceY = 0;
        __pointerRoomDistanceX = 0;
        __pointerRoomDistanceY = 0;
        
        // Mouse delta
        __pointerDeviceDeltaX = device_mouse_x(0) - __pointerDeviceLastX;
        __pointerDeviceDeltaY = device_mouse_y(0) - __pointerDeviceLastY;
        __pointerGuiDeltaX = device_mouse_x_to_gui(0) - __pointerGuiLastX;
        __pointerGuiDeltaY = device_mouse_y_to_gui(0) - __pointerGuiLastY;
        __pointerRoomDeltaX = InputMouseRoomX() - __pointerRoomLastX;
        __pointerRoomDeltaY = InputMouseRoomY() - __pointerRoomLastY;
        
        // Mouse Last
        __pointerDeviceLastX = device_mouse_x(0);
        __pointerDeviceLastY = device_mouse_y(0);
        __pointerGuiLastX = device_mouse_x_to_gui(0);
        __pointerGuiLastY = device_mouse_y_to_gui(0);
        __pointerRoomLastX = InputMouseRoomX();
        __pointerRoomLastY = InputMouseRoomY();
        
        if (__touchPressed)
        {
            // Mouse start
            __pointerDeviceStartX = device_mouse_x(0);
            __pointerDeviceStartY = device_mouse_y(0);
            __pointerGuiStartX = device_mouse_x_to_gui(0);
            __pointerGuiStartY = device_mouse_y_to_gui(0);
            __pointerRoomStartX = InputMouseRoomX();
            __pointerRoomStartY = InputMouseRoomY();
            
            //__gestureTimer = 0;
        }
        
        if (__touchReleased)
        {
            // Mouse distance
            __pointerDeviceDistanceX = device_mouse_x(0) - __pointerDeviceStartX;
            __pointerDeviceDistanceY = device_mouse_y(0) - __pointerDeviceStartY;
            __pointerGuiDistanceX = device_mouse_x_to_gui(0) - __pointerGuiStartX;
            __pointerGuiDistanceY = device_mouse_y_to_gui(0) - __pointerGuiStartY;
            __pointerRoomDistanceX = InputMouseRoomX() - __pointerRoomStartX;
            __pointerRoomDistanceY = InputMouseRoomY() - __pointerRoomStartY;
            
            //__gestureTimer = 0;
        }
        
        //if (__touchDown)
        //{
        //    if (__gestureTimer < INPUT_MOBILE_MAX_GESTURE_TIME) __gestureTimer++;
        //}
    }
}