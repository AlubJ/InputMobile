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
            
            if (__touchDevices[_i].__pressed)
            {
                array_insert(__touchDevicePriority, 0, _i);
                __lastTouchDevice = _i;
            }
            
            if (__touchDevices[_i].__released)
            {
                var _index = array_get_index(__touchDevicePriority, _i);
                array_delete(__touchDevicePriority, _index, 1);
            }
            
            ++_i;
        }
        
        // Device tilt
        __yaw = device_get_tilt_y();
        __pitch = device_get_tilt_z();
        __roll = device_get_tilt_x();
    }
}