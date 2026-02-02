// Feather disable all

function __InputMobileGetDevice(_deviceID)
{
    static _system = __InputMobileSystem();
    
    if (_deviceID == undefined)
    {
        return __InputMobileGetYoungestActiveDevice();
    }
    else
    {
        if (_deviceID < 0 || _deviceID > INPUT_MOBILE_MAX_MULTITOUCH_DEVICES)
        {
            InputPlugInError("Device ID outside of range of acceptable multitouch devices");
        }
        else
        {
            return _system.__touchDevices[_deviceID];
        }
    }
}