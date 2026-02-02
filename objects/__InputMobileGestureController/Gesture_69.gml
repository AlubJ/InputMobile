// Feather disable all

var _system = __InputMobileSystem();

var _deviceID = event_data[? "touch"];
var _device = _system.__touchDevices[_deviceID];

var _deltaX = event_data[? "rawdiffX"];
var _deltaY = event_data[? "rawdiffY"];

if (point_distance(0, 0, _deltaX, _deltaX) >= INPUT_MOBILE_MIN_FLICK_DISTANCE)
{
    _device.__flick = true;
    _device.__flickCardinalDirection = __InputMobileGetCardinalDirection(_deltaX, _deltaY);
    _device.__flickSpeed = point_distance(0, 0, _deltaX, _deltaY);
    _device.__flickAngle = point_direction(0, 0, _deltaX, _deltaY);
}